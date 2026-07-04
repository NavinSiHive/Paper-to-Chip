v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {BIASCP   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=XMPD1
L=0.5
W=16
nf=1
model=pfet_01v8
spiceprefix=X}
N 20 30 20 76 {}
N -20 0 -66 0 {}
N 20 -30 20 -76 {}
N 20 0 66 0 {}
T {XMPD1} -16 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 202 0 0 0 {name=XRB1
model=res_high_po_1p41
L=5.0
mult=1
spiceprefix=X}
N 202 -30 202 -76 {}
N 202 30 202 76 {}
N 182 0 136 0 {}
T {XRB1} 186 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 404 0 0 0 {name=XMPO1
L=0.5
W=16
nf=1
model=pfet_01v8
spiceprefix=X}
N 424 30 424 76 {}
N 384 0 338 0 {}
N 424 -30 424 -76 {}
N 424 0 470 0 {}
T {XMPO1} 388 76 0 0 0.11 0.11 {layer=13}
N -66 0 -66 -116 {}
N 202 -76 202 -116 {}
N 338 0 338 -116 {}
N 20 -76 20 -220 {}
N 66 0 66 -220 {}
N 424 -76 424 -220 {}
N 470 0 470 -220 {}
N 202 76 202 220 {}
N 136 0 136 220 {}
N 424 76 424 116 {}
N 20 76 54 76 {}
N 54 76 54 -116 {}
C {devices/ipin.sym} -300 -220 0 0 {name=ip1 lab=VDD}
C {devices/ipin.sym} -300 220 0 0 {name=ip2 lab=VSS}
C {devices/ipin.sym} -300 116 0 0 {name=ip3 lab=IBCP}
N -82 -116 354 -116 {}
N -316 -220 486 -220 {lab=VDD}
N -316 220 218 220 {lab=VSS}
N -316 116 440 116 {}
