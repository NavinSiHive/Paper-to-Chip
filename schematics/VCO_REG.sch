v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {VCO_REG   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {VCORegulator.sym} 0 0 0 0 {name=X_reg}
N 0 130 0 176 {}
N -130 -60 -176 -60 {}
N 130 -60 176 -60 {}
N -130 20 -212 20 {}
N 0 -130 0 -176 {}
N 130 20 212 20 {}
T {X_reg} -16 130 0 0 0.11 0.11 {layer=13}
C {DualCtrlVCO.sym} 518 0 0 0 {name=X_vco}
N 518 130 518 176 {}
N 364 -60 318 -60 {}
N 672 -60 718 -60 {}
N 364 20 282 20 {}
N 672 20 754 20 {}
T {X_vco} 502 130 0 0 0.11 0.11 {layer=13}
N 0 176 0 274 {}
N 518 176 518 274 {}
N -176 -60 -176 -170 {}
N 176 -60 176 -234 {}
N -212 20 -212 -298 {}
N 0 -176 0 -658 {}
N 212 20 212 -362 {}
N 318 -60 318 -362 {}
N 718 -60 718 -426 {}
N 282 20 282 -490 {}
N 754 20 754 -554 {}
C {devices/ipin.sym} -300 -658 0 0 {name=ip1 lab=VDD}
C {devices/ipin.sym} -300 274 0 0 {name=ip2 lab=VSS}
C {devices/ipin.sym} -300 -362 0 0 {name=ip3 lab=V_VCO}
C {devices/ipin.sym} -300 -170 0 0 {name=ip4 lab=PG}
C {devices/ipin.sym} -300 -234 0 0 {name=ip5 lab=VIN}
C {devices/ipin.sym} -300 -298 0 0 {name=ip6 lab=IB}
C {devices/ipin.sym} -300 -426 0 0 {name=ip7 lab=VCOARSE}
C {devices/ipin.sym} -300 -490 0 0 {name=ip8 lab=VFINE}
C {devices/opin.sym} -300 -554 0 0 {name=op9 lab=VCO_CLK}
N -316 274 534 274 {lab=VSS}
N -316 -170 -160 -170 {}
N -316 -234 192 -234 {}
N -316 -298 -196 -298 {}
N -316 -658 16 -658 {lab=VDD}
N -316 -362 334 -362 {}
N -316 -426 734 -426 {}
N -316 -490 298 -490 {}
N -316 -554 770 -554 {}
