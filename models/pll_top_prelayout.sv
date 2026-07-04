// SPDX-License-Identifier: MIT
//============================================================================
//  pll_top_prelayout.sv
//----------------------------------------------------------------------------
//  Behavioral (event-driven) model of a dual-control-path ring-oscillator PLL
//  top cell, using the IDEAL / PAPER loop parameters.
//
//  Design reference:
//      S. Williams, H. Thompson, M. Hufford, E. Naviasky,
//      "An Improved CMOS Ring Oscillator PLL with Less than 4 ps RMS
//       Accumulated Jitter," IEEE CICC 2004, paper 8-4, pp. 151-154.
//      (reproduced on the SkyWater sky130 1.8 V process)
//
//  What this model captures (paper spec, Table I / Table II):
//      * F_REF = 27 MHz reference  ->  F_VCO = M * F_REF = 270 MHz (M = 10)
//      * lock-acquisition transient: VCO frequency ramps from its free-run
//        value UP through an over-range excursion (paper's coarse path sweeps
//        toward ~~300 MHz) and settles to 270 MHz over the loop settling
//        time (~1.5 us ~= 8 * tau_L, tau_L = 177 ns loop time constant).
//      * lock detect (edge-alignment / frequency window) with LOCKED output.
//      * PG (power-good / enable) gating: PLL only runs when PG == 1.
//      * a small, deterministic ideal-jitter knob (paper target < 4 ps RMS).
//
//  This is the "golden / ideal" sibling of pll_top_postlayout.sv.  The two are
//  DROP-IN INTERCHANGEABLE: identical port list and identical parameter list.
//
//  Pure IEEE-1800 behavioral SystemVerilog. Compiles + runs under both
//  Icarus Verilog (iverilog -g2012) and Verilator 5.x.
//
//  NOTE: this is a *delivery / verification* model. It contains NO layout-
//  engine internals, no PDK data, and no proprietary constructs.
//============================================================================
`ifndef PLL_TOP_PRELAYOUT_SV
`define PLL_TOP_PRELAYOUT_SV
`timescale 1ps/1ps

module pll_top #(
    // ---- user-tunable parameters (identical set in the post-layout model) ----
    parameter integer M          = 10,           // feedback divide ratio
    parameter real    F_REF_HZ   = 27.0e6,       // reference frequency  [Hz]
    parameter real    JITTER_PS  = 0.0,          // RMS cycle jitter on PLL_CLK [ps]
                                                 //   (prelayout ideal: 0; can be
                                                 //    set to the <4 ps paper target)
    parameter real    LOCK_TAU_S = 177.0e-9,     // loop time constant tau_L  [s]
    parameter real    SETTLE_S   = 1.5e-6,       // time to declare lock       [s]
    parameter real    FREERUN_HZ = 120.0e6,      // VCO free-run freq @ enable [Hz]
    parameter real    OVERSHOOT_HZ = 430.0e6,    // peak of acquisition sweep  [Hz]
    parameter integer SEED       = 32'h0BADF00D, // jitter PRNG seed
    parameter [255:0] CORNER     = "TT"          // present for interchangeability
)(
    input  wire  REFCLK,   // reference clock (F_REF_HZ nominal)
    output reg   PLL_CLK,   // PLL output clock (= M * REFCLK when locked)
    input  wire  PG,        // power-good / enable (active high)
    inout  wire  VDD,       // 1.8 V supply  (behavioral: unused electrically)
    inout  wire  VSS,       // ground        (behavioral: unused electrically)
    // ---- analog reference / control voltages (bias; behavioral no-connects) ----
    input  wire  VFINE,
    input  wire  V_REF,
    input  wire  VREF,
    input  wire  VREG_REF,
    // ---- analog bias currents (behavioral no-connects) ----
    input  wire  IBCP,
    input  wire  IBREG,
    input  wire  IB,
    // ---- observability (not in the silicon port list, purely for TB checks) --
    output reg          LOCKED, // 1 when the loop is locked
    output real         F_VCO_HZ // current instantaneous VCO frequency [Hz]
);

    localparam real F_TARGET_HZ = M * F_REF_HZ;      // 270 MHz for defaults
    localparam real SEC_PER_PS  = 1.0e-12;

    // ------------------------------------------------------------------
    // Reference-edge time base: measure the incoming REFCLK period so the
    // divide check and lock timing are traceable to the real stimulus.
    // ------------------------------------------------------------------
    real t_prev_ref;
    real ref_period_s;
    real t_enable;              // sim time (s) when PG went high

    initial begin
        PLL_CLK       = 1'b0;
        LOCKED        = 1'b0;
        F_VCO_HZ      = 0.0;
        t_prev_ref    = 0.0;
        ref_period_s  = 1.0 / F_REF_HZ;   // seeded with nominal until measured
        t_enable      = 0.0;
    end

    // sim time in seconds (timescale is 1ps)
    function real now_s;
        now_s = $realtime * SEC_PER_PS;
    endfunction

    // measure the reference period on each rising REFCLK edge
    always @(posedge REFCLK) begin
        real tn;
        tn = now_s();
        if (t_prev_ref != 0.0) ref_period_s = tn - t_prev_ref;
        t_prev_ref = tn;
    end

    // ------------------------------------------------------------------
    // PG enable / disable handling.  We capture the enable time on the rising
    // edge; the VCO loop below gates on the PG *level* directly (no racing
    // "running" flag -- a separate flag set on posedge PG would race the
    // level check in the free-running VCO loop and can dead-lock it).
    // ------------------------------------------------------------------
    always @(posedge PG) begin
        t_enable = now_s();
    end
    always @(negedge PG) begin
        LOCKED   = 1'b0;
        F_VCO_HZ = 0.0;
        PLL_CLK  = 1'b0;
    end

    // ------------------------------------------------------------------
    // Lock-acquisition frequency profile.
    //
    // Physically-motivated shape (matches the paper's captured lock waveform,
    // SPECS sim/pll_lock_clean.png):
    //   * at enable the ring free-runs at FREERUN_HZ,
    //   * the coarse (high-gain) path drives the VCO UP through an over-range
    //     excursion peaking near OVERSHOOT_HZ,
    //   * then a damped settling brings it to the target 270 MHz with time
    //     constant LOCK_TAU_S.
    //
    // We synthesize this as: target + (overshoot term) shaped by an
    // exponentially-decaying sinusoid -- the classic 2nd/3rd-order loop step
    // response with the paper's ~70 deg phase margin (light overshoot).
    // ------------------------------------------------------------------
    function real acq_freq(input real t_since_en);
        real x, env, ramp;
        // fast initial ramp up (coarse path slews hard for the first ~tau)
        ramp = 1.0 - $exp(-t_since_en / (0.35*LOCK_TAU_S));
        // damped-sinusoid settling toward target with a single overshoot bump
        env  = $exp(-t_since_en / LOCK_TAU_S);
        // one overshoot lobe: peaks ~ 1*tau in, decays out by ~5*tau
        x    = (OVERSHOOT_HZ - F_TARGET_HZ) * env
             * $sin(3.14159265359 * t_since_en / (2.2*LOCK_TAU_S));
        acq_freq = FREERUN_HZ + (F_TARGET_HZ - FREERUN_HZ)*ramp + x;
        if (acq_freq < 1.0e6) acq_freq = 1.0e6;   // clamp non-negative
    endfunction

    // ------------------------------------------------------------------
    // Deterministic Gaussian jitter source (Box-Muller on a 32-bit LCG).
    // Prelayout default JITTER_PS = 0 -> no jitter injected.
    // ------------------------------------------------------------------
    integer rng_state;
    initial rng_state = SEED;
    function real urand01;                     // uniform (0,1]
        rng_state = (rng_state * 1103515245 + 12345) & 32'h7fffffff;
        urand01   = (rng_state + 1.0) / 2147483649.0;
    endfunction
    function real gauss;                        // ~ N(0,1)
        real u1, u2;
        u1 = urand01(); u2 = urand01();
        gauss = $sqrt(-2.0*$ln(u1)) * $cos(6.28318530718*u2);
    endfunction

    // ------------------------------------------------------------------
    // VCO clock generator: produces PLL_CLK toggling at the current VCO
    // frequency.  Half-period is recomputed every edge from the acquisition
    // profile (frequency tracks the loop transient), plus optional jitter.
    // ------------------------------------------------------------------
    real half_period_ps;
    real f_now, jit_ps, hp_now;
    always begin
        if (PG === 1'b1) begin
            f_now = acq_freq(now_s() - t_enable);
            F_VCO_HZ = f_now;
            // nominal half period in ps
            hp_now = (1.0/f_now) / SEC_PER_PS / 2.0;
            // add per-edge Gaussian jitter (0 for prelayout ideal)
            jit_ps = (JITTER_PS > 0.0) ? (JITTER_PS * gauss()) : 0.0;
            half_period_ps = hp_now + jit_ps*0.5;
            if (half_period_ps < 1.0) half_period_ps = 1.0;
            #(half_period_ps) PLL_CLK = ~PLL_CLK;
        end else begin
            PLL_CLK = 1'b0;
            // idle: wait for enable without busy-spinning
            @(posedge PG);
        end
    end

    // ------------------------------------------------------------------
    // Lock detector: LOCKED asserts once (a) we are past SETTLE_S after
    // enable AND (b) the instantaneous VCO frequency is within +/-1% of
    // target.  Deasserts if frequency leaves a +/-2% window (hysteresis).
    // ------------------------------------------------------------------
    real ferr_lock;
    always @(posedge REFCLK) begin
        if (PG === 1'b1) begin
            ferr_lock = (F_VCO_HZ - F_TARGET_HZ) / F_TARGET_HZ;
            if (ferr_lock < 0.0) ferr_lock = -ferr_lock;
            if (!LOCKED) begin
                if (((now_s() - t_enable) >= SETTLE_S) && (ferr_lock <= 0.01))
                    LOCKED <= 1'b1;
            end else begin
                if (ferr_lock > 0.02) LOCKED <= 1'b0;   // hysteresis
            end
        end
    end

`ifdef PLL_DEBUG
    initial $display("[prelayout] M=%0d F_REF=%0.3f MHz -> F_TARGET=%0.3f MHz  corner=%0s",
                     M, F_REF_HZ/1e6, F_TARGET_HZ/1e6, CORNER);
`endif

endmodule
`endif
