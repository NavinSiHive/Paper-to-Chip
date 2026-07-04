# Lock-Detect Verification Report

**Scope:** digital PLL lock detection for the PLL chip — the `CK_DIV40` frequency-counter detector
(`pll_lock_detect_freq`), its integration into the digital core, and the chip-level `LOCK`-pad + SPI
report path. **Method:** self-checking RTL simulation (iverilog), 3 suites, **76 checks, all pass**.

> **Status: VERIFIED + STAGED, integration pending.** The detector and its regression are complete;
> physical integration is intentionally **held** until the analog top is finalized (incoming
> **`PLLTOP4_D40`**, which still exposes `CK_DIV40` as a top port — so this verification carries over
> unchanged). It is **not yet in the shipped chip GDS** in this kit; the shipped digital core currently
> ties the legacy PFD-UP/DN detector inputs to 0.

## What was checked
Run: `signoff/run_lock_regress.sh` → **`REGRESS: ALL SUITES PASS`** (log: `regression_log.txt`).

| Suite | Checks | Coverage |
|---|---:|---|
| `ld_clean` | 13 | lock @ CK_DIV40=REF/4 · reject too-fast (REF/3) · reject too-slow (REF/6) · lose-lock + sticky on drift · SPI-clear · re-lock · **frequency-invariance** (2× abs freq) · enable-gating · **randomized in-band jitter soak** (no chatter) · large-perturbation unlock · **production WIN=256** lock + reject |
| `ld_stress` | 53 | reset mid-lock · stuck-low / stuck-high CK_DIV40 · over-count (CK_DIV40=REF, REF/2) · K=0 · **KBAD unlock hysteresis** (single bad ≠ unlock, sustained = unlock) · sticky-clear timing · enable glitching · **40 randomized directed frequency sweeps** |
| `dcc_lock` | 10 | **chip-level** through integrated core: SPI-configure → drive synthetic CK_DIV40 → verify **`LOCK` pad AND SPI STATUS** across lock / drift-to-lost (sticky) / SPI-W1C-clear / re-lock / PLL-disable · SPI `ID`=0xA5 |

**Detector conclusions:** locks only when `CK_DIV40 = REFCLK/4` (F_VCO = M·F_ref, M=10) within a tunable
band; frequency-invariant across the whole 100–500 MHz VCO range; dual hysteresis prevents lock chatter;
lock reported off-chip via the **`LOCK` pin** and the **SPI STATUS register** (sticky `lock_lost`,
W1C-clear). **No bugs in the detector.**

## Bug found (and fixed) — SPI cold-start
The chip-level suite found a real robustness gap in the **existing** SPI CSR (not the detector): the
slave clears `bit_cnt`/`shreg` only on a CS **rising** edge, so the *first* frame after cold power-up is
unreliable (self-heals after one CS de-assertion). A verified one-line-class fix (async `spi_rst_n`
reset) is queued at `rtl/patches/spi_cold_start.patch` — with it, the chip TB passes the first frame
with no workaround.

## Reproduce
```bash
cd pll_chip && bash signoff/run_lock_regress.sh      # -> REGRESS: ALL SUITES PASS
```
Design + full plan (interface, frequencies, reporting, corner plan, integration snippet):
`docs/LOCK_DETECT.md`.
