# gds/
Generated GDSII layout.

- `pll_chip.gds[.gz]` — the full mixed-signal chip (top cell `pll_chip`, 1.90×1.90 mm).
- `PLLTOP4_D40.gds.gz` — the **delivered** analog PLL hard macro (PLL core + on-macro ÷40).
- `PLLTOP4.gds.gz` — the analog PLL core (no output divider).
- `PLLTOP_AnaCore.gds.gz` — the analog PLL **loop core** (PFD · CP · ring VCO · ÷M · regulator · bias; loop-filter caps external).
- `pll_dcc.gds[.gz]` — hardened digital control core.

Compressed (`.gz`) for the GitHub 100 MB file limit — `gunzip` to open in KLayout / magic.
