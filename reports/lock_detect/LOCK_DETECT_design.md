# PLL Lock Detect — design, interface, and verification

Digital lock detection for the PLL chip, built to work with **what the analog `PLLTOP_D40` already
exposes** — no analog change. Status: **RTL + regression complete (3 suites, 76 checks, all pass),
chip-level LOCK-pad + SPI path verified; integration into `pll_dcc` is prepared (`pll_dcc_freqlock.v`)
but HELD** until the parallel PLLTOP work is finalized.

## 1. What the detector needs from analog PLLTOP
| Approach | Needs from PLLTOP | Available today? |
|---|---|---|
| **Frequency-counter (CHOSEN)** | `CK_DIV40` (= F_VCO/40) + `REFCLK` | ✅ yes — both already wired to the core |
| PFD UP/DN (phase-accurate) | PFD `up`,`dn` + a slow VCO clock | ❌ not exposed (would touch analog) |
| Analog lock flag | a `LOCK` output from the macro | ❌ not present (would touch analog) |

We use the **frequency-counter** approach → **zero analog changes**. The old `pll_lock_detect.v`
(PFD UP/DN based) cannot function here — its `up_i`/`dn_i` are tied to 0 in the chip, which makes it a
**false-positive timer** (asserts `locked` unconditionally after `lockw` ref cycles). The new
`pll_lock_detect_freq.v` replaces it.

## 2. Principle & what frequencies it detects
In lock, `F_VCO = M·F_ref` (M = 10, the analog FB_DIV), so
```
   CK_DIV40 = F_VCO/40 = (M/40)·F_ref = F_ref / 4          (frequency-INDEPENDENT ratio)
```
Over a window of **WIN** reference cycles we count `CK_DIV40` rising edges; locked ⇒ count = **EXP =
WIN·M/40** (WIN/4 for M=10). A window is *good* if the count is within **±TOL**. **Both edges use
hysteresis:** after **K** (=`lockw`) consecutive good windows → `locked`; and only after **KBAD**
consecutive *bad* windows does lock drop + set sticky `lock_lost` (KBAD default 2) — so in-band jitter
near the tolerance edge cannot cause lock chatter.

- **Range:** because the ratio `CK_DIV40/REFCLK = 1/4` is constant, **one setting covers the entire
  100–500 MHz VCO range** (F_ref 10–50 MHz → CK_DIV40 2.5–12.5 MHz). REFCLK oversamples CK_DIV40 4× at
  all points, so edge detection is always clean.
- **Resolution / lock band:** set by WIN and TOL. Production default **WIN=256, EXP=64, TOL=3** → lock
  band ≈ ±4.7 %; e.g. WIN=1024 tightens to ~±1 %. Fully tunable, `lockw` (K) is CSR-configurable.
- **Detects:** *frequency* lock (F_VCO = M·F_ref). This is the standard, sufficient lock indicator; it
  does not certify sub-cycle *phase* lock (that would need PFD UP/DN).
- **Lock time:** ≈ (K+1)·WIN ref cycles — e.g. K=8, WIN=256 @ 27 MHz ≈ 85 µs.

## 3. How the lock signal is reported
**From the digital core (`pll_dcc`):**
- `locked` and `lock_lost` → **SPI-readable CSR status bits** (`st_locked`, `st_lock_lost`).
- `locked` → the core output port `lock_o`.
- `lock_lost` is **sticky**, cleared by the CSR W1C `lock_lost_clr`.

**From the chip (`pll_chip`):** `lock_o` → **`LOCK` gpio_out pad** (level: high = locked). So lock is
observable two ways off-chip: the **`LOCK` pin** and the **SPI status register**. *(This report path
already exists in the chip and is correct — only the detection logic changed.)*

## 4. What it takes to implement (all digital, no analog touch)
1. **`rtl/pll_lock_detect_freq.v`** — the detector (done). Runs entirely in the REFCLK domain; only
   single-bit `locked`/`lock_lost` cross to the core via `sync2`.
2. **`pll_dcc.v` swap (prepared, HELD):** replace the UP/DN instance with the freq instance — a ~3-line
   change (see §6). `pll_clk_i` already carries `CK_DIV40`, so `div_clk = pll_clk_i`.
3. No pad, CSR, or chip-netlist change needed (`lock_o`/`LOCK`/status already present).

## 5. Verification — doable and regression-clean
**Functional regression — DONE, 3 suites / 76 checks all pass** (`signoff/run_lock_regress.sh`, iverilog):
- **`ld_clean` (13):** lock @ REF/4 · reject too-fast (REF/3) · reject too-slow (REF/6) · lose-lock +
  sticky on drift · clear · re-lock · **frequency-invariance** (2× abs freq) · enable-gating ·
  **randomized in-band jitter soak** (no chatter) · large-perturbation unlock · **production WIN=256**.
