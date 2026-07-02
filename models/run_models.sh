#!/usr/bin/env bash
#============================================================================
# run_models.sh -- compile + run all three PLL top-cell models under Icarus
# Verilog and print each model's ALL_PASS / per-check result.
#
# Usage:   ./run_models.sh            (iverilog, default)
#          ./run_models.sh verilator  (also cross-check with Verilator --timing)
#============================================================================
set -u
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"

# put the EDA tools on PATH if present
EDA=/home/navinm/eda-tools/mamba/envs/eda/bin
[ -d "$EDA" ] && export PATH="$EDA:$PATH"

MODELS="prelayout postlayout rnm"
TMP="$(mktemp -d)"
rc_all=0

echo "############ Icarus Verilog (iverilog -g2012) ############"
for M in $MODELS; do
    EXTRA=""
    [ "$M" = "rnm" ] && EXTRA="-D RNM_PROBES"
    iverilog -g2012 -o "$TMP/$M.vvp" -D "MODEL_NAME=\"$M\"" $EXTRA \
        "pll_top_$M.sv" tb_pll_top.sv
    if [ $? -ne 0 ]; then echo "  [$M] COMPILE FAILED"; rc_all=1; continue; fi
    OUT="$(vvp "$TMP/$M.vvp" 2>&1)"
    # print the report body (everything from the banner through the RESULT line)
    echo "$OUT" | grep -vE '\$finish|^$'
    echo "$OUT" | grep -q "ALL_PASS" || rc_all=1
    echo ""
done

if [ "${1:-}" = "verilator" ]; then
    echo "############ Verilator 5.x (--binary --timing) ############"
    VW="-Wno-UNUSEDSIGNAL -Wno-UNUSEDPARAM -Wno-BLKSEQ -Wno-WIDTHTRUNC \
        -Wno-VARHIDDEN -Wno-DECLFILENAME -Wno-ZERODLY -Wno-PINCONNECTEMPTY"
    for M in $MODELS; do
        EXTRA=""
        [ "$M" = "rnm" ] && EXTRA="-DRNM_PROBES"
        rm -rf "$TMP/vb_$M"
        verilator --binary --timing -j 2 -sv $VW \
            -DMODEL_NAME=\"$M\" $EXTRA --top-module tb_pll_top \
            --Mdir "$TMP/vb_$M" -o vsim "pll_top_$M.sv" tb_pll_top.sv \
            > "$TMP/vb_$M.log" 2>&1
        if [ ! -x "$TMP/vb_$M/vsim" ]; then
            echo "  [$M] VERILATOR BUILD FAILED (see $TMP/vb_$M.log)"; rc_all=1; continue
        fi
        "$TMP/vb_$M/vsim" 2>&1 | grep -E "RESULT"
    done
fi

echo "=========================================================="
[ $rc_all -eq 0 ] && echo "  OVERALL: ALL MODELS ALL_PASS" || echo "  OVERALL: FAILURES PRESENT"
rm -rf "$TMP"
exit $rc_all
