v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {LPFPLL   (auto · no-stub)} -300 -680 0 0 0.4 0.4 {layer=4}
C {sky130_fd_pr/nfet_01v8.sym} 0 0 0 0 {name=XMN1
L=0.15
W=1.0
nf=1
model=nfet_01v8
spiceprefix=X}
N 20 -30 20 -76 {}
N -20 0 -66 0 {}
N 20 30 20 76 {}
N 20 0 66 0 {}
T {XMN1} -16 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 202 0 0 0 {name=XR1
model=res_high_po_1p41
L=110.805
mult=1
spiceprefix=X}
N 202 -30 202 -76 {}
N 202 30 202 76 {}
N 182 0 136 0 {}
T {XR1} 186 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 404 0 0 0 {name=XR2
model=res_high_po_1p41
L=2.130
mult=1
spiceprefix=X}
N 404 -30 404 -76 {}
N 404 30 404 76 {}
N 384 0 338 0 {}
T {XR2} 388 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 606 0 0 0 {name=XR1da
model=res_high_po_1p41
L=36.935
mult=1
spiceprefix=X}
N 606 -30 606 -76 {}
N 606 30 606 76 {}
N 586 0 540 0 {}
T {XR1da} 590 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/res_high_po_1p41.sym} 808 0 0 0 {name=XR1db
model=res_high_po_1p41
L=36.935
mult=1
spiceprefix=X}
N 808 -30 808 -76 {}
N 808 30 808 76 {}
N 788 0 742 0 {}
T {XR1db} 792 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1010 0 0 0 {name=XC2
model=cap_mim_m3_1
W=28.285
L=28.285
MF=1
spiceprefix=X}
N 1010 -30 1010 -76 {}
N 1010 30 1010 76 {}
T {XC2} 994 76 0 0 0.11 0.11 {layer=13}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1212 0 0 0 {name=XCo
model=cap_mim_m3_1
W=22.36
L=22.36
MF=1
spiceprefix=X}
N 1212 -30 1212 -76 {}
N 1212 30 1212 76 {}
T {XCo} 1196 76 0 0 0.11 0.11 {layer=13}
N -66 0 -66 284 {}
N 20 76 20 284 {}
N 66 0 66 284 {}
N 136 0 136 284 {}
N 338 0 338 284 {}
N 606 76 606 284 {}
N 540 0 540 284 {}
N 808 76 808 284 {}
N 742 0 742 284 {}
N 202 -76 202 -116 {}
N 404 -76 404 -116 {}
N 202 76 202 116 {}
N 404 76 404 180 {}
N 1212 76 1212 180 {}
N 20 -76 54 -76 {}
N 54 -76 54 284 {}
N 606 -76 640 -76 {}
N 640 -76 640 284 {}
N 808 -76 842 -76 {}
N 842 -76 842 284 {}
N 1010 -76 1044 -76 {}
N 1044 -76 1044 284 {}
N 1212 -76 1246 -76 {}
N 1246 -76 1246 284 {}
N 1010 76 976 76 {}
N 976 76 976 -116 {}
C {devices/ipin.sym} -300 284 0 0 {name=ip1 lab=VSS}
C {devices/ipin.sym} -300 -116 0 0 {name=ip2 lab=V_PUMP}
C {devices/ipin.sym} -300 180 0 0 {name=ip3 lab=V_REG}
C {devices/ipin.sym} -300 116 0 0 {name=ip4 lab=n_c1}
N -316 284 1262 284 {lab=VSS}
N -316 -116 992 -116 {}
N -316 116 218 116 {}
N -316 180 1228 180 {}