- **`ld_stress` (53):** reset mid-lock · stuck-low/stuck-high CK_DIV40 · over-count (CK_DIV40=REF, REF/2)
  · K=0 · KBAD hysteresis exactness (single bad ≠ unlock, sustained = unlock) · sticky-clear timing ·
  enable glitching · **40 randomized directed sweeps** (freq class ⇒ expected lock state).
- **`dcc_lock` (10) — CHIP-LEVEL** through the integrated core `pll_dcc_freqlock`: SPI-configure →
  drive synthetic CK_DIV40 → verify **both** the **`LOCK` pad** and the **SPI STATUS** register across
  lock / drift-to-lost (sticky) / SPI-W1C-clear / re-lock / PLL-disable, plus SPI `ID`=0xA5 sanity.

Async CK_DIV40↔REF phase is arbitrary throughout, so phase-independence is exercised implicitly.

**Bug found (by `dcc_lock`) — SPI cold-start, in the existing CSR (not the detector):** the SPI slave
clears `bit_cnt`/`shreg` only on a CS **rising** edge, so the *first* frame after cold power-up (CS
idle-high, no prior edge) is unreliable; it self-heals after one CS de-assertion. Workaround (used by the
TB, and normal master behaviour): pulse CS once before the first frame. **Recommended fix at integration:**
also clear `bit_cnt`/`shreg` on `spi_rst_n` in `pll_spi_csr.v` (add it to the reset path) so the first
frame is reliable without a dummy CS pulse. The lock detector itself had **no bugs**.

**Corner / regression plan (for integration):**
- **PVT (ss/tt/ff):** detector runs on slow clocks (REF 27 MHz, CK_DIV40 6.75 MHz) → folds into the
  existing multi-corner STA; closes with large margin (no new fast paths).
- **CDC:** `sync2` (2-flop) on CK_DIV40→REF and REF→core; `pulse_sync` for the clear. Metastability-safe;
  ±1 boundary-sampling absorbed by TOL.
- **Gate-level:** re-run `run_lock_regress.sh` intent on the post-synthesis netlist.
- **Chip-level:** extend the chip TB to read `LOCK` pad + SPI status through a lock/unlock sweep.
- **Randomized soak (planned):** random small perturbations of F_VCO within/around the lock band to
  confirm no chatter (add hysteresis via K if needed).

## 6. Integration snippet (apply when PLLTOP is unblocked — NOT yet applied)
In `pll_dcc.v`, replace the `pll_lock_detect u_lock (...)` block with:
```verilog
    // CK_DIV40 arrives on pll_clk_i; REFCLK is the core clock.
    pll_lock_detect_freq #(.WIN(256), .EXP(64), .TOL(3)) u_lock (
        .ref_clk(refclk_i), .ref_rst_n(core_rst_n),
        .core_clk(core_clk), .core_rst_n(core_rst_n),
        .div_clk(pll_clk_i),                 // = CK_DIV40 (F_VCO/40)
        .lock_en(lock_en), .lockw(c_lockw), .lock_lost_clr(c_lock_lost_clr),
        .locked(locked), .lock_lost(lock_lost)
    );
```
`up_i`/`dn_i` become unused (leave tied 0 or drop from the port list at the next interface revision).
Everything downstream (`lock_o`, `LOCK` pad, CSR status, reset-seq auto-relock on `lock_lost`) is
unchanged.

This exact swap is already realized in **`rtl/pll_dcc_freqlock.v`** (a copy of `pll_dcc` with only the
detector changed) so nothing has to be edited in the held `pll_dcc.v` yet — the chip-level TB
(`tb/tb_pll_dcc_lock.v`) runs against it today. At integration, either adopt `pll_dcc_freqlock.v` or
apply the 3-line swap to `pll_dcc.v`, and (recommended) apply the SPI cold-start fix above.

## 7. Files
| File | Role |
|---|---|
| `rtl/pll_lock_detect_freq.v` | the detector (dual hysteresis, REFCLK-domain) |
| `rtl/pll_dcc_freqlock.v` | prepared integrated core (the swap) — chip-level TB target |
| `tb/tb_lock_detect_freq.v` | unit functional regression (13) |
| `tb/tb_lock_detect_stress.v` | adversarial/edge + randomized (53) |
| `tb/tb_pll_dcc_lock.v` | chip-level LOCK-pad + SPI regression (10) |
| `signoff/run_lock_regress.sh` | runs all three suites → `REGRESS: ALL SUITES PASS` |
