# cdl/
Device-level CDL / schematic netlists used for LVS (layout-vs-schematic).

- `PLLTOP_D40.cdl` — analog PLL macro, transistor-level (sky130 primitive devices).
- `pll_dcc.gl.v` — digital core gate-level netlist (the LVS schematic; std-cell subckts resolve from the sky130 `sky130_fd_sc_hd` CDL in the PDK).

The standard-cell and IO-pad CDLs are provided by the sky130 PDK (`$PDK_ROOT/sky130A/libs.ref/*/cdl/`) and are not duplicated here.
