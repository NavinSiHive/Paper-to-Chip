# PLL Top-Cell Behavioral & Real-Number Models

Delivery-grade behavioral models of the **dual-control-path ring-oscillator PLL**
top cell, reproduced on **SkyWater sky130** (1.8 V), after:

> S. Williams, H. Thompson, M. Hufford, E. Naviasky (Cadence Design Services),
> *"An Improved CMOS Ring Oscillator PLL with Less than 4 ps RMS Accumulated
> Jitter,"* IEEE Custom Integrated Circuits Conference (CICC), 2004, paper 8-4,
> pp. 151-154.

These models are for **system / SoC integration, verification, and datasheet
correlation**. They are pure IEEE-1800 SystemVerilog with **no layout-engine
internals, no PDK data, and no proprietary constructs** — safe for both the
tapeout delivery kit and a public GitHub kit.

---

## Files

| File | What it is |
|------|-----------|
| `pll_top_prelayout.sv`  | Behavioral model using the **ideal / paper loop parameters**. REFCLK -> PLL_CLK with M=10, a realistic lock-acquisition transient, lock detect, PG-enable gating. |
| `pll_top_postlayout.sv` | Same interface & parameter list, calibrated to the **measured silicon-ready close**: 4.83 ps RMS jitter injected on PLL_CLK, corner-parameterised (TT/FF/SS) phase-margin-limited settling. **Drop-in interchangeable** with the pre-layout model. |
| `pll_top_rnm.sv`        | **Real-Number (AMS) Model.** The analog control path is modelled with SystemVerilog `real`: PFD -> charge pump -> loop-filter integrator -> dual-path (fine+coarse) VCO. PLL_CLK frequency evolves *continuously* with the control voltage. Internal `V_CTRL` / `V_VCO` exposed as `real` for probing. |
| `tb_pll_top.sv`         | Self-checking testbench: 27 MHz REFCLK, PG asserted; checks lock to 270 MHz (+/-1%), divide M=10, lock time, and jitter. Prints `ALL_PASS` / per-check PASS-FAIL. Model-agnostic. |
| `README.md`             | This file. |

All three DUTs share the **same module name (`pll_top`)**, the **same port
list**, and the **same headline parameter list**, so any one can be dropped into
the testbench (or a chip top) unchanged.

---

## Top interface (`module pll_top`)

```systemverilog
module pll_top (
    input  REFCLK,       // reference clock (27 MHz nominal)
    output PLL_CLK,       // PLL output clock = M * REFCLK when locked
    input  PG,            // power-good / enable (active high) -> PLL runs when 1
    inout  VDD, VSS,      // 1.8 V supply (behavioral: not modelled electrically)
    input  VFINE, V_REF, VREF, VREG_REF,   // analog reference / control (bias)
    input  IBCP, IBREG, IB,                // analog bias currents
    // ---- observability (verification aids, not in the silicon port list) ----
    output LOCKED,        // 1 when the loop is locked
    output real F_VCO_HZ  // instantaneous VCO frequency [Hz]
    // (RNM only, additionally:)
    // output real V_CTRL, V_VCO, V_C1_NODE   // analog control-path probes [V]
);
```

The analog reference/bias inputs (`VFINE, V_REF, VREF, VREG_REF, IBCP, IBREG, IB`)
and the supplies (`VDD, VSS`) are present to honour the silicon pin contract; the
behavioral models do not model them electrically (they are no-connects). The RNM
carries the equivalent physics as **parameters** (`I_CP_A`, `R1_OHM`, ...,
`V_REF_V`) so the loop is fully self-contained and portable.

### Headline parameters (identical in all three models)

| Parameter | Default | Meaning |
|-----------|---------|---------|
| `M`          | 10        | feedback divide ratio (F_VCO = M * F_REF) |
| `F_REF_HZ`   | 27.0e6    | reference frequency [Hz] |
| `JITTER_PS`  | 0 / 4.83  | RMS jitter on PLL_CLK [ps] (pre/rnm = 0; post = 4.83) |
| `LOCK_TAU_S` | 177e-9    | loop time constant tau_L [s] (paper: jitter window) |
| `SETTLE_S`   | 1.5e-6    | nominal time to declare lock [s] (~8*tau_L) |
| `FREERUN_HZ` | 120e6     | VCO free-run frequency at enable [Hz] |
| `OVERSHOOT_HZ`| ~430-500e6| peak of the acquisition sweep [Hz] |
| `CORNER`     | "TT"      | process corner hook: "TT" / "FF" / "SS" (post-layout) |

