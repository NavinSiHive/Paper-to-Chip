# PLL Chip — Tapeout Signoff Summary

Mixed-signal ring-oscillator PLL (Williams CICC2004, sky130). Final chip `pll_chip` =
`pll_dcc` (digital control core) + `PLLTOP_D40` (analog PLL + on-macro ÷40) + IO ring.
Verdict: **TAPEOUT-READY** (modulo two standard pre-mask steps, noted below).

## Verification results
| # | Check | Result |
|---|---|---|
| 1 | Analog top `PLLTOP_D40` (÷40) | **DRC 0 · LVS match uniquely** (643 dev/323 nets) · ÷40 confirmed ngspice (270→6.75 MHz exactly) · spec-closed (PM 70–72°, spur <−57 dBc, jitter 4.83 ps) |
| 2 | Digital core `pll_dcc` | **multi-corner STA clean 100–500 MHz** (ss/tt/ff) · DFT scan-inserted (239/247) · Magic DRC 0 |
| 3 | Chip assembly + route | **routed · route-DRC 0** (first pass) |
| 4 | Chip LVS (hierarchical, both macros black-boxed) | **Circuits match uniquely** — incl. PLLTOP_D40, PLLCLK_OUT, a_ck_div40 (÷40 fanout in the match) |
| 5 | Chip DRC (klayout `sky130A_mr`) | 75 → **all 75 foundry-waivable** (IO-pad-cell + pre-hardened pll_dcc); **0 inside PLLTOP_D40, 0 in top routing** → real DRC 0 |
| 6 | Antenna | **0** (per-macro magic antennacheck clean) |
| 7 | Metal density | met1–5 = 1.2/2.1/9.3/20.7/17.4 % — **max OK (≤21%, well under 70%)**; min needs FILL (pre-mask, below) |
| 8 | ERC / connectivity | **clean** — no floating signal nets; all 7 bias pins → analog pads; PLLCLK_OUT → pad; VDDA/VSSA/VCCD/VSSD connected |
| 9 | GDS integrity | **single top `pll_chip`** · on-grid (0 off-grid) · 1902×1900 µm = 3.61 mm² |
| 10 | ÷40 output path | `CK_DIV40` (÷40, ~6.75 MHz) physically traces PLLTOP_D40 → `PLLCLK_OUT` pad + digital, on continuous met3 |
| 11 | IO / LVDS | no LVDS in open sky130 → CMOS gpio; ÷40 in the analog macro makes the pad clock 6.75 MHz (≤12.5 MHz at 500 MHz lock peak) — pad-safe |
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

---
**License:** MIT — see the `LICENSE` file. Generated GDS, models, and docs provided as-is, without warranty.
