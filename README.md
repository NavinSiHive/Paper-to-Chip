# Open-Source Ring-Oscillator PLL (sky130)

A dual-control-path CMOS ring-oscillator PLL with <4 ps RMS accumulated jitter, reproduced on the
open-source **sky130** PDK (after Williams et al., IEEE CICC 2004). Mixed-signal: an analog PLL core
(PFD, charge pump, loop filter, gm-C, dual-control ring VCO, regulator, feedback divider) wrapped by a
digital control/IO subsystem (SPI config, power-up sequencing, lock detect, output clock management).

## Specs (nominal)
| | |
|---|---|
| F_REF / F_VCO | 27 MHz / 270 MHz (M=10) |
| Tuning range | 100–500 MHz |
| Jitter | <4 ps RMS target (4.83 ps measured close) |
| Phase margin | 70–72° | 
| Supply / process | 1.8 V / sky130 |

## Contents
- `gds/`     — the generated chip + block GDS
- `models/`  — SystemVerilog (pre/post-layout) + Real-Number (RNM) behavioral models of the PLL top
- `docs/`    — architecture, floorplan, interface, verification summary

## What is NOT here
The proprietary automated-layout engine that generated this is intentionally excluded. This repo ships
the **generated artifacts** (GDS, models, docs) so anyone can use, simulate, or fabricate the PLL.

## License
Open-source (see LICENSE). GDS/models provided as-is.