The RNM adds analog/loop parameters (paper Table I defaults): `I_CP_A`, `R1_OHM`,
`C1_F`, `C2_F`, `GM_S`, `GOUT_S`, `C3_F`, `K_FINE_HZV`, `K_COARSE_HZV`, `V_REF_V`,
`F0_HZ`, and the operating points `V0_FINE_V` / `V0_COARSE_V`.

---

## Spec matched (paper + this chip's measured close)

| Spec | Value |
|------|-------|
| F_REF | 27 MHz |
| Divide M | 10 -> **F_VCO nominal 270 MHz** |
| Tuning range | 100-500 MHz (5:1); acquisition sweeps up toward ~400-500 MHz then settles to 270 MHz |
| K_VCOFINE | ~15 MHz/V (wide-BW, low-gain fine path) |
| K_VCOCOARSE | ~866 MHz/V (low-BW, high-gain coarse path) |
| Loop bandwidth | ~900 kHz |
| Phase margin (TT / FF / SS) | 72 deg / 70 deg / 40.7 deg |
| Reference spurs (TT / FF / SS) | -69.6 / -86.5 / -58.3 dBc |
| RMS accumulated jitter | **4.83 ps** (paper target < 4 ps) |
| Loop params (paper Table I) | I_CP = 193 uA, R1 = 22.4 kOhm, C1 = 51.2 pF, C2 = 1.6 pF |
| Loop params (this chip's close) | I_CP = 120 uA, R1 = 26 kOhm, C1 = 80 pF, C2 = 1.6 pF |

### The dual control path (paper's core contribution)

* **Fine path** (wide-BW, low-gain, 15 MHz/V): sets the loop bandwidth and phase
  margin; low VCO gain keeps ripple/noise sensitivity low. In the RNM this is the
  charge-pump -> loop-filter (`R1/C1/C2`) -> `V_FINE` -> `K_FINE`.
* **Coarse path** (low-BW, high-gain, 866 MHz/V): gives the wide 5:1 range without
  band switching. A gm-C integrator forces the C1 node to `V_REF`, pinning the
  charge-pump output to a known voltage -> low reference spurs. In the RNM this is
  `gm/(gout + s*C3)` -> `V_COARSE` -> `K_COARSE`.

The RNM reproduces the documented acquisition/handoff: at enable the fine path
slews the VCO up (small overshoot past 270 MHz), then the gm-C coarse integrator
takes over the low-frequency work and drives the C1 node to `V_REF` (~0.60 V)
while the fine node relaxes — exactly the paper's section IV-B behavior.

---

## How to run

Add the EDA tools to `PATH`:

```bash
export PATH=/home/navinm/eda-tools/mamba/envs/eda/bin:$PATH
```

### Icarus Verilog (iverilog -g2012) — recommended, fast

```bash
cd models

# pre-layout
iverilog -g2012 -o /tmp/pre.vvp -D 'MODEL_NAME="prelayout"' \
    pll_top_prelayout.sv tb_pll_top.sv && vvp /tmp/pre.vvp

# post-layout (measured close)
iverilog -g2012 -o /tmp/post.vvp -D 'MODEL_NAME="postlayout"' \
    pll_top_postlayout.sv tb_pll_top.sv && vvp /tmp/post.vvp

# real-number model (needs RNM_PROBES so the V_CTRL/V_VCO probe ports connect)
iverilog -g2012 -o /tmp/rnm.vvp -D 'MODEL_NAME="rnm"' -D RNM_PROBES \
    pll_top_rnm.sv tb_pll_top.sv && vvp /tmp/rnm.vvp
```

Select the model by listing its `.sv` file on the command line; the
`+define+MODEL_NAME="..."` string only drives the printout and the expected-jitter
band. Post-layout corners: override `CORNER` on the DUT instance ("TT"/"FF"/"SS").

### Verilator 5.x (also fully runs, via --timing)

Verilator needs `--timing` (coroutine event scheduling) for the `#delay`-based VCO
clock generator, and the behavioral no-connect ports raise the usual (harmless)
`UNUSEDSIGNAL` / `BLKSEQ` style warnings — silenced below:

```bash
verilator --binary --timing -j 2 -sv \
    -Wno-UNUSEDSIGNAL -Wno-UNUSEDPARAM -Wno-BLKSEQ -Wno-WIDTHTRUNC \
    -Wno-VARHIDDEN -Wno-DECLFILENAME -Wno-ZERODLY -Wno-PINCONNECTEMPTY \
    -DMODEL_NAME=\"prelayout\" --top-module tb_pll_top \
    --Mdir /tmp/vb -o vsim pll_top_prelayout.sv tb_pll_top.sv
/tmp/vb/vsim
```

(Add `-DRNM_PROBES` for `pll_top_rnm.sv`.) A quick syntax check is
`verilator --lint-only -sv ...` — the models lint with **zero errors** (only the
standard behavioral-style warnings above).

---

## Pre-layout vs post-layout correspondence (paper number vs measured close)

| Quantity | Pre-layout (ideal / paper) | Post-layout (measured close) | Model knob |
|----------|----------------------------|------------------------------|------------|
| F_VCO (locked) | 270 MHz | 270 MHz | `M`, `F_REF_HZ` |
| Divide ratio | M = 10 | M = 10 | `M` |
| RMS jitter on PLL_CLK | 0 (ideal) / < 4 ps target | **4.83 ps** injected (Gaussian) | `JITTER_PS` |
| Settling / lock time | ~1.5 us (~8*tau_L) | TT ~1.5 us, FF ~1.45 us, **SS ~3.9 us** | `SETTLE_S`, `CORNER` |
| Phase margin | 70 deg (paper) | TT 72 / FF 70 / **SS 40.7 deg** | `CORNER` |
| Reference spurs | (n/a, ideal) | TT -69.6 / FF -86.5 / SS -58.3 dBc | `CORNER` (carried as report params) |
| Acquisition overshoot | ~430 MHz | ~470 MHz (corner-scaled) | `OVERSHOOT_HZ`, `CORNER` |

The **SS corner** is phase-margin-limited (40.7 deg vs 72 deg TT): the post-layout
model maps the lower PM to a heavier acquisition overshoot and a ~2.6x longer
settle, so `LOCKED` deasserts later at SS — the realistic worst-case behavior a
system integrator must design timing/CDC recovery around.

---

## Verified results

Both simulators, all three models, self-check = **ALL_PASS**:

| Model | Simulator | F_PLL | Divide | Lock time | Jitter (measured) |
|-------|-----------|-------|--------|-----------|-------------------|
| prelayout  | iverilog 12.0 / Verilator 5.048 | 269.993 MHz | 10.000 | 1.500 us | 0.000 ps (ideal) |
| postlayout | iverilog 12.0 / Verilator 5.048 | 270.128 MHz | 10.005 | 1.500 us (TT) | 4.867 ps RMS |
| rnm        | iverilog 12.0 / Verilator 5.048 | 269.993 MHz | 10.000 | 1.500 us | 0.387 ps (loop ripple) |

Post-layout corners (settle time): TT 1.52 us, FF 1.45 us, SS 3.93 us — all lock
to 270 MHz.

The post-layout jitter model injects a per-edge Gaussian offset of
`JITTER_PS / sqrt(2)` so that the *measured period* jitter RMS equals the datasheet
`JITTER_PS = 4.83 ps` (a measured period is the difference of two i.i.d. edge
offsets, whose RMS is `sigma_edge * sqrt(2)`).

### Tool caveat

Nothing degraded. Both models and the RNM are pure SV `real` + event/`#delay`
behavioral SystemVerilog and run **unchanged** on both iverilog (`-g2012`) and
Verilator 5.x (`--timing`). The RNM deliberately uses **plain `real`** (not a
proprietary `wreal`/`nettype real` library) precisely so it compiles with common
open tools. Verilator's `--lint-only` reports only standard behavioral warnings
(`UNUSEDSIGNAL` on the no-connect analog/bias ports, `BLKSEQ` for procedural
blocking assignments) — none are bugs; they are silenced in the run commands above.
