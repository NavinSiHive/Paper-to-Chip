v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PLLTOP   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {PLLCORE.sym} 0 0 0 0 {name=X_core}
N 0 -330 0 -376 {}
N 0 330 0 376 {}
N -166 -260 -212 -260 {}
N 166 -260 212 -260 {}
N -166 -180 -248 -180 {}
N 166 -180 248 -180 {}
N -166 -100 -284 -100 {}
N 166 -100 284 -100 {}
N -166 -20 -320 -20 {}
N 166 -20 320 -20 {}
N -166 60 -356 60 {}
N 166 60 356 60 {}
N -166 140 -392 140 {}
N 166 140 392 140 {}
N -166 220 -428 220 {}
T {X_core} -16 330 0 0 0.11 0.11 {layer=13}
C {CAPBANK_VVCO.sym} 674 0 0 0 {name=X_cvvco}
N 674 90 674 136 {}
N 544 0 498 0 {}
T {X_cvvco} 658 90 0 0 0.11 0.11 {layer=13}
C {CAPBANK_GM.sym} 1120 0 0 0 {name=X_cgm}
N 1120 90 1120 136 {}
N 966 0 920 0 {}
T {X_cgm} 1104 90 0 0 0.11 0.11 {layer=13}
C {CAPBANK_C1.sym} 1554 0 0 0 {name=X_cc1}
N 1554 90 1554 136 {}
N 1436 0 1390 0 {}
T {X_cc1} 1538 90 0 0 0.11 0.11 {layer=13}
N 0 -376 0 -1242 {}
N 0 376 0 474 {}
N 674 136 674 474 {}
N 1120 136 1120 474 {}
N 1554 136 1554 474 {}
N -212 -260 -212 -370 {}
N 212 -260 212 -434 {}
N -248 -180 -248 -498 {}
N 248 -180 248 -562 {}
N -284 -100 -284 -626 {}
N 284 -100 284 -690 {}
N -320 -20 -320 -754 {}
N 320 -20 320 -818 {}
N -356 60 -356 -882 {}
N 356 60 356 -946 {}
N 920 0 920 -946 {}
N -392 140 -392 -1010 {}
N 498 0 498 -1010 {}
N 392 140 392 -1074 {}
N 1390 0 1390 -1074 {}
N -428 220 -428 -1138 {}
C {devices/ipin.sym} -300 -1242 0 0 {name=ip1 lab=VDD}
C {devices/ipin.sym} -300 474 0 0 {name=ip2 lab=VSS}
C {devices/ipin.sym} -300 -370 0 0 {name=ip3 lab=VFINE}
C {devices/ipin.sym} -300 -434 0 0 {name=ip4 lab=REFCLK}
C {devices/ipin.sym} -300 -498 0 0 {name=ip5 lab=V_REF}
C {devices/ipin.sym} -300 -562 0 0 {name=ip6 lab=VREG_REF}
C {devices/ipin.sym} -300 -626 0 0 {name=ip7 lab=IBCP}
C {devices/ipin.sym} -300 -690 0 0 {name=ip8 lab=IBREG}
C {devices/ipin.sym} -300 -754 0 0 {name=ip9 lab=PG}
C {devices/ipin.sym} -300 -818 0 0 {name=ip10 lab=VREF}
C {devices/ipin.sym} -300 -882 0 0 {name=ip11 lab=IB}
C {devices/opin.sym} -300 -1138 0 0 {name=op12 lab=PLL_CLK}
N -332 -1242 16 -1242 {lab=VDD}
N -332 474 1570 474 {lab=VSS}
N -332 -370 -196 -370 {}
N -332 -434 228 -434 {}
N -332 -498 -232 -498 {}
N -332 -562 264 -562 {}
N -332 -626 -268 -626 {}
N -332 -690 300 -690 {}
N -336 -754 -268 -754 {}
N -332 -818 336 -818 {}
N -372 -882 -268 -882 {}
N 340 -946 936 -946 {}
N -408 -1010 514 -1010 {}
N 376 -1074 1406 -1074 {}
N -444 -1138 -268 -1138 {}
