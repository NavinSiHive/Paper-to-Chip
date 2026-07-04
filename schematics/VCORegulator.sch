v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {VCORegulator   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {sky130_fd_pr/nfet_01v8.sym} 0 0 0 0 {name=XMBN
L=1.0
W=10.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 20 -30 20 -76 {}
N -20 0 -66 0 {}
N 20 30 20 76 {}
N 20 0 66 0 {}
T {XMBN} -16 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 202 0 0 0 {name=XMTL
L=1.0
W=10.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 222 -30 222 -76 {}
N 182 0 136 0 {}
N 222 30 222 76 {}
N 222 0 268 0 {}
T {XMTL} 186 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 404 0 0 0 {name=XMD0
L=2.0
W=20.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 424 -30 424 -76 {}
N 384 0 338 0 {}
N 424 30 424 76 {}
N 424 0 470 0 {}
T {XMD0} 388 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 606 0 0 0 {name=XMD1
L=2.0
W=20.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 626 -30 626 -76 {}
N 586 0 540 0 {}
N 626 30 626 76 {}
N 626 0 672 0 {}
T {XMD1} 590 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 808 0 0 0 {name=XML0
L=2.0
W=20.0
nf=1
model=pfet_01v8
spiceprefix=X}
N 828 30 828 76 {}
N 788 0 742 0 {}
N 828 -30 828 -76 {}
N 828 0 874 0 {}
T {XML0} 792 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 1010 0 0 0 {name=XML1
L=2.0
W=20.0
nf=1
model=pfet_01v8
spiceprefix=X}
N 1030 30 1030 76 {}
N 990 0 944 0 {}
N 1030 -30 1030 -76 {}
N 1030 0 1076 0 {}
T {XML1} 994 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/pfet_01v8.sym} 1212 0 0 0 {name=XMPASS
L=0.5
W=7.5
nf=1
model=pfet_01v8
spiceprefix=X
mult=32}
N 1232 30 1232 76 {}
N 1192 0 1146 0 {}
N 1232 -30 1232 -76 {}
N 1232 0 1278 0 {}
T {XMPASS} 1196 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/nfet_01v8.sym} 1414 0 0 0 {name=XMSINK
L=1.0
W=8.0
nf=1
model=nfet_01v8
spiceprefix=X
mult=40}
N 1434 -30 1434 -76 {}
N 1394 0 1348 0 {}
N 1434 30 1434 76 {}
N 1434 0 1480 0 {}
T {XMSINK} 1398 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 1616 0 0 0 {name=XRFbleed
model=res_high_po_1p41
L=32.40
mult=1
spiceprefix=X}
N 1616 -30 1616 -76 {}
N 1616 30 1616 76 {}
N 1596 0 1550 0 {}
T {XRFbleed} 1600 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 1818 0 0 0 {name=XRF1
model=res_high_po_1p41
L=62.990
mult=1
spiceprefix=X}
N 1818 -30 1818 -76 {}
N 1818 30 1818 76 {}
N 1798 0 1752 0 {}
T {XRF1} 1802 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 2020 0 0 0 {name=XRF2
model=res_high_po_1p41
L=62.990
mult=1
spiceprefix=X}
N 2020 -30 2020 -76 {}
N 2020 30 2020 76 {}
N 2000 0 1954 0 {}
T {XRF2} 2004 76 0 0 0.11 0.11 {layer=13}
N 20 -76 20 -116 {}
N -66 0 -66 -116 {}
N 136 0 136 -116 {}
N 20 76 20 220 {}
N 66 0 66 220 {}
N 222 76 222 220 {}
N 268 0 268 220 {}
N 470 0 470 220 {}
N 672 0 672 220 {}
N 1434 76 1434 220 {}
N 1480 0 1480 220 {}
N 1616 76 1616 220 {}
N 1550 0 1550 220 {}
N 1752 0 1752 220 {}
N 2020 76 2020 220 {}
N 1954 0 1954 220 {}
N 424 76 424 116 {}
N 626 76 626 116 {}
N 424 -76 424 -180 {}
N 742 0 742 -180 {}
N 944 0 944 -180 {}
N 338 0 338 -244 {}
N 2020 -76 2020 -244 {}
N 626 -76 626 -308 {}
N 1146 0 1146 -308 {}
N 1348 0 1348 -308 {}
N 540 0 540 -372 {}
N 828 -76 828 -540 {}
N 874 0 874 -540 {}
N 1030 -76 1030 -540 {}
N 1076 0 1076 -540 {}
N 1232 -76 1232 -540 {}
N 1278 0 1278 -540 {}
N 1434 -76 1434 -436 {}
N 1616 -76 1616 -436 {}
N 1818 -76 1818 -436 {}
N 222 -76 256 -76 {}
N 256 -76 256 116 {}
N 828 76 862 76 {}
N 862 76 862 -180 {}
N 1818 76 1852 76 {}
N 1852 76 1852 -244 {}
N 1030 76 1064 76 {}
N 1064 76 1064 -308 {}
N 1232 76 1266 76 {}
N 1266 76 1266 -436 {}
C {devices/ipin.sym} -300 220 0 0 {name=ip1 lab=VSS}
C {devices/ipin.sym} -300 -308 0 0 {name=ip2 lab=PG}
C {devices/ipin.sym} -300 -372 0 0 {name=ip3 lab=VIN}
C {devices/ipin.sym} -300 -116 0 0 {name=ip4 lab=IB}
C {devices/ipin.sym} -300 -540 0 0 {name=ip5 lab=VDD}
C {devices/ipin.sym} -300 -436 0 0 {name=ip6 lab=VCTRL}
N -316 -116 152 -116 {}
N -316 220 2036 220 {lab=VSS}
N 240 116 642 116 {}
N 408 -180 960 -180 {}
N 322 -244 2036 -244 {}
N -316 -308 1364 -308 {}
N -316 -372 556 -372 {}
N -316 -540 1294 -540 {lab=VDD}
N -316 -436 1834 -436 {}
