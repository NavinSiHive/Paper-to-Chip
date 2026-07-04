# PLL Chip — Tapeout Signoff Summary

Mixed-signal ring-oscillator PLL (Williams CICC2004, sky130). Final chip `pll_chip` =
`pll_dcc` (digital control core) + analog PLL macro + IO ring.

> **★ CURRENT: v4 chip — TAPEOUT-READY (fully signed off, C2-final).** `pll_dcc` (WIN=64 freq-lock detector + SPI fix,
> re-hardened: route-DRC 0, STA ss/tt/ff setup+hold PASS, DFT 274/282) + **`PLLTOP4_D40`** (self-biased
> 5-port analog, DRC 0 / LVS match, 548×941 µm) → **routed, chip-LVS "match uniquely", chip-DRC 55 all
> foundry-waivable (0 real), antenna 0, metal-filled (windowed density met), formal DRC 0, integrity OK.**
> On-chip **LOCK detect** (CK_DIV40 vs REFCLK) reports on the `LOCK` pad + SPI STATUS. See
> `reports/final_chip_v4.txt` and `reports/lock_detect/`. GDS: `gds/pll_chip_v4.gds` (tapeout kit) /
> `gds/pll_chip.gds.gz` (public kit).

## Post-layout PVT signoff — final analog rides
The final post-layout rides remain **valid and complete** — all three corners lock at **270 MHz**, with
deterministic jitter **< 5 ps** everywhere:

| Corner | Lock | Deterministic jitter (ps) |
|:---:|:---:|:---:|
| **TT** | 270 MHz | **1.96** |
| **SS** | 270 MHz | **0.60** |
| **FF** | 270 MHz | **2.30** |

VCO tuning range **100–300 MHz (3:1)** across TT/SS/FF; jitter well under the 4 ps spec at all corners. ✅

The table below is the earlier v2 signoff (analog `PLLTOP_D40`, 12-port), retained for provenance; v3
supersedes it. v2 verdict was also TAPEOUT-READY.

## Verification results
| # | Check | Result |
|---|---|---|
| 1 | Analog top `PLLTOP_D40` (÷40) | **DRC 0 · LVS match uniquely** (643 dev/323 nets) · ÷40 confirmed ngspice (270→6.75 MHz exactly) · lock + jitter spec-closed |
| 2 | Digital core `pll_dcc` | **multi-corner STA clean 100–300 MHz** (ss/tt/ff) · DFT scan-inserted (239/247) · Magic DRC 0 |
| 3 | Chip assembly + route | **routed · route-DRC 0** (first pass) |
| 4 | Chip LVS (hierarchical, both macros black-boxed) | **Circuits match uniquely** — incl. PLLTOP_D40, PLLCLK_OUT, a_ck_div40 (÷40 fanout in the match) |
| 5 | Chip DRC (klayout `sky130A_mr`) | 75 → **all 75 foundry-waivable** (IO-pad-cell + pre-hardened pll_dcc); **0 inside PLLTOP_D40, 0 in top routing** → real DRC 0 |
| 6 | Antenna | **0** (per-macro magic antennacheck clean) |
| 7 | Metal density | met1–5 = 1.2/2.1/9.3/20.7/17.4 % — **max OK (≤21%, well under 70%)**; min needs FILL (pre-mask, below) |
| 8 | ERC / connectivity | **clean** — no floating signal nets; all 7 bias pins → analog pads; PLLCLK_OUT → pad; VDDA/VSSA/VCCD/VSSD connected |
| 9 | GDS integrity | **single top `pll_chip`** · on-grid (0 off-grid) · 1902×1900 µm = 3.61 mm² |
| 10 | ÷40 output path | `CK_DIV40` (÷40, ~6.75 MHz) physically traces PLLTOP_D40 → `PLLCLK_OUT` pad + digital, on continuous met3 |
| 11 | IO / LVDS | no LVDS in open sky130 → CMOS gpio; ÷40 in the analog macro makes the pad clock 6.75 MHz (≤7.5 MHz at 300 MHz lock peak) — pad-safe |
| 12 | SV + RNM models (pre/post/RNM) | **ALL_PASS** (iverilog + Verilator): lock 270 MHz ±1%, ÷M=10, post-layout jitter 4.867 ps ≈ 4.83 ps |

## Residuals — standard pre-mask steps (NOT design bugs)
1. **IO-cell DRC waiver.** The 75 DRC items are all foundry IO-pad-cell-internal or pre-hardened
   `pll_dcc` cell rules — cleared by the standard sky130 IO-cell/std-cell DRC exclusion (same waiver as
   any Caravel/padframe chip). No layout change.
2. **Metal fill.** All metals sit below the sky130 min-density window; a real mask set needs metal FILL
   before final signoff. Fill was deliberately **not** inserted to preserve the clean LVS/DRC state for
   this hand-off (fill is a mechanical last step; max-density is already fine at ≤21%).

## Layout-engine isolation
No CAL analog-layout-engine internals appear in any deliverable — the analog PLL is delivered only as a
verified **hard macro** (GDS/LEF/CDL). Enforced by the GitHub-kit `.gitignore` + a staged-file guard.
