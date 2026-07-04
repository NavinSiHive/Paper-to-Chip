# reports/
Signoff reports.

- `drc/` — design-rule-check reports (chip + formal DRC-0 summary).
- `lvs/` — layout-vs-schematic reports (chip + macros).
- `sta_*` — multi-corner static timing (digital core, 100–300 MHz clean).

- `lock_detect/` — digital PLL lock-detect verification (CK_DIV40 frequency detector): report, design, and full 76-check regression log. **Staged/pending integration** (not yet in the shipped GDS).
