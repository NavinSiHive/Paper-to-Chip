# models/
Behavioral models of the PLL top cell — drop-in, same interface:

- `pll_top_prelayout.sv` — ideal/paper-parameter SystemVerilog behavioral model.
- `pll_top_postlayout.sv` — measured-close model (4.83 ps RMS jitter, corner hooks).
- `pll_top_rnm.sv` — Real-Number Model (SV `real`): VCO frequency evolves continuously with the control voltage (AMS).
- `tb_pll_top.sv` — self-checking testbench (lock 270 MHz, ÷M=10, jitter).

Run: `./run_models.sh` (iverilog + Verilator) → ALL_PASS.

## License
MIT (see the repository `LICENSE`).
