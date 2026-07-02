//============================================================================
//  tb_pll_top.sv  --  self-checking testbench for the PLL top-cell models
//----------------------------------------------------------------------------
//  Instantiates ONE `pll_top` model (whichever file is compiled alongside
//  this TB), drives a 27 MHz REFCLK, asserts PG, and checks:
//     (a) PLL_CLK locks to 270 MHz (+/-1 %)
//     (b) divide ratio M = 10 (F_PLL / F_REF)
//     (c) lock is declared within the expected time
//     (d) jitter is within spec (measured for the post-layout model)
//
//  Because all three models share the same port list and headline params,
//  the TB is model-agnostic.  Select the model at COMPILE time by listing the
//  matching .sv file on the iverilog/verilator command line, and pass
//     +define+MODEL_NAME="prelayout|postlayout|rnm"
//  purely for the printout / expected-jitter selection.
//
//  Runs under Icarus Verilog (iverilog -g2012) and Verilator 5.x.
//============================================================================
`timescale 1ps/1ps
`ifndef MODEL_NAME
  `define MODEL_NAME "unknown"
`endif

module tb_pll_top;

    // ---------------- parameters of the run ----------------
    localparam integer M         = 10;
    localparam real    F_REF_HZ  = 27.0e6;
    localparam real    F_TGT_HZ  = M*F_REF_HZ;     // 270 MHz
    localparam real    SEC_PER_PS= 1.0e-12;
    localparam real    REF_HP_PS = (1.0/F_REF_HZ)/SEC_PER_PS/2.0; // 18518.5 ps

    // ---------------- DUT connections ----------------
    reg  REFCLK, PG;
    wire PLL_CLK;
    wire VDD, VSS;
    reg  VFINE, V_REF, VREF, VREG_REF, IBCP, IBREG, IB;
    wire        LOCKED;
    real        F_VCO_HZ;

    // supplies (behavioral)
    assign VDD = 1'b1;
    assign VSS = 1'b0;

    // The DUT.  Extra observability ports (LOCKED, F_VCO_HZ, and for the RNM
    // the V_CTRL/V_VCO/V_C1_NODE reals) are connected by name so the SAME
    // instantiation works whether or not the RNM-only ports exist.
    pll_top #(
        .M(M), .F_REF_HZ(F_REF_HZ)
    ) dut (
        .REFCLK(REFCLK), .PLL_CLK(PLL_CLK), .PG(PG),
        .VDD(VDD), .VSS(VSS),
        .VFINE(VFINE), .V_REF(V_REF), .VREF(VREF), .VREG_REF(VREG_REF),
        .IBCP(IBCP), .IBREG(IBREG), .IB(IB),
        .LOCKED(LOCKED), .F_VCO_HZ(F_VCO_HZ)
`ifdef RNM_PROBES
        ,.V_CTRL(), .V_VCO(), .V_C1_NODE()
`endif
    );

    // ---------------- REFCLK: 27 MHz ----------------
    initial REFCLK = 1'b0;
    always #(REF_HP_PS) REFCLK = ~REFCLK;

    // ---------------- bias/reference tie-offs (behavioral no-ops) ----------------
    initial begin
        VFINE=1'b0; V_REF=1'b0; VREF=1'b0; VREG_REF=1'b0;
        IBCP=1'b0;  IBREG=1'b0; IB=1'b0;
    end

    // ---------------- measurement machinery ----------------
    integer pll_edges;          // PLL_CLK rising edges counted in the window
    integer ref_edges;          // REF rising edges in the window
    real    win_start, win_end; // measurement-window times (s)
    real    meas_f_pll;         // measured PLL frequency
    real    meas_ratio;         // measured divide ratio

    // jitter accumulation (measured over the locked window)
    real    last_edge_ps;       // last PLL_CLK edge time (ps)
    real    period_sum, period_sq_sum;
    integer period_n;
    real    mean_per, var_per, jitter_ps;

    // capture lock time
    real    t_pg_ps, t_lock_ps;
    integer lock_seen;

    initial begin
        pll_edges=0; ref_edges=0; period_n=0;
        period_sum=0.0; period_sq_sum=0.0; last_edge_ps=0.0;
        lock_seen=0; t_lock_ps=0.0;
    end

    // record lock time
    always @(posedge LOCKED) begin
        if (lock_seen == 0) begin
            t_lock_ps = $realtime;
            lock_seen = 1;
        end
    end

    // ================= stimulus & checks =================
    integer errors;
    initial begin
        errors = 0;
        PG = 1'b0;

        // hold PG low briefly, then enable
        #(REF_HP_PS*4);
        t_pg_ps = $realtime;
        PG = 1'b1;

        // let the loop acquire & settle well past the worst-case settle time
        // (SS post-layout ~ 2.6*1.5us ~ 3.9us; give margin)
        #(6_000_000);      // 6 us

        // ---- open the measurement window (steady state) ----
        @(posedge REFCLK); win_start = $realtime*SEC_PER_PS;
        pll_edges=0; ref_edges=0;
        period_n=0; period_sum=0.0; period_sq_sum=0.0; last_edge_ps=0.0;
        // measure over 200 ref cycles
        repeat (200) @(posedge REFCLK);
        win_end = $realtime*SEC_PER_PS;

        // ---- compute measured frequency & divide ratio ----
        meas_f_pll = pll_edges / (win_end - win_start);
        ref_edges  = 200;
        meas_ratio = (meas_f_pll) / F_REF_HZ;

        // ---- compute jitter (RMS of the period, in ps) ----
        if (period_n > 1) begin
            mean_per = period_sum / period_n;
            var_per  = (period_sq_sum/period_n) - (mean_per*mean_per);
            if (var_per < 0.0) var_per = 0.0;
            jitter_ps = $sqrt(var_per);
        end else jitter_ps = 0.0;

        // ================= REPORT & CHECKS =================
        $display("");
        $display("==================================================================");
        $display(" PLL top-cell self-check  --  model = %0s", `MODEL_NAME);
        $display("==================================================================");
        $display("  target  F_PLL      = %0.3f MHz (M=%0d x %0.3f MHz)",
                 F_TGT_HZ/1e6, M, F_REF_HZ/1e6);
        $display("  measured F_PLL      = %0.3f MHz", meas_f_pll/1e6);
        $display("  measured divide M   = %0.3f", meas_ratio);
        $display("  instantaneous F_VCO = %0.3f MHz (DUT probe)", F_VCO_HZ/1e6);
        if (lock_seen != 0)
            $display("  lock time           = %0.3f us after PG",
                     (t_lock_ps - t_pg_ps)*1e-6);
        else
            $display("  lock time           = (LOCKED never asserted)");
        $display("  measured jitter     = %0.3f ps RMS  (period, %0d samples)",
                 jitter_ps, period_n);
        $display("------------------------------------------------------------------");

        // (a) frequency within +/-1 %
        check("PLL_CLK locks to 270 MHz (+/-1%)",
              (meas_f_pll >= F_TGT_HZ*0.99) && (meas_f_pll <= F_TGT_HZ*1.01));

        // (b) divide ratio ~ 10
        check("divide ratio M = 10 (+/-1%)",
              (meas_ratio >= M*0.99) && (meas_ratio <= M*1.01));

        // (c) LOCKED asserted, and within the expected (corner) settle bound.
        //     Expected settle bound: <= 4.5 us (covers SS 2.6x*1.5us=3.9us).
        check("LOCKED asserted within expected time (<=4.5 us)",
              (lock_seen != 0) && ((t_lock_ps - t_pg_ps)*1e-6 <= 4.5));

        // (d) jitter within spec.  Prelayout/RNM: ideal (small).  Postlayout:
        //     measured close 4.83 ps RMS.  The model injects per-edge sigma so
        //     the *measured period* RMS equals 4.83 ps; allow a Gaussian-sample
        //     band 4.0..5.6 ps over 2000 cycles.  Ideal models expect << 1 ps.
        if (`MODEL_NAME == "postlayout") begin
            check("jitter matches measured 4.83 ps RMS (band 4.0..5.6 ps)",
                  (jitter_ps >= 4.0) && (jitter_ps <= 5.6));
        end else begin
            check("jitter within ideal spec (<= 1.0 ps RMS)",
                  (jitter_ps <= 1.0));
        end

        // ================= summary =================
        $display("------------------------------------------------------------------");
        if (errors == 0)
            $display("  RESULT (%0s): ALL_PASS", `MODEL_NAME);
        else
            $display("  RESULT (%0s): %0d CHECK(S) FAILED", `MODEL_NAME, errors);
        $display("==================================================================");
        $display("");
        $finish;
    end

    // count PLL edges + accumulate period stats inside the window
    always @(posedge PLL_CLK) begin
        real tnow;
        tnow = $realtime;
        if (($realtime*SEC_PER_PS >= win_start) && (win_start != 0.0)) begin
            pll_edges = pll_edges + 1;
            if (last_edge_ps != 0.0) begin
                real per;
                per = tnow - last_edge_ps;
                period_sum    = period_sum + per;
                period_sq_sum = period_sq_sum + per*per;
                period_n      = period_n + 1;
            end
            last_edge_ps = tnow;
        end
    end

    // -------- check helper --------
    task check(input [1023:0] name, input ok);
        begin
            if (ok) $display("  [PASS] %0s", name);
            else begin
                $display("  [FAIL] %0s", name);
                errors = errors + 1;
            end
        end
    endtask

    // watchdog
    initial begin
        #(20_000_000);   // 20 us hard stop
        $display("  [FAIL] watchdog timeout -- DUT never completed");
        $finish;
    end

endmodule
