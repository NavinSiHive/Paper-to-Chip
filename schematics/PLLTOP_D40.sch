v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {PLLTOP_D40   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {PLLTOP.sym} 0 0 0 0 {name=X_pll}
N 0 -250 0 -296 {}
N 0 250 0 296 {}
N -166 -180 -212 -180 {}
N 166 -180 212 -180 {}
N -166 -100 -248 -100 {}
N 166 -100 248 -100 {}
N -166 -20 -284 -20 {}
N 166 -20 284 -20 {}
N -166 60 -320 60 {}
N 166 60 320 60 {}
N -166 140 -356 140 {}
N 166 140 356 140 {}
T {X_pll} -16 250 0 0 0.11 0.11 {layer=13}
C {clkdiv40.sym} 638 0 0 0 {name=X_div40}
N 472 0 426 0 {}
N 638 -90 638 -136 {}
N 638 90 638 136 {}
N 804 0 850 0 {}
T {X_div40} 622 90 0 0 0.11 0.11 {layer=13}
N 0 -296 0 -1034 {}
N 638 -136 638 -1034 {}
N 0 296 0 394 {}
N 638 136 638 394 {}
N -212 -180 -212 -290 {}
N 212 -180 212 -354 {}
N -248 -100 -248 -418 {}
N 248 -100 248 -482 {}
N -284 -20 -284 -546 {}
N 284 -20 284 -610 {}
N -320 60 -320 -674 {}
N 320 60 320 -738 {}
N -356 140 -356 -802 {}
N 356 140 356 -866 {}
N 426 0 426 -866 {}
N 850 0 850 -930 {}
C {devices/ipin.sym} -300 -1034 0 0 {name=ip1 lab=VDD}
C {devices/ipin.sym} -300 394 0 0 {name=ip2 lab=VSS}
C {devices/ipin.sym} -300 -290 0 0 {name=ip3 lab=VFINE}
C {devices/ipin.sym} -300 -354 0 0 {name=ip4 lab=REFCLK}
C {devices/ipin.sym} -300 -418 0 0 {name=ip5 lab=V_REF}
C {devices/ipin.sym} -300 -482 0 0 {name=ip6 lab=VREG_REF}
C {devices/ipin.sym} -300 -546 0 0 {name=ip7 lab=IBCP}
C {devices/ipin.sym} -300 -610 0 0 {name=ip8 lab=IBREG}
C {devices/ipin.sym} -300 -674 0 0 {name=ip9 lab=PG}
C {devices/ipin.sym} -300 -738 0 0 {name=ip10 lab=VREF}
C {devices/ipin.sym} -300 -802 0 0 {name=ip11 lab=IB}
C {devices/ipin.sym} -300 -930 0 0 {name=ip12 lab=CK_DIV40}
N -332 -1034 654 -1034 {lab=VDD}
N -332 394 654 394 {lab=VSS}
N -332 -290 -196 -290 {}
N -332 -354 228 -354 {}
N -332 -418 -232 -418 {}
N -332 -482 264 -482 {}
N -332 -546 -268 -546 {}
N -332 -610 300 -610 {}
N -336 -674 -268 -674 {}
N -332 -738 336 -738 {}
N -372 -802 -268 -802 {}
N 340 -866 442 -866 {}
N -332 -930 866 -930 {}
