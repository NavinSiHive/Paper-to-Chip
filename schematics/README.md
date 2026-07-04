# schematics/
Design schematics of the PLL.
- `*.sch` — xschem schematics of the analog design blocks (PLLTOP, DualCtrlVCO, VCO_REG, VCORegulator,
  LPFPLL, BIASCP, BIASGM). Open with **xschem** + the sky130A device library.
- `PLLTOP4_D40.spice` — the analog PLL macro, transistor-level SPICE (LVS-clean netlist).
- `pll_dcc.gatelevel.v` — the digital control core, gate-level netlist (sky130 std cells).
