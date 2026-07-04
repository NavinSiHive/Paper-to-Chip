v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {DualCtrlVCO_stage   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=XM1
L=0.4
W=10.0
nf=1
model=pfet_01v8
spiceprefix=X}
N 20 30 20 76 {}
N -20 0 -66 0 {}
N 20 -30 20 -76 {}
N 20 0 66 0 {}
T {XM1} -16 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 202 0 0 0 {name=XM2
L=0.15
W=6.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 222 -30 222 -76 {}
N 182 0 136 0 {}
N 222 30 222 76 {}
N 222 0 268 0 {}
T {XM2} 186 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 404 0 0 0 {name=XCV
L=0.2
W=0.5
nf=1
model=nfet_01v8
spiceprefix=X}
N 424 -30 424 -76 {}
N 384 0 338 0 {}
N 424 30 424 76 {}
N 424 0 470 0 {}
T {XCV} 388 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 606 0 0 0 {name=XM3
L=0.3
W=1.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 626 -30 626 -76 {}
N 586 0 540 0 {}
N 626 30 626 76 {}
N 626 0 672 0 {}
T {XM3} 590 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 808 0 0 0 {name=XM4
L=0.3
W=1.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 828 -30 828 -76 {}
N 788 0 742 0 {}
N 828 30 828 76 {}
N 828 0 874 0 {}
T {XM4} 792 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1010 0 0 0 {name=XCL
model=cap_mim_m3_1
W=4.5
L=4.5
MF=1
spiceprefix=X}
N 1010 -30 1010 -76 {}
N 1010 30 1010 76 {}
T {XCL} 994 76 0 0 0.11 0.11 {layer=13}
N 222 -76 222 -116 {}
N 424 -76 424 -116 {}
N 626 -76 626 -116 {}
N 540 0 540 -116 {}
N 1010 -76 1010 -116 {}
N -66 0 -66 -180 {}
N 20 -76 20 -244 {}
N 66 0 66 -244 {}
N 136 0 136 -308 {}
N 222 76 222 220 {}
N 268 0 268 220 {}
N 470 0 470 220 {}
N 672 0 672 220 {}
N 828 76 828 220 {}
N 874 0 874 220 {}
N 1010 76 1010 220 {}
N 338 0 338 116 {}
N 424 76 424 116 {}
N 828 -76 828 -372 {}
N 742 0 742 -372 {}
N 20 76 54 76 {}
N 54 76 54 -116 {}
N 626 76 660 76 {}
N 660 76 660 -372 {}
C {devices/ipin.sym} -300 -308 0 0 {name=ip1 lab=IN}
C {devices/opin.sym} -300 -116 0 0 {name=op2 lab=OUT}
C {devices/ipin.sym} -300 -180 0 0 {name=ip3 lab=VCOARSE}
C {devices/ipin.sym} -300 116 0 0 {name=ip4 lab=VFINE}
C {devices/ipin.sym} -300 -244 0 0 {name=ip5 lab=VREG}
C {devices/ipin.sym} -300 220 0 0 {name=ip6 lab=VSS}
N -316 -116 1026 -116 {}
N -316 -180 -50 -180 {}
N -316 -244 82 -244 {}
N -316 -308 152 -308 {}
N -316 220 1026 220 {lab=VSS}
N -316 116 440 116 {}
N 644 -372 844 -372 {}
