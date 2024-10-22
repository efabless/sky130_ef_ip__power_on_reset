v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Testbench for Cheetah v3 power-up
This is a basic test for default conditions
See cace/ directory for tests over corners and conditions} -290 -320 0 0 0.4 0.4 {}
N 280 10 440 10 {
lab=vss}
N 440 10 440 150 {
lab=vss}
N 280 30 310 30 {
lab=vss}
N 310 10 310 30 {
lab=vss}
N 280 50 330 50 {
lab=vss}
N 330 10 330 50 {
lab=vss}
N 280 -10 480 -10 {
lab=vccd0}
N 480 -10 480 90 {
lab=vccd0}
N 280 -30 620 -30 {
lab=vdda0}
N 280 -50 760 -50 {
lab=vddio}
N 440 150 760 150 {
lab=vss}
N 280 70 310 70 {
lab=por}
N 280 90 310 90 {
lab=porb}
N 280 110 310 110 {
lab=porb_h_0}
N 280 150 310 150 {
lab=vbg}
N 280 170 310 170 {
lab=vbgsc}
N 280 190 310 190 {
lab=vbgtc}
N 280 210 310 210 {
lab=gpio1_1}
N -600 -0 -530 0 {
lab=#net1}
N -600 40 -570 40 {
lab=#net2}
N -570 40 -570 70 {
lab=#net2}
N -570 70 -530 70 {
lab=#net2}
N -450 70 -410 70 {
lab=logic0}
N -450 -0 -410 0 {
lab=logic1}
N -60 50 -20 50 {
lab=logic1}
N -60 30 -20 30 {
lab=logic0}
N -60 10 -20 10 {
lab=logic0}
N -60 -10 -20 -10 {
lab=logic1}
N -60 -30 -20 -30 {
lab=logic0}
N -60 -50 -20 -50 {
lab=logic0}
N 760 -50 760 -20 {
lab=vddio}
N 620 -30 620 40 {
lab=vdda0}
N 620 100 620 150 {
lab=vss}
N 760 40 760 150 {
lab=vss}
N 280 130 310 130 {
lab=porb_h_1}
C {sky130_ef_ip__power_on_reset.sym} 130 70 0 0 {name=x1}
C {devices/vsource.sym} 760 10 0 0 {name=VVDDIO value="DC 3.3 PWL(0 0 1u 0 1m \{vvddio\})" savecurrent=false}
C {devices/vsource.sym} 620 70 0 0 {name=VVDDA value="DC 3.3 PWL(0 0 1u 0 1m \{vvddio\})" savecurrent=false}
C {devices/vsource.sym} 480 120 0 0 {name=VVCCD value="DC 1.8 PWL(0 0 10u 0 600u \{vvccd\})" savecurrent=false}
C {devices/opin.sym} 310 70 0 0 {name=p1 lab=por}
C {devices/opin.sym} 310 90 0 0 {name=p2 lab=porb}
C {devices/opin.sym} 310 110 0 0 {name=p3 lab=porb_h_0}
C {devices/opin.sym} 310 150 0 0 {name=p4 lab=vbg}
C {devices/opin.sym} 310 170 0 0 {name=p5 lab=vbgsc}
C {devices/opin.sym} 310 190 0 0 {name=p6 lab=vbgtc}
C {devices/opin.sym} 310 210 0 0 {name=p7 lab=gpio1_1}
C {sky130_stdcells/conb_1.sym} -660 20 0 0 {name=x2 VGND=vss VNB=vss VPB=vccd0 VPWR=vccd0 prefix=sky130_fd_sc_ls__ }
C {sky130_stdcells/buf_4.sym} -490 0 0 0 {name=x3 VGND=vss VNB=vss VPB=vccd0 VPWR=vccd0 prefix=sky130_fd_sc_ls__ }
C {devices/gnd.sym} 440 210 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 440 180 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/lab_wire.sym} 360 10 0 1 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 360 -10 0 1 {name=p9 sig_type=std_logic lab=vccd0}
C {devices/lab_wire.sym} 360 -30 0 1 {name=p10 sig_type=std_logic lab=vdda0}
C {devices/lab_wire.sym} 360 -50 0 1 {name=p11 sig_type=std_logic lab=vddio}
C {sky130_stdcells/buf_4.sym} -490 70 0 0 {name=x4 VGND=vss VNB=vss VPB=vccd0 VPWR=vccd0 prefix=sky130_fd_sc_ls__ }
C {devices/lab_pin.sym} -410 0 0 1 {name=p12 sig_type=std_logic lab=logic1}
C {devices/lab_pin.sym} -410 70 0 1 {name=p13 sig_type=std_logic lab=logic0}
C {devices/lab_pin.sym} -60 -50 0 0 {name=p14 sig_type=std_logic lab=logic0}
C {devices/lab_pin.sym} -60 -30 0 0 {name=p15 sig_type=std_logic lab=logic0}
C {devices/lab_pin.sym} -60 -10 0 0 {name=p16 sig_type=std_logic lab=logic1}
C {devices/lab_pin.sym} -60 10 0 0 {name=p17 sig_type=std_logic lab=logic0}
C {devices/lab_pin.sym} -60 30 0 0 {name=p18 sig_type=std_logic lab=logic0}
C {devices/lab_pin.sym} -60 50 0 0 {name=p19 sig_type=std_logic lab=logic1}
C {devices/code_shown.sym} -690 200 0 0 {name=s1 only_toplevel=false value="* Cheetah v3 power-up test
.lib /usr/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_ls/spice/sky130_fd_sc_ls.spice
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
* low-typ-high = -40 27 100
.option temp=-40
* low-typ-high = 2.97 3.3 3.63
.param vvddio=2.97
* low-typ-high = 1.62 1.8 1.98
.param vvccd=1.62"}
C {devices/code_shown.sym} -690 450 0 0 {name=s2 only_toplevel=false value="* Run transient startup
.control
   save all
   tran 100n 70m
   plot V(vddio) V(vccd0) V(vdda0)
   plot V(por) V(porb) V(porb_h_0)
   plot V(vbg) V(vbgsc) V(vbgtc)
.endc
.end"}
C {devices/opin.sym} 310 130 0 0 {name=p20 lab=porb_h_1}
