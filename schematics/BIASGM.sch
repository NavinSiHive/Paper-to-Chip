v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {BIASGM   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=XMPD3
L=0.5
W=8
nf=1
model=pfet_01v8
spiceprefix=X}
N 20 30 20 76 {}
N -20 0 -66 0 {}
N 20 -30 20 -76 {}
N 20 0 66 0 {}
T {XMPD3} -16 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_0p35.sym} 202 0 0 0 {name=XRB3
model=res_high_po_0p35
L=68
mult=1
spiceprefix=X}
N 202 -30 202 -76 {}
N 202 30 202 76 {}
N 182 0 136 0 {}
T {XRB3} 186 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 404 0 0 0 {name=XMPO3
L=1
W=1
nf=1
model=pfet_01v8
spiceprefix=X}
N 424 30 424 76 {}
N 384 0 338 0 {}
N 424 -30 424 -76 {}
N 424 0 470 0 {}
T {XMPO3} 388 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 606 0 0 0 {name=XMND
L=0.5
W=8
nf=1
model=nfet_01v8
spiceprefix=X}
N 626 -30 626 -76 {}
N 586 0 540 0 {}
N 626 30 626 76 {}
N 626 0 672 0 {}
T {XMND} 590 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 808 0 0 0 {name=XMNO
L=8
W=1.5
nf=1
model=nfet_01v8
spiceprefix=X}
N 828 -30 828 -76 {}
N 788 0 742 0 {}
N 828 30 828 76 {}
N 828 0 874 0 {}
T {XMNO} 792 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 1010 0 0 0 {name=XMPD4
L=2
W=4
nf=1
model=pfet_01v8
spiceprefix=X}
N 1030 30 1030 76 {}
N 990 0 944 0 {}
N 1030 -30 1030 -76 {}
N 1030 0 1076 0 {}
T {XMPD4} 994 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 1212 0 0 0 {name=XMPO4
L=2
W=4
nf=1
model=pfet_01v8
spiceprefix=X}
N 1232 30 1232 76 {}
N 1192 0 1146 0 {}
N 1232 -30 1232 -76 {}
N 1232 0 1278 0 {}
T {XMPO4} 1196 76 0 0 0.11 0.11 {layer=13}
N -66 0 -66 -116 {}
N 202 -76 202 -116 {}
N 338 0 338 -116 {}
N 20 -76 20 -348 {}
N 66 0 66 -348 {}
N 424 -76 424 -348 {}
N 470 0 470 -348 {}
N 1030 -76 1030 -348 {}
N 1076 0 1076 -348 {}
N 1232 -76 1232 -348 {}
N 1278 0 1278 -348 {}
N 202 76 202 220 {}
N 136 0 136 220 {}
N 626 76 626 220 {}
N 672 0 672 220 {}
N 828 76 828 220 {}
N 874 0 874 220 {}
N 626 -76 626 -180 {}
N 540 0 540 -180 {}
N 742 0 742 -180 {}
N 828 -76 828 -244 {}
N 944 0 944 -244 {}
N 1146 0 1146 -244 {}
N 1232 76 1232 116 {}
N 20 76 54 76 {}
N 54 76 54 -116 {}
N 424 76 458 76 {}
N 458 76 458 -180 {}
N 1030 76 1064 76 {}
N 1064 76 1064 -244 {}
C {devices/ipin.sym} -300 -348 0 0 {name=ip1 lab=VDD}
C {devices/ipin.sym} -300 220 0 0 {name=ip2 lab=VSS}
C {devices/ipin.sym} -300 116 0 0 {name=ip3 lab=IB}
N -82 -116 354 -116 {}
N -316 -348 1294 -348 {lab=VDD}
N -316 220 890 220 {lab=VSS}
N 442 -180 758 -180 {}
N 812 -244 1162 -244 {}
N -316 116 1248 116 {}
