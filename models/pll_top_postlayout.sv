//============================================================================
//  pll_top_postlayout.sv
//----------------------------------------------------------------------------
//  Behavioral (event-driven) model of the same dual-control-path ring-
//  oscillator PLL top cell -- but calibrated to the MEASURED silicon-ready
//  ("post-layout close") numbers rather than the ideal paper params.
//
//  Design reference: Williams et al., CICC 2004 (see pll_top_prelayout.sv);
//  reproduced on sky130.
//
//  Differences vs the pre-layout / ideal model:
//      * RMS accumulated jitter = 4.83 ps injected as Gaussian noise on
//        every PLL_CLK edge (paper target was < 4 ps; this is the measured
//        close).
//      * corner-parameterised settling: the SS corner is phase-margin-limited
//        (PM 40.7 deg vs 72 deg TT / 70 deg FF) -> longer, more oscillatory
//        settling; hooks for TT / FF / SS via the CORNER parameter.
//      * reference-spur and phase-margin numbers are carried as parameters so
//        downstream reports and assertions can read the measured close.
//
//  DROP-IN INTERCHANGEABLE with pll_top_prelayout.sv:  identical port list,
//  identical parameter list.  Instantiate either one as `pll_top`.
//
//  Pure IEEE-1800 behavioral SystemVerilog; runs under both iverilog -g2012
//  and Verilator 5.x (lint clean).  No layout-engine internals, no PDK data.
//============================================================================
`ifndef PLL_TOP_POSTLAYOUT_SV
`define PLL_TOP_POSTLAYOUT_SV
`timescale 1ps/1ps

module pll_top #(
    // ---- SAME parameter list as the pre-layout model (drop-in) ----
    parameter integer M          = 10,
    parameter real    F_REF_HZ   = 27.0e6,
    parameter real    JITTER_PS  = 4.83,         // MEASURED close: 4.83 ps RMS
    parameter real    LOCK_TAU_S = 177.0e-9,     // nominal loop time constant
    parameter real    SETTLE_S   = 1.5e-6,       // nominal settle (TT/FF)
    parameter real    FREERUN_HZ = 120.0e6,
    parameter real    OVERSHOOT_HZ = 470.0e6,    // measured close sweeps a touch higher
    parameter integer SEED       = 32'hDEADBEEF,
    parameter [255:0] CORNER     = "TT"          // "TT" | "FF" | "SS"
)(
    input  wire  REFCLK,
    output reg   PLL_CLK,
    input  wire  PG,
    inout  wire  VDD,
    inout  wire  VSS,
    input  wire  VFINE,
    input  wire  V_REF,
    input  wire  VREF,
    input  wire  VREG_REF,
    input  wire  IBCP,
    input  wire  IBREG,
    input  wire  IB,
    output reg          LOCKED,
    output real         F_VCO_HZ
);

    localparam real F_TARGET_HZ = M * F_REF_HZ;
    localparam real SEC_PER_PS  = 1.0e-12;

    // ------------------------------------------------------------------
    // Corner de-rating table (measured close).
    //   Phase margins: TT 72 deg, FF 70 deg, SS 40.7 deg.
    //   Reference spurs: TT -69.6, FF -86.5, SS -58.3 dBc.
    // Lower PM (SS) -> heavier overshoot and a longer settle. We map PM to a
    // settling multiplier and an overshoot-envelope gain so the transient
    // visibly differs across corners.
    // ------------------------------------------------------------------
    real pm_deg;          // phase margin for this corner
    real spur_dbc;        // reference spur for this corner
    real settle_mult;     // settle-time multiplier vs nominal
    real os_gain;         // overshoot-envelope gain
    real tau_mult;        // loop-tau multiplier (SS is slower)

    initial begin
        // string compare on the packed CORNER param
        if (CORNER == "SS") begin
            pm_deg      = 40.7;
            spur_dbc    = -58.3;
            settle_mult = 2.6;      // PM-limited: much longer to settle
            os_gain     = 1.9;      // large, ringy overshoot
            tau_mult    = 1.8;
        end else if (CORNER == "FF") begin
            pm_deg      = 70.0;
            spur_dbc    = -86.5;
            settle_mult = 0.95;
            os_gain     = 1.05;
            tau_mult    = 0.95;
        end else begin              // TT (default)
            pm_deg      = 72.0;
            spur_dbc    = -69.6;
            settle_mult = 1.0;
            os_gain     = 1.0;
            tau_mult    = 1.0;
        end
    end

    // effective (corner-adjusted) settling parameters
    function real eff_settle;  eff_settle = SETTLE_S   * settle_mult; endfunction
    function real eff_tau;     eff_tau    = LOCK_TAU_S * tau_mult;    endfunction

    real t_prev_ref, ref_period_s, t_enable;

    initial begin
        PLL_CLK      = 1'b0;
        LOCKED       = 1'b0;
        F_VCO_HZ     = 0.0;
        t_prev_ref   = 0.0;
        ref_period_s = 1.0 / F_REF_HZ;
        t_enable     = 0.0;
    end

    function real now_s; now_s = $realtime * SEC_PER_PS; endfunction

    always @(posedge REFCLK) begin
        real tn; tn = now_s();
        if (t_prev_ref != 0.0) ref_period_s = tn - t_prev_ref;
        t_prev_ref = tn;
    end

    // capture enable time on rising edge; VCO loop gates on the PG *level*
    // directly (a separate "running" flag would race the level check).
    always @(posedge PG) begin t_enable = now_s(); end
    always @(negedge PG) begin
        LOCKED = 1'b0; F_VCO_HZ = 0.0; PLL_CLK = 1'b0;
    end

    // corner-aware acquisition profile (see prelayout model for the shape)
    function real acq_freq(input real t_since_en);
        real x, env, ramp, tau;
        tau  = eff_tau();
        ramp = 1.0 - $exp(-t_since_en / (0.35*tau));
        env  = $exp(-t_since_en / tau);
        x    = os_gain * (OVERSHOOT_HZ - F_TARGET_HZ) * env
             * $sin(3.14159265359 * t_since_en / (2.2*tau));
        acq_freq = FREERUN_HZ + (F_TARGET_HZ - FREERUN_HZ)*ramp + x;
        if (acq_freq < 1.0e6) acq_freq = 1.0e6;
    endfunction

    // Gaussian jitter (Box-Muller on a 32-bit LCG) -- measured 4.83 ps RMS
    integer rng_state;
    initial rng_state = SEED;
    function real urand01;
        rng_state = (rng_state * 1103515245 + 12345) & 32'h7fffffff;
        urand01   = (rng_state + 1.0) / 2147483649.0;
    endfunction
    function real gauss;
        real u1, u2;
        u1 = urand01(); u2 = urand01();
        gauss = $sqrt(-2.0*$ln(u1)) * $cos(6.28318530718*u2);
    endfunction

    // Jitter injection: we add an independent Gaussian offset to each PLL_CLK
    // edge.  A measured PERIOD is the difference of two consecutive, i.i.d.
    // edge offsets, so its RMS is sigma_edge * sqrt(2).  To make the *measured*
    // period-jitter RMS equal the target JITTER_PS (4.83 ps), inject a per-edge
    // sigma of JITTER_PS / sqrt(2).  This is what makes the model's reported
    // jitter match the datasheet/measured close.
    localparam real SIG_EDGE_PS = JITTER_PS / 1.41421356237;
    real half_period_ps;
    real f_now, jit_ps, hp_now;
    always begin
        if (PG === 1'b1) begin
            f_now = acq_freq(now_s() - t_enable);
            F_VCO_HZ = f_now;
            hp_now = (1.0/f_now) / SEC_PER_PS / 2.0;
            jit_ps = (JITTER_PS > 0.0) ? (SIG_EDGE_PS * gauss()) : 0.0;
            half_period_ps = hp_now + jit_ps;
            if (half_period_ps < 1.0) half_period_ps = 1.0;
            #(half_period_ps) PLL_CLK = ~PLL_CLK;
        end else begin
            PLL_CLK = 1'b0;
            @(posedge PG);
        end
    end

    // lock detector -- uses the corner-adjusted settle time
    real ferr_lock;
    always @(posedge REFCLK) begin
        if (PG === 1'b1) begin
            ferr_lock = (F_VCO_HZ - F_TARGET_HZ) / F_TARGET_HZ;
            if (ferr_lock < 0.0) ferr_lock = -ferr_lock;
            if (!LOCKED) begin
                if (((now_s() - t_enable) >= eff_settle()) && (ferr_lock <= 0.01))
                    LOCKED <= 1'b1;
            end else begin
                if (ferr_lock > 0.02) LOCKED <= 1'b0;
            end
        end
    end

`ifdef PLL_DEBUG
    initial $display("[postlayout] corner=%0s PM=%0.1f deg spur=%0.1f dBc jitter=%0.2f ps -> F_TARGET=%0.3f MHz",
                     CORNER, pm_deg, spur_dbc, JITTER_PS, F_TARGET_HZ/1e6);
`endif

endmodule
`endif
