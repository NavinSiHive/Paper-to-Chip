# Mixed-Signal Ring-Oscillator PLL Chip — Architecture & Verification

Reproduction of the Williams et al. dual-control-path CMOS ring-oscillator PLL (IEEE CICC 2004,
"<4 ps RMS accumulated jitter") on the open-source **sky130** PDK. Mixed-signal: a self-contained
analog PLL core wrapped by a digital control / IO subsystem, in a padframe.

## Block diagram
```
                 ┌───────────────────────── PLL CHIP (sky130) ─────────────────────────┐
   REFCLK ─pad──▶│  ┌── DIGITAL CONTROL CORE (pll_dcc, 174×174µm) ──┐   ┌─ ANALOG PLL ─┐ │
   SPI   ─pads──▶│  │ SPI/CSR · power-up FSM · lock detect ·        │   │  (PLLTOP,    │ │
   RSTN  ─pad──▶ │  │ output÷ + glitch-free gate · DFT scan        │   │  457×755µm)  │ │
   CLKOUT◀─pad── │  │                                              │   │  PFD·CP·LPF· │ │
   LOCK  ◀─pad── │  │  ref_o ───────────────────────▶ REFCLK ──────┼──▶│  gm-C·dualVCO│ │
   scan  ─pads──▶│  │  pll_clk_i ◀── PLL_CLK ◀──────────────────────┼───│  ·REG·÷M     │ │
   test  ─pads──▶│  │  pll_en_o ───────────────────▶ PG ───────────┼──▶│              │ │
                 │  └──────────────────────────────────────────────┘   └──────┬───────┘ │
   bias  ─apads─▶│   V_REF·VREF·VREG_REF·VFINE·IBCP·IBREG·IB ────────────────▶ │ (bias)  │
   VDD/VSS─pwr──▶│   VDDA/VSSA (analog) · VCCD/VSSD (digital) · VDDIO (3.3 IO)           │
                 └─────────────────────────────────────────────────────────────────────┘
```

## Interface (chip ↔ analog PLL top `PLLTOP`)
| Net | Dir | Metal | Role |
|---|---|---|---|
| REFCLK | in  | met2 | reference clock (from digital `ref_o`, gated) |
| CK_DIV40| out | met3 | ÷40 output clock (= M·REFCLK/40 = 6.75 MHz when locked) → PLLCLK_OUT pad + digital observe |
| PG     | in  | met2 | power-good / enable (from digital `pll_en_o`) |
| V_REF, VREF, VREG_REF, VFINE | in | met1 | analog reference/control voltages (bias pads) |
| IBCP, IBREG, IB | in | met1 | analog bias currents (bias pads) |
| VDD, VSS | pwr | met5 | 1.8 V supply rails |

The analog PLL is **bias-controlled + self-contained** (own PFD, charge pump, loop filter, gm-C
coarse path, dual-control ring VCO, regulator, ÷M feedback). The digital core provides reference
gating, enable/POR, lock detection (on PLL_CLK vs REFCLK), the output test-clock divider + glitch-free
gate (which also protects the CMOS output pad — see IO note), SPI configuration, and DFT scan.

## Specs
| | nominal | note |
|---|---|---|
| F_REF / F_VCO | 27 MHz / 270 MHz | M = 10 |
| Tuning range | 100–500 MHz (5:1) | no band-switching |
| Jitter | <4 ps RMS target | 4.83 ps measured close |
| Phase margin | 70–72° (TT/FF) | SS 40.7° (headroom-limited, documented) |
| Reference spurs | −69.6 / −86.5 / −58.3 dBc | TT / FF / SS |
| Supply / process | 1.8 V / sky130 | |

## IO / output-clock note (important)
sky130's open IO library has **no LVDS / differential buffer**; digital I/O uses CMOS `gpiov2` pads
(max ~tens of MHz). The raw VCO clock (270 MHz nominal, up to ~500 MHz during lock acquisition) is
therefore **never routed to a pad directly**.

**The output clock is divided by 40 INSIDE the analog macro.** The analog top `PLLTOP_D40` contains an
on-macro ÷40 divider (÷4 × ÷10, from verified CAL cells) that taps the internal CMOS `PLL_CLK` and
drives a dedicated output pin **`CK_DIV40`**:
```
   PLL_CLK (270 MHz / ≤500 MHz peak) ──▶ ÷40 ──▶ CK_DIV40 (6.75 MHz nom / ≤12.5 MHz peak) ──▶ PLLCLK_OUT pad
```
6.75 MHz is comfortably within the CMOS gpio pad, and the pad is protected even during the ~500 MHz
lock-acquisition sweep (÷40 → 12.5 MHz). The digital core observes `CK_DIV40` for status/gating; the
raw fast clock never leaves the analog. A true high-speed off-chip clock would require a custom LVDS
driver (out of scope for open sky130).

## Verification summary
| Item | Result |
|---|---|
| Analog top `PLLTOP` | DRC 0 · LVS match uniquely (363 dev/183 nets) · spec-closed |
| Digital core `pll_dcc` | multi-corner STA clean (100–500 MHz), DFT scan-inserted, Magic DRC 0 |
| Chip (hierarchical) | assembled, route-DRC 0, chip-LVS match (see reports/) |
| GDS integrity | single top cell · on-grid · density within limits |
| SV + RNM models | REFCLK→PLL_CLK lock + ÷M verified (see models/) |

---
**License:** MIT — see the `LICENSE` file. Generated GDS, models, and docs provided as-is, without warranty.
