v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {VCO_LS   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=XMP1
L=0.15
W=6.0
nf=1
model=pfet_01v8
spiceprefix=X}
N 20 30 20 76 {}
N -20 0 -66 0 {}
N 20 -30 20 -76 {}
N 20 0 66 0 {}
T {XMP1} -16 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 202 0 0 0 {name=XMN1
L=0.15
W=3.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 222 -30 222 -76 {}
N 182 0 136 0 {}
N 222 30 222 76 {}
N 222 0 268 0 {}
T {XMN1} 186 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 404 0 0 0 {name=XMP2
L=0.15
W=12.0
nf=1
model=pfet_01v8
spiceprefix=X}
N 424 30 424 76 {}
N 384 0 338 0 {}
N 424 -30 424 -76 {}
N 424 0 470 0 {}
T {XMP2} 388 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 606 0 0 0 {name=XMN2
L=0.15
W=6.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 626 -30 626 -76 {}
N 586 0 540 0 {}
N 626 30 626 76 {}
N 626 0 672 0 {}
T {XMN2} 590 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 808 0 0 0 {name=XMP3
L=0.15
W=24.0
nf=1
model=pfet_01v8
spiceprefix=X}
N 828 30 828 76 {}
N 788 0 742 0 {}
N 828 -30 828 -76 {}
N 828 0 874 0 {}
T {XMP3} 792 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 1010 0 0 0 {name=XMN3
L=0.15
W=12.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 1030 -30 1030 -76 {}
N 990 0 944 0 {}
N 1030 30 1030 76 {}
N 1030 0 1076 0 {}
T {XMN3} 994 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 1212 0 0 0 {name=XMP4
L=0.15
W=48.0
nf=1
model=pfet_01v8
spiceprefix=X}
N 1232 30 1232 76 {}
N 1192 0 1146 0 {}
N 1232 -30 1232 -76 {}
N 1232 0 1278 0 {}
T {XMP4} 1196 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 1414 0 0 0 {name=XMN4
L=0.15
W=24.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 1434 -30 1434 -76 {}
N 1394 0 1348 0 {}
N 1434 30 1434 76 {}
N 1434 0 1480 0 {}
T {XMN4} 1398 76 0 0 0.11 0.11 {layer=13}
N 222 -76 222 -116 {}
N 338 0 338 -116 {}
N 540 0 540 -116 {}
N -66 0 -66 -180 {}
N 136 0 136 -180 {}
N 20 -76 20 -476 {}
N 66 0 66 -476 {}
N 424 -76 424 -476 {}
N 470 0 470 -476 {}
N 828 -76 828 -476 {}
N 874 0 874 -476 {}
N 1232 -76 1232 -476 {}
N 1278 0 1278 -476 {}
N 222 76 222 220 {}
N 268 0 268 220 {}
N 626 76 626 220 {}
N 672 0 672 220 {}
N 1030 76 1030 220 {}
N 1076 0 1076 220 {}
N 1434 76 1434 220 {}
N 1480 0 1480 220 {}
N 626 -76 626 -244 {}
N 742 0 742 -244 {}
N 944 0 944 -244 {}
N 1030 -76 1030 -308 {}
N 1146 0 1146 -308 {}
N 1348 0 1348 -308 {}
N 1434 -76 1434 -372 {}
N 20 76 54 76 {}
N 54 76 54 -116 {}
N 424 76 458 76 {}
N 458 76 458 -244 {}
N 828 76 862 76 {}
N 862 76 862 -308 {}
N 1232 76 1266 76 {}
N 1266 76 1266 -372 {}
C {devices/ipin.sym} -300 -476 0 0 {name=ip1 lab=VDD}
C {devices/ipin.sym} -300 220 0 0 {name=ip2 lab=VSS}
C {devices/opin.sym} -300 -180 0 0 {name=op3 lab=VCO_CLK}
C {devices/opin.sym} -300 -372 0 0 {name=op4 lab=PLL_CLK}
N 38 -116 556 -116 {}
N -316 -180 152 -180 {}
N -316 -476 1294 -476 {lab=VDD}
N -316 220 1496 220 {lab=VSS}
N 442 -244 960 -244 {}
N 846 -308 1364 -308 {}
N -316 -372 1450 -372 {}
