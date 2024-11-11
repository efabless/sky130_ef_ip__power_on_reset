v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Power supplies} -1150 -260 0 0 0.4 0.4 {}
T {Startup and Biasing} -1160 -100 0 0 0.4 0.4 {}
T {I/O} -1080 350 0 0 0.4 0.4 {}
T {Cheetah_v3_analog power-on-reset section
isolated from the rest of the analog section for simulation} -560 -350 0 0 0.6 0.6 {}
T {NOTE:  This schematic and corresponding layout are NOT directly part of cheetah_v3_analog views.} -560 -230 0 0 0.4 0.4 {}
N 190 230 220 230 {
lab=vssio}
N 190 250 220 250 {
lab=vssd0}
N 190 190 220 190 {
lab=#net1}
N 190 210 220 210 {
lab=#net2}
N -330 440 -300 440 {
lab=vccd0}
N -50 560 20 560 {
lab=vbgsc}
N -50 590 20 590 {
lab=vbgtc}
N -50 620 20 620 {
lab=#net3}
N -50 440 -20 440 {
lab=vssd0}
N -360 180 -320 180 {
lab=vddio}
N -360 200 -320 200 {
lab=vssio}
N -360 220 -320 220 {
lab=vccd0}
N -360 240 -320 240 {
lab=vssd0}
N -360 280 -320 280 {
lab=vbg}
N -360 300 -320 300 {
lab=ldo_ref_sel}
N -20 220 20 220 {
lab=vbgpwr}
N 20 220 20 380 {
lab=vbgpwr}
N -410 380 20 380 {
lab=vbgpwr}
N -410 470 -300 470 {
lab=vbgpwr}
N -480 -10 -450 -10 {
lab=vccd0}
N -330 530 -300 530 {
lab=bandgap_trim[0]}
N -330 560 -300 560 {
lab=bandgap_trim[1]}
N -330 590 -300 590 {
lab=bandgap_trim[2]}
N -330 620 -300 620 {
lab=bandgap_trim[3]}
N -50 470 -20 470 {
lab=vssio}
N 1090 120 1130 120 {
lab=vssa0}
N 1090 220 1130 220 {
lab=vssd0}
N 1090 200 1130 200 {
lab=vccd0}
N 1090 180 1130 180 {
lab=vdda0}
N -80 70 -50 70 {
lab=vbg}
N 250 -10 310 -10 {
lab=bandgap_sel}
N -80 110 -50 110 {
lab=vssd0}
N -80 -10 -50 -10 {
lab=vssa0}
N -80 30 -50 30 {
lab=vdda0}
N -80 90 -50 90 {
lab=vccd0}
N -360 300 -360 350 {
lab=ldo_ref_sel}
N -360 350 -330 350 {
lab=ldo_ref_sel}
N 190 270 220 270 {
lab=vcmosref}
N -50 530 20 530 {
lab=vcmosref}
N -80 50 -50 50 {
lab=vcmosref}
N -260 10 -50 10 {
lab=#net4}
N -440 260 -320 260 {
lab=ldo_ena}
N -500 500 -300 500 {
lab=bandgap_ena}
N 250 420 300 420 {
lab=vbgpwr}
N 250 480 300 480 {
lab=vssio}
N 270 530 320 530 {
lab=vcmosref}
N 270 590 320 590 {
lab=vssio}
N -410 380 -410 470 {
lab=vbgpwr}
N 110 190 130 190 {
lab=vddio}
N 110 210 130 210 {
lab=vccd0}
N -480 100 -440 100 {
lab=vssd0}
N -480 80 -480 100 {
lab=vssd0}
N -480 80 -440 80 {
lab=vssd0}
N -290 10 -260 10 {
lab=#net4}
N -450 -10 -440 -10 {
lab=vccd0}
N -560 20 -440 20 {
lab=bandgap_trim[15:0]}
N -500 40 -440 40 {
lab=bg_bias}
N -660 200 -600 200 {
lab=bg_bias}
N -790 140 -750 140 {
lab=vccd0}
N -790 160 -750 160 {
lab=vssd0}
N -500 40 -500 60 {
lab=bg_bias}
C {sky130_ak_ip__cmos_vref.sym} -170 530 0 0 {name=X1}
C {sky130_am_ip__ldo_01v8.sym} -170 260 0 0 {name=x3}
C {sky130_cw_ip__bandgap_nobias.sym} -420 90 0 0 {name=x4}
C {sky130_sw_ip__bgrref_por.sym} 300 230 0 0 {name=x15}
C {devices/iopin.sym} -950 -200 0 1 {name=p2 lab=vdda0}
C {devices/iopin.sym} -950 -170 0 1 {name=p4 lab=vssa0}
C {devices/ipin.sym} -500 500 0 0 {name=p33 lab=bandgap_ena}
C {devices/ipin.sym} -990 10 0 0 {name=p34 lab=bandgap_trim[15:0]}
C {devices/ipin.sym} -440 260 0 0 {name=p35 lab=ldo_ena}
C {devices/opin.sym} -1080 80 0 0 {name=p40 lab=por}
C {devices/opin.sym} -1080 110 0 0 {name=p41 lab=porb}
C {devices/opin.sym} -1080 140 0 0 {name=p42 lab=porb_h[0]}
C {devices/iopin.sym} -1070 420 0 0 {name=p291 lab=gpio1_1}
C {devices/opin.sym} -1080 200 0 0 {name=p346 lab=vbg}
C {devices/lab_pin.sym} -560 20 0 0 {name=p434 lab=bandgap_trim[15:0]}
C {devices/lab_pin.sym} 380 210 0 1 {name=p440 lab=por}
C {devices/lab_pin.sym} 380 230 0 1 {name=p441 lab=porb}
C {devices/lab_pin.sym} 380 250 0 1 {name=p442 lab=porb_h[1:0]}
C {devices/lab_pin.sym} 790 120 0 0 {name=p468 lab=vbg_test_to_gpio1_1[0]}
C {devices/lab_pin.sym} 20 530 0 1 {name=p846 lab=vcmosref}
C {devices/iopin.sym} -1110 -200 0 1 {name=p392 lab=vccd0}
C {devices/iopin.sym} -1110 -170 0 1 {name=p393 lab=vssd0}
C {devices/lab_pin.sym} 190 230 0 0 {name=p994 lab=vssio}
C {devices/lab_pin.sym} 190 250 0 0 {name=p995 lab=vssd0}
C {devices/lab_pin.sym} 110 210 0 0 {name=p996 lab=vccd0}
C {devices/lab_pin.sym} 110 190 0 0 {name=p997 lab=vddio}
C {devices/lab_pin.sym} -330 440 0 0 {name=p998 lab=vccd0}
C {devices/lab_pin.sym} 20 560 0 1 {name=p1000 sig_type=std_logic lab=vbgsc}
C {devices/lab_pin.sym} 20 590 0 1 {name=p1001 sig_type=std_logic lab=vbgtc}
C {devices/lab_pin.sym} -20 440 0 1 {name=p423 lab=vssd0}
C {devices/lab_pin.sym} -480 -10 2 1 {name=p1007 lab=vccd0}
C {devices/lab_pin.sym} -480 90 2 1 {name=p1008 lab=vssd0}
C {devices/lab_pin.sym} -360 220 0 0 {name=p1082 lab=vccd0}
C {devices/lab_pin.sym} -360 180 0 0 {name=p1083 sig_type=std_logic lab=vddio}
C {devices/lab_pin.sym} -360 200 0 0 {name=p1084 sig_type=std_logic lab=vssio}
C {devices/lab_pin.sym} -360 240 0 0 {name=p1085 lab=vssd0}
C {devices/lab_pin.sym} -360 280 0 0 {name=p1086 lab=vbg}
C {devices/lab_pin.sym} -330 530 0 0 {name=p1088 lab=bandgap_trim[0]}
C {devices/lab_pin.sym} -20 470 0 1 {name=p1089 lab=vssio}
C {devices/lab_pin.sym} -330 560 0 0 {name=p1090 lab=bandgap_trim[1]}
C {devices/lab_pin.sym} -330 590 0 0 {name=p1091 lab=bandgap_trim[2]}
C {devices/lab_pin.sym} -330 620 0 0 {name=p1092 lab=bandgap_trim[3]}
C {devices/lab_pin.sym} 1090 140 0 1 {name=p1193 sig_type=std_logic lab=gpio1_1}
C {devices/lab_pin.sym} 1090 160 0 1 {name=p1196 sig_type=std_logic lab=vbg}
C {devices/lab_pin.sym} 1130 180 0 1 {name=p1198 sig_type=std_logic lab=vdda0}
C {devices/lab_pin.sym} 1130 200 0 1 {name=p1199 sig_type=std_logic lab=vccd0}
C {devices/lab_pin.sym} 1130 220 0 1 {name=p1200 sig_type=std_logic lab=vssd0}
C {devices/lab_pin.sym} 1130 120 0 1 {name=p1201 sig_type=std_logic lab=vssa0}
C {devices/lab_pin.sym} -80 70 0 0 {name=p1334 sig_type=std_logic lab=vbg}
C {devices/ipin.sym} 310 -10 0 1 {name=p1336 lab=bandgap_sel}
C {devices/lab_pin.sym} -80 90 0 0 {name=p1337 lab=vccd0}
C {devices/lab_pin.sym} -80 110 0 0 {name=p1338 lab=vssd0}
C {devices/lab_pin.sym} -80 -10 0 0 {name=p1339 lab=vssa0}
C {devices/lab_pin.sym} -80 30 0 0 {name=p1343 sig_type=std_logic lab=vdda0}
C {devices/iopin.sym} -800 -200 0 1 {name=p1348 lab=vddio}
C {devices/iopin.sym} -800 -170 0 1 {name=p1349 lab=vssio}
C {devices/ipin.sym} -330 350 0 1 {name=p1350 lab=ldo_ref_sel}
C {simple_analog_mux_sel1v8.sym} 100 50 0 1 {name=x6}
C {devices/lab_pin.sym} 190 270 0 0 {name=p1111 lab=vcmosref}
C {devices/lab_pin.sym} -80 50 0 0 {name=p1357 sig_type=std_logic lab=vcmosref}
C {devices/noconn.sym} 20 620 0 1 {name=l32}
C {isolated_switch_xlarge.sym} 940 170 0 0 {name=x2}
C {devices/lab_pin.sym} 790 140 0 0 {name=p1 lab=vbg_test_to_gpio1_1[1]}
C {devices/opin.sym} -1070 270 0 0 {name=p3 lab=vbgsc}
C {devices/opin.sym} -1070 300 0 0 {name=p5 lab=vbgtc}
C {devices/ipin.sym} -1050 480 0 0 {name=p6 lab=vbg_test_to_gpio1_1[1:0]}
C {devices/lab_pin.sym} 20 380 0 1 {name=p7 sig_type=std_logic lab=vbgpwr}
C {sky130_fd_pr/cap_mim_m3_1.sym} 300 450 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=18 spiceprefix=X}
C {devices/lab_pin.sym} 250 420 0 0 {name=p8 sig_type=std_logic lab=vbgpwr}
C {devices/lab_pin.sym} 250 480 0 0 {name=p9 sig_type=std_logic lab=vssio}
C {sky130_fd_pr/cap_mim_m3_1.sym} 320 560 0 0 {name=C2 model=cap_mim_m3_1 W=10 L=10 MF=10 spiceprefix=X}
C {devices/lab_pin.sym} 270 530 0 0 {name=p10 sig_type=std_logic lab=vcmosref}
C {devices/lab_pin.sym} 270 590 0 0 {name=p11 sig_type=std_logic lab=vssio}
C {devices/opin.sym} -1080 170 0 0 {name=p14 lab=porb_h[1]}
C {ammeter.sym} 160 190 3 0 {name=Vpor_avdd savecurrent=true lvs_ignore=short}
C {ammeter.sym} 160 210 3 0 {name=Vpor_dvdd savecurrent=true lvs_ignore=short}
C {TieH_1p8.sym} -690 170 0 0 {name=x5}
C {devices/lab_pin.sym} -780 140 2 1 {name=p12 lab=vccd0}
C {devices/lab_pin.sym} -780 160 2 1 {name=p13 lab=vssd0}
C {devices/lab_pin.sym} -600 200 1 1 {name=p15 lab=bg_bias}
C {devices/lab_pin.sym} -500 60 2 1 {name=p16 lab=bg_bias}
