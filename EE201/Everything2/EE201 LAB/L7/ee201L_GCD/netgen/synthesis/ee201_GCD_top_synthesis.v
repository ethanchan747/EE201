////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: ee201_GCD_top_synthesis.v
// /___/   /\     Timestamp: Mon Oct 15 17:54:47 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ee201_GCD_top.ngc ee201_GCD_top_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: ee201_GCD_top.ngc
// Output file	: C:\Xilinx_projects\ee201L_GCD\netgen\synthesis\ee201_GCD_top_synthesis.v
// # of Modules	: 1
// Design Name	: ee201_GCD_top
// Xilinx        : C:\Xilinx\13.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ee201_GCD_top (
  BtnD, BtnL, BtnR, Ca, Cb, Cc, BtnU, Cd, Ce, Cf, Cg, Dp, Sw0, Sw1, Sw2, Sw3, ClkPort, Sw4, Sw5, Sw6, Sw7, FlashCS, MemOE, An0, An1, MemWR, An2, An3, 
RamCS, QuadSpiFlashCS, Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6, Ld7, BtnC
);
  input BtnD;
  input BtnL;
  input BtnR;
  output Ca;
  output Cb;
  output Cc;
  input BtnU;
  output Cd;
  output Ce;
  output Cf;
  output Cg;
  output Dp;
  input Sw0;
  input Sw1;
  input Sw2;
  input Sw3;
  input ClkPort;
  input Sw4;
  input Sw5;
  input Sw6;
  input Sw7;
  output FlashCS;
  output MemOE;
  output An0;
  output An1;
  output MemWR;
  output An2;
  output An3;
  output RamCS;
  output QuadSpiFlashCS;
  output Ld0;
  output Ld1;
  output Ld2;
  output Ld3;
  output Ld4;
  output Ld5;
  output Ld6;
  output Ld7;
  input BtnC;
  wire A_bar_slash_B_0;
  wire A_bar_slash_B_not0001;
  wire Ain_not0001;
  wire An0_OBUF_12;
  wire An1_OBUF_14;
  wire An2_OBUF_16;
  wire An3_OBUF_18;
  wire Bin_not0001;
  wire BtnC_IBUF_29;
  wire Ca_OBUF_35;
  wire Cb_OBUF_37;
  wire Cc_OBUF_39;
  wire Cd_OBUF_41;
  wire Ce_OBUF_43;
  wire Cf_OBUF_45;
  wire Cg_OBUF_47;
  wire Dp_OBUF_70;
  wire Ld0_OBUF_73;
  wire Ld1_OBUF_75;
  wire Ld2_OBUF_77;
  wire Ld3_OBUF_79;
  wire Ld4_OBUF_81;
  wire Ld5_OBUF_83;
  wire Ld6_OBUF_85;
  wire Ld7_OBUF_87;
  wire \Mcount_DIV_CLK_cy<10>_rt_90 ;
  wire \Mcount_DIV_CLK_cy<11>_rt_92 ;
  wire \Mcount_DIV_CLK_cy<12>_rt_94 ;
  wire \Mcount_DIV_CLK_cy<13>_rt_96 ;
  wire \Mcount_DIV_CLK_cy<14>_rt_98 ;
  wire \Mcount_DIV_CLK_cy<15>_rt_100 ;
  wire \Mcount_DIV_CLK_cy<16>_rt_102 ;
  wire \Mcount_DIV_CLK_cy<17>_rt_104 ;
  wire \Mcount_DIV_CLK_cy<18>_rt_106 ;
  wire \Mcount_DIV_CLK_cy<1>_rt_108 ;
  wire \Mcount_DIV_CLK_cy<2>_rt_110 ;
  wire \Mcount_DIV_CLK_cy<3>_rt_112 ;
  wire \Mcount_DIV_CLK_cy<4>_rt_114 ;
  wire \Mcount_DIV_CLK_cy<5>_rt_116 ;
  wire \Mcount_DIV_CLK_cy<6>_rt_118 ;
  wire \Mcount_DIV_CLK_cy<7>_rt_120 ;
  wire \Mcount_DIV_CLK_cy<8>_rt_122 ;
  wire \Mcount_DIV_CLK_cy<9>_rt_124 ;
  wire \Mcount_DIV_CLK_xor<19>_rt_126 ;
  wire Mmux_SSD_3_129;
  wire Mmux_SSD_31_130;
  wire Mmux_SSD_32_131;
  wire Mmux_SSD_33_132;
  wire Mmux_SSD_4_133;
  wire Mmux_SSD_41_134;
  wire Mmux_SSD_42_135;
  wire Mmux_SSD_43_136;
  wire N0;
  wire N104;
  wire N111;
  wire N112;
  wire N123;
  wire N124;
  wire N126;
  wire N127;
  wire N129;
  wire N130;
  wire N132;
  wire N133;
  wire N135;
  wire N136;
  wire N138;
  wire N14;
  wire N140;
  wire N142;
  wire N144;
  wire N146;
  wire N148;
  wire N150;
  wire N152;
  wire N154;
  wire N156;
  wire N158;
  wire N159;
  wire N16;
  wire N161;
  wire N162;
  wire N18;
  wire N182;
  wire N184;
  wire N192;
  wire N193;
  wire N194;
  wire N195;
  wire N196;
  wire N197;
  wire N198;
  wire N199;
  wire N200;
  wire N201;
  wire N202;
  wire N203;
  wire N204;
  wire N205;
  wire N206;
  wire N207;
  wire N208;
  wire N209;
  wire N210;
  wire N211;
  wire N212;
  wire N213;
  wire N214;
  wire N215;
  wire N216;
  wire N217;
  wire N218;
  wire N219;
  wire N220;
  wire N221;
  wire N222;
  wire N223;
  wire N224;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N78;
  wire N80;
  wire N81;
  wire N83;
  wire N86;
  wire N88;
  wire N90;
  wire N94;
  wire N96;
  wire N98;
  wire \SSD0<0>1_245 ;
  wire \SSD0<0>2_246 ;
  wire \SSD0<1>1_248 ;
  wire \SSD0<1>2_249 ;
  wire \SSD0<2>1_251 ;
  wire \SSD0<2>2_252 ;
  wire \SSD0<3>1_254 ;
  wire \SSD0<3>2_255 ;
  wire \SSD1<0>1_257 ;
  wire \SSD1<0>2_258 ;
  wire \SSD1<1>1_260 ;
  wire \SSD1<1>2_261 ;
  wire \SSD1<2>1_263 ;
  wire \SSD1<2>2_264 ;
  wire \SSD1<3>1_266 ;
  wire \SSD1<3>2_267 ;
  wire \SSD2<0>1_269 ;
  wire \SSD2<0>2_270 ;
  wire \SSD2<1>1_272 ;
  wire \SSD2<1>2_273 ;
  wire \SSD2<2>1_275 ;
  wire \SSD2<2>2_276 ;
  wire \SSD2<3>1_278 ;
  wire \SSD2<3>2_279 ;
  wire \SSD3<0>1_281 ;
  wire \SSD3<0>2_282 ;
  wire \SSD3<1>1_284 ;
  wire \SSD3<1>2_285 ;
  wire \SSD3<2>1_287 ;
  wire \SSD3<2>2_288 ;
  wire \SSD3<3>1_290 ;
  wire \SSD3<3>2_291 ;
  wire Sw0_IBUF_297;
  wire Sw1_IBUF_299;
  wire Sw2_IBUF_301;
  wire Sw3_IBUF_303;
  wire Sw4_IBUF_305;
  wire Sw5_IBUF_307;
  wire Sw6_IBUF_309;
  wire Sw7_IBUF_311;
  wire board_clk;
  wire \ee201_GCD_1/AB_GCD_mux0000<6>12_328 ;
  wire \ee201_GCD_1/AB_GCD_mux0000<7>12_330 ;
  wire \ee201_GCD_1/AB_GCD_mux0000<7>26_331 ;
  wire \ee201_GCD_1/A_0_1_333 ;
  wire \ee201_GCD_1/A_mux0000<0>15_350 ;
  wire \ee201_GCD_1/A_mux0000<0>2_351 ;
  wire \ee201_GCD_1/A_mux0000<0>55_352 ;
  wire \ee201_GCD_1/A_mux0000<0>66_353 ;
  wire \ee201_GCD_1/A_mux0000<1>0_354 ;
  wire \ee201_GCD_1/A_mux0000<1>14_355 ;
  wire \ee201_GCD_1/A_mux0000<1>46_356 ;
  wire \ee201_GCD_1/A_mux0000<1>49_357 ;
  wire \ee201_GCD_1/A_mux0000<1>64 ;
  wire \ee201_GCD_1/A_mux0000<2>0_359 ;
  wire \ee201_GCD_1/A_mux0000<2>14_360 ;
  wire \ee201_GCD_1/A_mux0000<2>46_361 ;
  wire \ee201_GCD_1/A_mux0000<2>49_362 ;
  wire \ee201_GCD_1/A_mux0000<2>64 ;
  wire \ee201_GCD_1/A_mux0000<3>0_364 ;
  wire \ee201_GCD_1/A_mux0000<3>14_365 ;
  wire \ee201_GCD_1/A_mux0000<3>46_366 ;
  wire \ee201_GCD_1/A_mux0000<3>49_367 ;
  wire \ee201_GCD_1/A_mux0000<3>64 ;
  wire \ee201_GCD_1/A_mux0000<4>0_369 ;
  wire \ee201_GCD_1/A_mux0000<4>14_370 ;
  wire \ee201_GCD_1/A_mux0000<4>46_371 ;
  wire \ee201_GCD_1/A_mux0000<4>49_372 ;
  wire \ee201_GCD_1/A_mux0000<4>64 ;
  wire \ee201_GCD_1/A_mux0000<5>0_374 ;
  wire \ee201_GCD_1/A_mux0000<5>14_375 ;
  wire \ee201_GCD_1/A_mux0000<5>46_376 ;
  wire \ee201_GCD_1/A_mux0000<5>49_377 ;
  wire \ee201_GCD_1/A_mux0000<5>64 ;
  wire \ee201_GCD_1/A_mux0000<6>0_379 ;
  wire \ee201_GCD_1/A_mux0000<6>1 ;
  wire \ee201_GCD_1/A_mux0000<6>16_381 ;
  wire \ee201_GCD_1/A_mux0000<6>46_382 ;
  wire \ee201_GCD_1/A_mux0000<6>49_383 ;
  wire \ee201_GCD_1/A_mux0000<6>6_384 ;
  wire \ee201_GCD_1/A_mux0000<6>64 ;
  wire \ee201_GCD_1/A_mux0000<7>29_386 ;
  wire \ee201_GCD_1/A_mux0000<7>32_387 ;
  wire \ee201_GCD_1/A_mux0000<7>44 ;
  wire \ee201_GCD_1/B_0_1_390 ;
  wire \ee201_GCD_1/B_mux0000<0>0_398 ;
  wire \ee201_GCD_1/B_mux0000<0>30_399 ;
  wire \ee201_GCD_1/B_mux0000<0>38 ;
  wire \ee201_GCD_1/B_mux0000<1>0_401 ;
  wire \ee201_GCD_1/B_mux0000<1>35 ;
  wire \ee201_GCD_1/B_mux0000<2>0_403 ;
  wire \ee201_GCD_1/B_mux0000<2>35 ;
  wire \ee201_GCD_1/B_mux0000<3>0_405 ;
  wire \ee201_GCD_1/B_mux0000<3>35 ;
  wire \ee201_GCD_1/B_mux0000<4>0_407 ;
  wire \ee201_GCD_1/B_mux0000<4>35 ;
  wire \ee201_GCD_1/B_mux0000<5>0_409 ;
  wire \ee201_GCD_1/B_mux0000<5>35 ;
  wire \ee201_GCD_1/B_mux0000<6>0_411 ;
  wire \ee201_GCD_1/B_mux0000<6>35 ;
  wire \ee201_GCD_1/B_mux0000<7>1_413 ;
  wire \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<7>_1_430 ;
  wire \ee201_GCD_1/N10 ;
  wire \ee201_GCD_1/N11 ;
  wire \ee201_GCD_1/N21 ;
  wire \ee201_GCD_1/N22 ;
  wire \ee201_GCD_1/N24 ;
  wire \ee201_GCD_1/N26 ;
  wire \ee201_GCD_1/N301 ;
  wire \ee201_GCD_1/N311 ;
  wire \ee201_GCD_1/N4 ;
  wire \ee201_GCD_1/N5 ;
  wire \ee201_GCD_1/i_count_mux0000[0] ;
  wire \ee201_GCD_1/i_count_mux0000<1>1_464 ;
  wire \ee201_GCD_1/i_count_mux0000<1>10_465 ;
  wire \ee201_GCD_1/i_count_mux0000<1>110_466 ;
  wire \ee201_GCD_1/i_count_mux0000<2>0_467 ;
  wire \ee201_GCD_1/i_count_mux0000<2>61 ;
  wire \ee201_GCD_1/i_count_mux0000<3>1_469 ;
  wire \ee201_GCD_1/i_count_mux0000[4] ;
  wire \ee201_GCD_1/i_count_mux0000[5] ;
  wire \ee201_GCD_1/i_count_mux0000[6] ;
  wire \ee201_GCD_1/i_count_mux0000[7] ;
  wire \ee201_GCD_1/state_FSM_FFd1_474 ;
  wire \ee201_GCD_1/state_FSM_FFd1-In ;
  wire \ee201_GCD_1/state_FSM_FFd1-In1_476 ;
  wire \ee201_GCD_1/state_FSM_FFd1-In2_477 ;
  wire \ee201_GCD_1/state_FSM_FFd2_478 ;
  wire \ee201_GCD_1/state_FSM_FFd2-In ;
  wire \ee201_GCD_1/state_FSM_FFd2-In16_480 ;
  wire \ee201_GCD_1/state_FSM_FFd2-In24_481 ;
  wire \ee201_GCD_1/state_FSM_FFd2-In7_482 ;
  wire \ee201_GCD_1/state_FSM_FFd2-In79 ;
  wire \ee201_GCD_1/state_FSM_FFd2-In791_484 ;
  wire \ee201_GCD_1/state_cmp_eq0000 ;
  wire \ee201_GCD_1/state_cmp_eq00008120_486 ;
  wire \ee201_GCD_1/state_cmp_eq00008136_487 ;
  wire \ee201_GCD_1/state_cmp_eq0000826_488 ;
  wire \ee201_GCD_1/state_cmp_eq0000853_489 ;
  wire \ee201_GCD_1/state_cmp_eq0000893_490 ;
  wire \ee201_debouncer_0/MCEN_count_or0001 ;
  wire \ee201_debouncer_0/MCEN_count_or0002 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<10>_rt_504 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<11>_rt_506 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<12>_rt_508 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<13>_rt_510 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<14>_rt_512 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<15>_rt_514 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<16>_rt_516 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<17>_rt_518 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<18>_rt_520 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<19>_rt_522 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<1>_rt_524 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<20>_rt_526 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<21>_rt_528 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<22>_rt_530 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<23>_rt_532 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<24>_rt_534 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<25>_rt_536 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<26>_rt_538 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<2>_rt_540 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<3>_rt_542 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<4>_rt_544 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<5>_rt_546 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<6>_rt_548 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<7>_rt_550 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<8>_rt_552 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<9>_rt_554 ;
  wire \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<27>_rt_556 ;
  wire \ee201_debouncer_0/debounce_count_or0001_641 ;
  wire \ee201_debouncer_0/state_FSM_FFd1_642 ;
  wire \ee201_debouncer_0/state_FSM_FFd1-In ;
  wire \ee201_debouncer_0/state_FSM_FFd1-In15_644 ;
  wire \ee201_debouncer_0/state_FSM_FFd1-In21_645 ;
  wire \ee201_debouncer_0/state_FSM_FFd1-In9_646 ;
  wire \ee201_debouncer_0/state_FSM_FFd2_647 ;
  wire \ee201_debouncer_0/state_FSM_FFd2-In ;
  wire \ee201_debouncer_0/state_FSM_FFd3_649 ;
  wire \ee201_debouncer_0/state_FSM_FFd3-In ;
  wire \ee201_debouncer_0/state_FSM_FFd3-In19_651 ;
  wire \ee201_debouncer_0/state_FSM_FFd3-In9_652 ;
  wire \ee201_debouncer_0/state_FSM_FFd4_653 ;
  wire \ee201_debouncer_0/state_FSM_FFd4-In ;
  wire \ee201_debouncer_0/state_FSM_FFd4-In16_655 ;
  wire \ee201_debouncer_0/state_FSM_FFd4-In19_656 ;
  wire \ee201_debouncer_0/state_FSM_FFd4-In46_657 ;
  wire \ee201_debouncer_0/state_FSM_FFd4-In8_658 ;
  wire \ee201_debouncer_0/state_FSM_FFd5_659 ;
  wire \ee201_debouncer_0/state_FSM_FFd5-In_660 ;
  wire \ee201_debouncer_0/state_FSM_FFd6_661 ;
  wire \ee201_debouncer_0/state_FSM_FFd6-In ;
  wire \ee201_debouncer_0/state_FSM_FFd6-In17_663 ;
  wire \ee201_debouncer_0/state_FSM_FFd6-In32_664 ;
  wire \ee201_debouncer_0/state_FSM_FFd6-In36_665 ;
  wire \ee201_debouncer_0/state_FSM_FFd6-In63_666 ;
  wire \ee201_debouncer_0/state_cmp_eq0004 ;
  wire \ee201_debouncer_1/MCEN_count_or0001 ;
  wire \ee201_debouncer_1/MCEN_count_or0002 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<10>_rt_681 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<11>_rt_683 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<12>_rt_685 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<13>_rt_687 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<14>_rt_689 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<15>_rt_691 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<16>_rt_693 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<17>_rt_695 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<18>_rt_697 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<19>_rt_699 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<1>_rt_701 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<20>_rt_703 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<21>_rt_705 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<22>_rt_707 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<23>_rt_709 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<24>_rt_711 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<25>_rt_713 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<26>_rt_715 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<2>_rt_717 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<3>_rt_719 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<4>_rt_721 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<5>_rt_723 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<6>_rt_725 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<7>_rt_727 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<8>_rt_729 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<9>_rt_731 ;
  wire \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<27>_rt_733 ;
  wire \ee201_debouncer_1/debounce_count_or0001_818 ;
  wire \ee201_debouncer_1/state_FSM_FFd1_819 ;
  wire \ee201_debouncer_1/state_FSM_FFd1-In ;
  wire \ee201_debouncer_1/state_FSM_FFd1-In15_821 ;
  wire \ee201_debouncer_1/state_FSM_FFd1-In21_822 ;
  wire \ee201_debouncer_1/state_FSM_FFd1-In9_823 ;
  wire \ee201_debouncer_1/state_FSM_FFd2_824 ;
  wire \ee201_debouncer_1/state_FSM_FFd2-In ;
  wire \ee201_debouncer_1/state_FSM_FFd3_826 ;
  wire \ee201_debouncer_1/state_FSM_FFd3-In ;
  wire \ee201_debouncer_1/state_FSM_FFd3-In19_828 ;
  wire \ee201_debouncer_1/state_FSM_FFd3-In9_829 ;
  wire \ee201_debouncer_1/state_FSM_FFd4_830 ;
  wire \ee201_debouncer_1/state_FSM_FFd4-In ;
  wire \ee201_debouncer_1/state_FSM_FFd4-In16_832 ;
  wire \ee201_debouncer_1/state_FSM_FFd4-In19_833 ;
  wire \ee201_debouncer_1/state_FSM_FFd4-In46_834 ;
  wire \ee201_debouncer_1/state_FSM_FFd4-In8_835 ;
  wire \ee201_debouncer_1/state_FSM_FFd5_836 ;
  wire \ee201_debouncer_1/state_FSM_FFd5-In_837 ;
  wire \ee201_debouncer_1/state_FSM_FFd6_838 ;
  wire \ee201_debouncer_1/state_FSM_FFd6-In ;
  wire \ee201_debouncer_1/state_FSM_FFd6-In17_840 ;
  wire \ee201_debouncer_1/state_FSM_FFd6-In32_841 ;
  wire \ee201_debouncer_1/state_FSM_FFd6-In36_842 ;
  wire \ee201_debouncer_1/state_FSM_FFd6-In63_843 ;
  wire \ee201_debouncer_1/state_cmp_eq0004 ;
  wire \ee201_debouncer_2/MCEN_count_or0001 ;
  wire \ee201_debouncer_2/MCEN_count_or0002 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<10>_rt_858 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<11>_rt_860 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<12>_rt_862 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<13>_rt_864 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<14>_rt_866 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<15>_rt_868 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<16>_rt_870 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<17>_rt_872 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<18>_rt_874 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<19>_rt_876 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<1>_rt_878 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<20>_rt_880 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<21>_rt_882 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<22>_rt_884 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<23>_rt_886 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<24>_rt_888 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<25>_rt_890 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<26>_rt_892 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<2>_rt_894 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<3>_rt_896 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<4>_rt_898 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<5>_rt_900 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<6>_rt_902 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<7>_rt_904 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<8>_rt_906 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<9>_rt_908 ;
  wire \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<27>_rt_910 ;
  wire \ee201_debouncer_2/debounce_count_or0001_995 ;
  wire \ee201_debouncer_2/state_FSM_FFd1_996 ;
  wire \ee201_debouncer_2/state_FSM_FFd1-In ;
  wire \ee201_debouncer_2/state_FSM_FFd1-In15_998 ;
  wire \ee201_debouncer_2/state_FSM_FFd1-In21_999 ;
  wire \ee201_debouncer_2/state_FSM_FFd1-In9_1000 ;
  wire \ee201_debouncer_2/state_FSM_FFd2_1001 ;
  wire \ee201_debouncer_2/state_FSM_FFd2-In ;
  wire \ee201_debouncer_2/state_FSM_FFd3_1003 ;
  wire \ee201_debouncer_2/state_FSM_FFd3-In ;
  wire \ee201_debouncer_2/state_FSM_FFd3-In19_1005 ;
  wire \ee201_debouncer_2/state_FSM_FFd3-In9_1006 ;
  wire \ee201_debouncer_2/state_FSM_FFd4_1007 ;
  wire \ee201_debouncer_2/state_FSM_FFd4-In ;
  wire \ee201_debouncer_2/state_FSM_FFd4-In16_1009 ;
  wire \ee201_debouncer_2/state_FSM_FFd4-In19_1010 ;
  wire \ee201_debouncer_2/state_FSM_FFd4-In46_1011 ;
  wire \ee201_debouncer_2/state_FSM_FFd4-In8_1012 ;
  wire \ee201_debouncer_2/state_FSM_FFd5_1013 ;
  wire \ee201_debouncer_2/state_FSM_FFd5-In_1014 ;
  wire \ee201_debouncer_2/state_FSM_FFd6_1015 ;
  wire \ee201_debouncer_2/state_FSM_FFd6-In ;
  wire \ee201_debouncer_2/state_FSM_FFd6-In17_1017 ;
  wire \ee201_debouncer_2/state_FSM_FFd6-In32_1018 ;
  wire \ee201_debouncer_2/state_FSM_FFd6-In36_1019 ;
  wire \ee201_debouncer_2/state_FSM_FFd6-In63_1020 ;
  wire \ee201_debouncer_2/state_cmp_eq0004 ;
  wire [7 : 0] Ain;
  wire [7 : 0] Bin;
  wire [19 : 0] DIV_CLK;
  wire [18 : 0] Mcount_DIV_CLK_cy;
  wire [0 : 0] Mcount_DIV_CLK_lut;
  wire [19 : 0] Result;
  wire [3 : 0] SSD0;
  wire [3 : 0] SSD1;
  wire [3 : 0] SSD2;
  wire [3 : 0] SSD3;
  wire [3 : 0] SSD;
  wire [7 : 0] \ee201_GCD_1/AB_GCD ;
  wire [7 : 0] \ee201_GCD_1/AB_GCD_mux0000 ;
  wire [7 : 0] \ee201_GCD_1/A ;
  wire [7 : 0] \ee201_GCD_1/A_addsub0000 ;
  wire [0 : 0] \ee201_GCD_1/A_mux0000 ;
  wire [7 : 0] \ee201_GCD_1/B ;
  wire [7 : 0] \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy ;
  wire [7 : 0] \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut ;
  wire [6 : 0] \ee201_GCD_1/Msub_A_addsub0000_cy ;
  wire [6 : 0] \ee201_GCD_1/Msub_A_addsub0000_lut ;
  wire [7 : 0] \ee201_GCD_1/i_count ;
  wire [3 : 0] \ee201_debouncer_0/MCEN_count ;
  wire [3 : 0] \ee201_debouncer_0/MCEN_count_mux0000 ;
  wire [1 : 1] \ee201_debouncer_0/Madd_MCEN_count_addsub0000_cy ;
  wire [26 : 0] \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy ;
  wire [0 : 0] \ee201_debouncer_0/Madd_debounce_count_addsub0000_lut ;
  wire [27 : 0] \ee201_debouncer_0/debounce_count ;
  wire [27 : 0] \ee201_debouncer_0/debounce_count_addsub0000 ;
  wire [27 : 0] \ee201_debouncer_0/debounce_count_mux0000 ;
  wire [3 : 0] \ee201_debouncer_1/MCEN_count ;
  wire [3 : 0] \ee201_debouncer_1/MCEN_count_mux0000 ;
  wire [1 : 1] \ee201_debouncer_1/Madd_MCEN_count_addsub0000_cy ;
  wire [26 : 0] \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy ;
  wire [0 : 0] \ee201_debouncer_1/Madd_debounce_count_addsub0000_lut ;
  wire [27 : 0] \ee201_debouncer_1/debounce_count ;
  wire [27 : 0] \ee201_debouncer_1/debounce_count_addsub0000 ;
  wire [27 : 0] \ee201_debouncer_1/debounce_count_mux0000 ;
  wire [3 : 0] \ee201_debouncer_2/MCEN_count ;
  wire [3 : 0] \ee201_debouncer_2/MCEN_count_mux0000 ;
  wire [1 : 1] \ee201_debouncer_2/Madd_MCEN_count_addsub0000_cy ;
  wire [26 : 0] \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy ;
  wire [0 : 0] \ee201_debouncer_2/Madd_debounce_count_addsub0000_lut ;
  wire [27 : 0] \ee201_debouncer_2/debounce_count ;
  wire [27 : 0] \ee201_debouncer_2/debounce_count_addsub0000 ;
  wire [27 : 0] \ee201_debouncer_2/debounce_count_mux0000 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(Dp_OBUF_70)
  );
  FDCE   Ain_0 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw0_IBUF_297),
    .Q(Ain[0])
  );
  FDCE   Ain_1 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw1_IBUF_299),
    .Q(Ain[1])
  );
  FDCE   Ain_2 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw2_IBUF_301),
    .Q(Ain[2])
  );
  FDCE   Ain_3 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw3_IBUF_303),
    .Q(Ain[3])
  );
  FDCE   Ain_4 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw4_IBUF_305),
    .Q(Ain[4])
  );
  FDCE   Ain_5 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw5_IBUF_307),
    .Q(Ain[5])
  );
  FDCE   Ain_6 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw6_IBUF_309),
    .Q(Ain[6])
  );
  FDCE   Ain_7 (
    .C(board_clk),
    .CE(Ain_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw7_IBUF_311),
    .Q(Ain[7])
  );
  FDCE   Bin_0 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw0_IBUF_297),
    .Q(Bin[0])
  );
  FDCE   Bin_1 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw1_IBUF_299),
    .Q(Bin[1])
  );
  FDCE   Bin_2 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw2_IBUF_301),
    .Q(Bin[2])
  );
  FDCE   Bin_3 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw3_IBUF_303),
    .Q(Bin[3])
  );
  FDCE   Bin_4 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw4_IBUF_305),
    .Q(Bin[4])
  );
  FDCE   Bin_5 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw5_IBUF_307),
    .Q(Bin[5])
  );
  FDCE   Bin_6 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw6_IBUF_309),
    .Q(Bin[6])
  );
  FDCE   Bin_7 (
    .C(board_clk),
    .CE(Bin_not0001),
    .CLR(BtnC_IBUF_29),
    .D(Sw7_IBUF_311),
    .Q(Bin[7])
  );
  FDCE   A_bar_slash_B (
    .C(board_clk),
    .CE(\ee201_debouncer_1/state_FSM_FFd2_824 ),
    .CLR(BtnC_IBUF_29),
    .D(A_bar_slash_B_not0001),
    .Q(A_bar_slash_B_0)
  );
  FDC   DIV_CLK_0 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[0]),
    .Q(DIV_CLK[0])
  );
  FDC   DIV_CLK_1 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[1]),
    .Q(DIV_CLK[1])
  );
  FDC   DIV_CLK_2 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[2]),
    .Q(DIV_CLK[2])
  );
  FDC   DIV_CLK_3 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[3]),
    .Q(DIV_CLK[3])
  );
  FDC   DIV_CLK_4 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[4]),
    .Q(DIV_CLK[4])
  );
  FDC   DIV_CLK_5 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[5]),
    .Q(DIV_CLK[5])
  );
  FDC   DIV_CLK_6 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[6]),
    .Q(DIV_CLK[6])
  );
  FDC   DIV_CLK_7 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[7]),
    .Q(DIV_CLK[7])
  );
  FDC   DIV_CLK_8 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[8]),
    .Q(DIV_CLK[8])
  );
  FDC   DIV_CLK_9 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[9]),
    .Q(DIV_CLK[9])
  );
  FDC   DIV_CLK_10 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[10]),
    .Q(DIV_CLK[10])
  );
  FDC   DIV_CLK_11 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[11]),
    .Q(DIV_CLK[11])
  );
  FDC   DIV_CLK_12 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[12]),
    .Q(DIV_CLK[12])
  );
  FDC   DIV_CLK_13 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[13]),
    .Q(DIV_CLK[13])
  );
  FDC   DIV_CLK_14 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[14]),
    .Q(DIV_CLK[14])
  );
  FDC   DIV_CLK_15 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[15]),
    .Q(DIV_CLK[15])
  );
  FDC   DIV_CLK_16 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[16]),
    .Q(DIV_CLK[16])
  );
  FDC   DIV_CLK_17 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[17]),
    .Q(DIV_CLK[17])
  );
  FDC   DIV_CLK_18 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[18]),
    .Q(DIV_CLK[18])
  );
  FDC   DIV_CLK_19 (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(Result[19]),
    .Q(DIV_CLK[19])
  );
  MUXCY   \Mcount_DIV_CLK_cy<0>  (
    .CI(N0),
    .DI(Dp_OBUF_70),
    .S(Mcount_DIV_CLK_lut[0]),
    .O(Mcount_DIV_CLK_cy[0])
  );
  XORCY   \Mcount_DIV_CLK_xor<0>  (
    .CI(N0),
    .LI(Mcount_DIV_CLK_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_DIV_CLK_cy<1>  (
    .CI(Mcount_DIV_CLK_cy[0]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<1>_rt_108 ),
    .O(Mcount_DIV_CLK_cy[1])
  );
  XORCY   \Mcount_DIV_CLK_xor<1>  (
    .CI(Mcount_DIV_CLK_cy[0]),
    .LI(\Mcount_DIV_CLK_cy<1>_rt_108 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_DIV_CLK_cy<2>  (
    .CI(Mcount_DIV_CLK_cy[1]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<2>_rt_110 ),
    .O(Mcount_DIV_CLK_cy[2])
  );
  XORCY   \Mcount_DIV_CLK_xor<2>  (
    .CI(Mcount_DIV_CLK_cy[1]),
    .LI(\Mcount_DIV_CLK_cy<2>_rt_110 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_DIV_CLK_cy<3>  (
    .CI(Mcount_DIV_CLK_cy[2]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<3>_rt_112 ),
    .O(Mcount_DIV_CLK_cy[3])
  );
  XORCY   \Mcount_DIV_CLK_xor<3>  (
    .CI(Mcount_DIV_CLK_cy[2]),
    .LI(\Mcount_DIV_CLK_cy<3>_rt_112 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_DIV_CLK_cy<4>  (
    .CI(Mcount_DIV_CLK_cy[3]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<4>_rt_114 ),
    .O(Mcount_DIV_CLK_cy[4])
  );
  XORCY   \Mcount_DIV_CLK_xor<4>  (
    .CI(Mcount_DIV_CLK_cy[3]),
    .LI(\Mcount_DIV_CLK_cy<4>_rt_114 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_DIV_CLK_cy<5>  (
    .CI(Mcount_DIV_CLK_cy[4]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<5>_rt_116 ),
    .O(Mcount_DIV_CLK_cy[5])
  );
  XORCY   \Mcount_DIV_CLK_xor<5>  (
    .CI(Mcount_DIV_CLK_cy[4]),
    .LI(\Mcount_DIV_CLK_cy<5>_rt_116 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_DIV_CLK_cy<6>  (
    .CI(Mcount_DIV_CLK_cy[5]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<6>_rt_118 ),
    .O(Mcount_DIV_CLK_cy[6])
  );
  XORCY   \Mcount_DIV_CLK_xor<6>  (
    .CI(Mcount_DIV_CLK_cy[5]),
    .LI(\Mcount_DIV_CLK_cy<6>_rt_118 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_DIV_CLK_cy<7>  (
    .CI(Mcount_DIV_CLK_cy[6]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<7>_rt_120 ),
    .O(Mcount_DIV_CLK_cy[7])
  );
  XORCY   \Mcount_DIV_CLK_xor<7>  (
    .CI(Mcount_DIV_CLK_cy[6]),
    .LI(\Mcount_DIV_CLK_cy<7>_rt_120 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_DIV_CLK_cy<8>  (
    .CI(Mcount_DIV_CLK_cy[7]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<8>_rt_122 ),
    .O(Mcount_DIV_CLK_cy[8])
  );
  XORCY   \Mcount_DIV_CLK_xor<8>  (
    .CI(Mcount_DIV_CLK_cy[7]),
    .LI(\Mcount_DIV_CLK_cy<8>_rt_122 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_DIV_CLK_cy<9>  (
    .CI(Mcount_DIV_CLK_cy[8]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<9>_rt_124 ),
    .O(Mcount_DIV_CLK_cy[9])
  );
  XORCY   \Mcount_DIV_CLK_xor<9>  (
    .CI(Mcount_DIV_CLK_cy[8]),
    .LI(\Mcount_DIV_CLK_cy<9>_rt_124 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_DIV_CLK_cy<10>  (
    .CI(Mcount_DIV_CLK_cy[9]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<10>_rt_90 ),
    .O(Mcount_DIV_CLK_cy[10])
  );
  XORCY   \Mcount_DIV_CLK_xor<10>  (
    .CI(Mcount_DIV_CLK_cy[9]),
    .LI(\Mcount_DIV_CLK_cy<10>_rt_90 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_DIV_CLK_cy<11>  (
    .CI(Mcount_DIV_CLK_cy[10]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<11>_rt_92 ),
    .O(Mcount_DIV_CLK_cy[11])
  );
  XORCY   \Mcount_DIV_CLK_xor<11>  (
    .CI(Mcount_DIV_CLK_cy[10]),
    .LI(\Mcount_DIV_CLK_cy<11>_rt_92 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_DIV_CLK_cy<12>  (
    .CI(Mcount_DIV_CLK_cy[11]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<12>_rt_94 ),
    .O(Mcount_DIV_CLK_cy[12])
  );
  XORCY   \Mcount_DIV_CLK_xor<12>  (
    .CI(Mcount_DIV_CLK_cy[11]),
    .LI(\Mcount_DIV_CLK_cy<12>_rt_94 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_DIV_CLK_cy<13>  (
    .CI(Mcount_DIV_CLK_cy[12]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<13>_rt_96 ),
    .O(Mcount_DIV_CLK_cy[13])
  );
  XORCY   \Mcount_DIV_CLK_xor<13>  (
    .CI(Mcount_DIV_CLK_cy[12]),
    .LI(\Mcount_DIV_CLK_cy<13>_rt_96 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_DIV_CLK_cy<14>  (
    .CI(Mcount_DIV_CLK_cy[13]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<14>_rt_98 ),
    .O(Mcount_DIV_CLK_cy[14])
  );
  XORCY   \Mcount_DIV_CLK_xor<14>  (
    .CI(Mcount_DIV_CLK_cy[13]),
    .LI(\Mcount_DIV_CLK_cy<14>_rt_98 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_DIV_CLK_cy<15>  (
    .CI(Mcount_DIV_CLK_cy[14]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<15>_rt_100 ),
    .O(Mcount_DIV_CLK_cy[15])
  );
  XORCY   \Mcount_DIV_CLK_xor<15>  (
    .CI(Mcount_DIV_CLK_cy[14]),
    .LI(\Mcount_DIV_CLK_cy<15>_rt_100 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_DIV_CLK_cy<16>  (
    .CI(Mcount_DIV_CLK_cy[15]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<16>_rt_102 ),
    .O(Mcount_DIV_CLK_cy[16])
  );
  XORCY   \Mcount_DIV_CLK_xor<16>  (
    .CI(Mcount_DIV_CLK_cy[15]),
    .LI(\Mcount_DIV_CLK_cy<16>_rt_102 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_DIV_CLK_cy<17>  (
    .CI(Mcount_DIV_CLK_cy[16]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<17>_rt_104 ),
    .O(Mcount_DIV_CLK_cy[17])
  );
  XORCY   \Mcount_DIV_CLK_xor<17>  (
    .CI(Mcount_DIV_CLK_cy[16]),
    .LI(\Mcount_DIV_CLK_cy<17>_rt_104 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_DIV_CLK_cy<18>  (
    .CI(Mcount_DIV_CLK_cy[17]),
    .DI(N0),
    .S(\Mcount_DIV_CLK_cy<18>_rt_106 ),
    .O(Mcount_DIV_CLK_cy[18])
  );
  XORCY   \Mcount_DIV_CLK_xor<18>  (
    .CI(Mcount_DIV_CLK_cy[17]),
    .LI(\Mcount_DIV_CLK_cy<18>_rt_106 ),
    .O(Result[18])
  );
  XORCY   \Mcount_DIV_CLK_xor<19>  (
    .CI(Mcount_DIV_CLK_cy[18]),
    .LI(\Mcount_DIV_CLK_xor<19>_rt_126 ),
    .O(Result[19])
  );
  MUXF5   Mmux_SSD_2_f5_2 (
    .I0(Mmux_SSD_43_136),
    .I1(Mmux_SSD_33_132),
    .S(DIV_CLK[19]),
    .O(SSD[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_43 (
    .I0(DIV_CLK[18]),
    .I1(SSD3[3]),
    .I2(SSD2[3]),
    .O(Mmux_SSD_43_136)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_33 (
    .I0(DIV_CLK[18]),
    .I1(SSD1[3]),
    .I2(SSD0[3]),
    .O(Mmux_SSD_33_132)
  );
  MUXF5   Mmux_SSD_2_f5_1 (
    .I0(Mmux_SSD_42_135),
    .I1(Mmux_SSD_32_131),
    .S(DIV_CLK[19]),
    .O(SSD[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_42 (
    .I0(DIV_CLK[18]),
    .I1(SSD3[2]),
    .I2(SSD2[2]),
    .O(Mmux_SSD_42_135)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_32 (
    .I0(DIV_CLK[18]),
    .I1(SSD1[2]),
    .I2(SSD0[2]),
    .O(Mmux_SSD_32_131)
  );
  MUXF5   Mmux_SSD_2_f5_0 (
    .I0(Mmux_SSD_41_134),
    .I1(Mmux_SSD_31_130),
    .S(DIV_CLK[19]),
    .O(SSD[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_41 (
    .I0(DIV_CLK[18]),
    .I1(SSD3[1]),
    .I2(SSD2[1]),
    .O(Mmux_SSD_41_134)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_31 (
    .I0(DIV_CLK[18]),
    .I1(SSD1[1]),
    .I2(SSD0[1]),
    .O(Mmux_SSD_31_130)
  );
  MUXF5   Mmux_SSD_2_f5 (
    .I0(Mmux_SSD_4_133),
    .I1(Mmux_SSD_3_129),
    .S(DIV_CLK[19]),
    .O(SSD[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_4 (
    .I0(DIV_CLK[18]),
    .I1(SSD3[0]),
    .I2(SSD2[0]),
    .O(Mmux_SSD_4_133)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_SSD_3 (
    .I0(DIV_CLK[18]),
    .I1(SSD1[0]),
    .I2(SSD0[0]),
    .O(Mmux_SSD_3_129)
  );
  BUFGP   BUFGP1 (
    .I(ClkPort),
    .O(board_clk)
  );
  FDC   \ee201_debouncer_0/state_FSM_FFd5  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_0/state_FSM_FFd5-In_660 ),
    .Q(\ee201_debouncer_0/state_FSM_FFd5_659 )
  );
  FDC   \ee201_debouncer_0/state_FSM_FFd4  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_0/state_FSM_FFd4-In ),
    .Q(\ee201_debouncer_0/state_FSM_FFd4_653 )
  );
  FDC   \ee201_debouncer_0/state_FSM_FFd6  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_0/state_FSM_FFd6-In ),
    .Q(\ee201_debouncer_0/state_FSM_FFd6_661 )
  );
  FDC   \ee201_debouncer_0/state_FSM_FFd2  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_0/state_FSM_FFd2-In ),
    .Q(\ee201_debouncer_0/state_FSM_FFd2_647 )
  );
  FDC   \ee201_debouncer_0/state_FSM_FFd1  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_0/state_FSM_FFd1-In ),
    .Q(\ee201_debouncer_0/state_FSM_FFd1_642 )
  );
  FDC   \ee201_debouncer_0/state_FSM_FFd3  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_0/state_FSM_FFd3-In ),
    .Q(\ee201_debouncer_0/state_FSM_FFd3_649 )
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<27>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [26]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<27>_rt_556 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [27])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<26>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [25]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<26>_rt_538 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [26])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<26>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [25]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<26>_rt_538 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [26])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<25>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [24]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<25>_rt_536 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [25])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<25>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [24]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<25>_rt_536 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [25])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<24>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [23]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<24>_rt_534 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [24])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<24>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [23]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<24>_rt_534 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [24])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<23>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [22]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<23>_rt_532 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [23])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<23>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [22]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<23>_rt_532 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [23])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<22>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [21]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<22>_rt_530 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [22])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<22>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [21]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<22>_rt_530 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [22])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<21>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [20]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<21>_rt_528 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [21])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<21>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [20]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<21>_rt_528 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [21])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<20>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [19]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<20>_rt_526 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [20])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<20>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [19]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<20>_rt_526 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [20])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<19>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [18]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<19>_rt_522 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [19])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<19>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [18]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<19>_rt_522 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [19])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<18>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [17]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<18>_rt_520 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [18])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<18>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [17]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<18>_rt_520 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [18])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<17>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [16]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<17>_rt_518 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [17])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<17>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [16]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<17>_rt_518 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [17])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<16>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [15]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<16>_rt_516 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [16])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<16>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [15]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<16>_rt_516 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [16])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<15>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [14]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<15>_rt_514 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [15])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<15>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [14]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<15>_rt_514 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [15])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<14>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [13]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<14>_rt_512 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [14])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<14>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [13]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<14>_rt_512 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [14])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<13>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [12]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<13>_rt_510 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [13])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<13>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [12]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<13>_rt_510 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [13])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<12>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [11]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<12>_rt_508 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [12])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<12>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [11]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<12>_rt_508 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [12])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<11>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [10]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<11>_rt_506 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [11])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<11>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [10]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<11>_rt_506 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [11])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<10>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [9]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<10>_rt_504 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [10])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<10>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [9]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<10>_rt_504 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [10])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<9>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [8]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<9>_rt_554 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [9])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<9>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [8]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<9>_rt_554 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [9])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<8>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [7]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<8>_rt_552 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [8])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<8>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [7]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<8>_rt_552 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [8])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<7>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [6]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<7>_rt_550 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [7])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<7>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [6]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<7>_rt_550 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [7])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<6>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [5]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<6>_rt_548 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [6])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<6>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [5]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<6>_rt_548 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [6])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<5>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [4]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<5>_rt_546 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [5])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<5>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [4]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<5>_rt_546 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [5])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<4>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [3]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<4>_rt_544 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [4])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<4>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [3]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<4>_rt_544 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [4])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<3>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [2]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<3>_rt_542 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [3])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<3>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [2]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<3>_rt_542 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [3])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<2>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [1]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<2>_rt_540 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [2])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<2>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [1]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<2>_rt_540 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [2])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<1>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [0]),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<1>_rt_524 ),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [1])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<1>  (
    .CI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [0]),
    .DI(N0),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<1>_rt_524 ),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [1])
  );
  XORCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\ee201_debouncer_0/Madd_debounce_count_addsub0000_lut [0]),
    .O(\ee201_debouncer_0/debounce_count_addsub0000 [0])
  );
  MUXCY   \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<0>  (
    .CI(N0),
    .DI(Dp_OBUF_70),
    .S(\ee201_debouncer_0/Madd_debounce_count_addsub0000_lut [0]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy [0])
  );
  FD   \ee201_debouncer_0/debounce_count_27  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [0]),
    .Q(\ee201_debouncer_0/debounce_count [27])
  );
  FD   \ee201_debouncer_0/debounce_count_26  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [1]),
    .Q(\ee201_debouncer_0/debounce_count [26])
  );
  FD   \ee201_debouncer_0/debounce_count_25  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [2]),
    .Q(\ee201_debouncer_0/debounce_count [25])
  );
  FD   \ee201_debouncer_0/debounce_count_24  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [3]),
    .Q(\ee201_debouncer_0/debounce_count [24])
  );
  FD   \ee201_debouncer_0/debounce_count_23  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [4]),
    .Q(\ee201_debouncer_0/debounce_count [23])
  );
  FD   \ee201_debouncer_0/debounce_count_22  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [5]),
    .Q(\ee201_debouncer_0/debounce_count [22])
  );
  FD   \ee201_debouncer_0/debounce_count_21  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [6]),
    .Q(\ee201_debouncer_0/debounce_count [21])
  );
  FD   \ee201_debouncer_0/debounce_count_20  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [7]),
    .Q(\ee201_debouncer_0/debounce_count [20])
  );
  FD   \ee201_debouncer_0/debounce_count_19  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [8]),
    .Q(\ee201_debouncer_0/debounce_count [19])
  );
  FD   \ee201_debouncer_0/debounce_count_18  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [9]),
    .Q(\ee201_debouncer_0/debounce_count [18])
  );
  FD   \ee201_debouncer_0/debounce_count_17  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [10]),
    .Q(\ee201_debouncer_0/debounce_count [17])
  );
  FD   \ee201_debouncer_0/debounce_count_16  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [11]),
    .Q(\ee201_debouncer_0/debounce_count [16])
  );
  FD   \ee201_debouncer_0/debounce_count_15  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [12]),
    .Q(\ee201_debouncer_0/debounce_count [15])
  );
  FD   \ee201_debouncer_0/debounce_count_14  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [13]),
    .Q(\ee201_debouncer_0/debounce_count [14])
  );
  FD   \ee201_debouncer_0/debounce_count_13  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [14]),
    .Q(\ee201_debouncer_0/debounce_count [13])
  );
  FD   \ee201_debouncer_0/debounce_count_12  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [15]),
    .Q(\ee201_debouncer_0/debounce_count [12])
  );
  FD   \ee201_debouncer_0/debounce_count_11  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [16]),
    .Q(\ee201_debouncer_0/debounce_count [11])
  );
  FD   \ee201_debouncer_0/debounce_count_10  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [17]),
    .Q(\ee201_debouncer_0/debounce_count [10])
  );
  FD   \ee201_debouncer_0/debounce_count_9  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [18]),
    .Q(\ee201_debouncer_0/debounce_count [9])
  );
  FD   \ee201_debouncer_0/debounce_count_8  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [19]),
    .Q(\ee201_debouncer_0/debounce_count [8])
  );
  FD   \ee201_debouncer_0/debounce_count_7  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [20]),
    .Q(\ee201_debouncer_0/debounce_count [7])
  );
  FD   \ee201_debouncer_0/debounce_count_6  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [21]),
    .Q(\ee201_debouncer_0/debounce_count [6])
  );
  FD   \ee201_debouncer_0/debounce_count_5  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [22]),
    .Q(\ee201_debouncer_0/debounce_count [5])
  );
  FD   \ee201_debouncer_0/debounce_count_4  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [23]),
    .Q(\ee201_debouncer_0/debounce_count [4])
  );
  FD   \ee201_debouncer_0/debounce_count_3  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [24]),
    .Q(\ee201_debouncer_0/debounce_count [3])
  );
  FD   \ee201_debouncer_0/debounce_count_2  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [25]),
    .Q(\ee201_debouncer_0/debounce_count [2])
  );
  FD   \ee201_debouncer_0/debounce_count_1  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [26]),
    .Q(\ee201_debouncer_0/debounce_count [1])
  );
  FD   \ee201_debouncer_0/debounce_count_0  (
    .C(board_clk),
    .D(\ee201_debouncer_0/debounce_count_mux0000 [27]),
    .Q(\ee201_debouncer_0/debounce_count [0])
  );
  FD   \ee201_debouncer_0/MCEN_count_3  (
    .C(board_clk),
    .D(\ee201_debouncer_0/MCEN_count_mux0000 [0]),
    .Q(\ee201_debouncer_0/MCEN_count [3])
  );
  FD   \ee201_debouncer_0/MCEN_count_2  (
    .C(board_clk),
    .D(\ee201_debouncer_0/MCEN_count_mux0000 [1]),
    .Q(\ee201_debouncer_0/MCEN_count [2])
  );
  FD   \ee201_debouncer_0/MCEN_count_1  (
    .C(board_clk),
    .D(\ee201_debouncer_0/MCEN_count_mux0000 [2]),
    .Q(\ee201_debouncer_0/MCEN_count [1])
  );
  FD   \ee201_debouncer_0/MCEN_count_0  (
    .C(board_clk),
    .D(\ee201_debouncer_0/MCEN_count_mux0000 [3]),
    .Q(\ee201_debouncer_0/MCEN_count [0])
  );
  FDC   \ee201_debouncer_1/state_FSM_FFd5  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_1/state_FSM_FFd5-In_837 ),
    .Q(\ee201_debouncer_1/state_FSM_FFd5_836 )
  );
  FDC   \ee201_debouncer_1/state_FSM_FFd4  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_1/state_FSM_FFd4-In ),
    .Q(\ee201_debouncer_1/state_FSM_FFd4_830 )
  );
  FDC   \ee201_debouncer_1/state_FSM_FFd6  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_1/state_FSM_FFd6-In ),
    .Q(\ee201_debouncer_1/state_FSM_FFd6_838 )
  );
  FDC   \ee201_debouncer_1/state_FSM_FFd2  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_1/state_FSM_FFd2-In ),
    .Q(\ee201_debouncer_1/state_FSM_FFd2_824 )
  );
  FDC   \ee201_debouncer_1/state_FSM_FFd1  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_1/state_FSM_FFd1-In ),
    .Q(\ee201_debouncer_1/state_FSM_FFd1_819 )
  );
  FDC   \ee201_debouncer_1/state_FSM_FFd3  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_1/state_FSM_FFd3-In ),
    .Q(\ee201_debouncer_1/state_FSM_FFd3_826 )
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<27>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [26]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<27>_rt_733 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [27])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<26>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [25]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<26>_rt_715 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [26])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<26>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [25]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<26>_rt_715 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [26])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<25>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [24]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<25>_rt_713 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [25])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<25>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [24]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<25>_rt_713 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [25])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<24>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [23]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<24>_rt_711 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [24])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<24>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [23]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<24>_rt_711 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [24])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<23>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [22]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<23>_rt_709 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [23])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<23>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [22]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<23>_rt_709 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [23])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<22>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [21]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<22>_rt_707 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [22])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<22>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [21]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<22>_rt_707 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [22])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<21>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [20]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<21>_rt_705 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [21])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<21>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [20]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<21>_rt_705 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [21])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<20>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [19]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<20>_rt_703 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [20])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<20>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [19]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<20>_rt_703 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [20])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<19>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [18]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<19>_rt_699 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [19])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<19>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [18]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<19>_rt_699 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [19])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<18>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [17]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<18>_rt_697 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [18])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<18>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [17]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<18>_rt_697 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [18])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<17>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [16]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<17>_rt_695 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [17])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<17>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [16]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<17>_rt_695 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [17])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<16>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [15]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<16>_rt_693 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [16])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<16>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [15]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<16>_rt_693 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [16])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<15>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [14]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<15>_rt_691 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [15])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<15>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [14]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<15>_rt_691 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [15])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<14>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [13]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<14>_rt_689 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [14])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<14>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [13]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<14>_rt_689 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [14])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<13>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [12]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<13>_rt_687 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [13])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<13>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [12]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<13>_rt_687 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [13])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<12>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [11]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<12>_rt_685 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [12])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<12>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [11]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<12>_rt_685 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [12])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<11>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [10]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<11>_rt_683 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [11])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<11>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [10]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<11>_rt_683 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [11])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<10>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [9]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<10>_rt_681 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [10])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<10>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [9]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<10>_rt_681 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [10])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<9>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [8]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<9>_rt_731 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [9])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<9>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [8]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<9>_rt_731 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [9])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<8>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [7]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<8>_rt_729 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [8])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<8>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [7]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<8>_rt_729 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [8])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<7>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [6]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<7>_rt_727 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [7])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<7>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [6]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<7>_rt_727 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [7])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<6>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [5]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<6>_rt_725 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [6])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<6>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [5]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<6>_rt_725 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [6])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<5>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [4]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<5>_rt_723 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [5])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<5>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [4]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<5>_rt_723 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [5])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<4>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [3]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<4>_rt_721 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [4])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<4>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [3]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<4>_rt_721 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [4])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<3>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [2]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<3>_rt_719 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [3])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<3>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [2]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<3>_rt_719 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [3])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<2>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [1]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<2>_rt_717 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [2])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<2>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [1]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<2>_rt_717 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [2])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<1>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [0]),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<1>_rt_701 ),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [1])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<1>  (
    .CI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [0]),
    .DI(N0),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<1>_rt_701 ),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [1])
  );
  XORCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\ee201_debouncer_1/Madd_debounce_count_addsub0000_lut [0]),
    .O(\ee201_debouncer_1/debounce_count_addsub0000 [0])
  );
  MUXCY   \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<0>  (
    .CI(N0),
    .DI(Dp_OBUF_70),
    .S(\ee201_debouncer_1/Madd_debounce_count_addsub0000_lut [0]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy [0])
  );
  FD   \ee201_debouncer_1/debounce_count_27  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [0]),
    .Q(\ee201_debouncer_1/debounce_count [27])
  );
  FD   \ee201_debouncer_1/debounce_count_26  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [1]),
    .Q(\ee201_debouncer_1/debounce_count [26])
  );
  FD   \ee201_debouncer_1/debounce_count_25  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [2]),
    .Q(\ee201_debouncer_1/debounce_count [25])
  );
  FD   \ee201_debouncer_1/debounce_count_24  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [3]),
    .Q(\ee201_debouncer_1/debounce_count [24])
  );
  FD   \ee201_debouncer_1/debounce_count_23  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [4]),
    .Q(\ee201_debouncer_1/debounce_count [23])
  );
  FD   \ee201_debouncer_1/debounce_count_22  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [5]),
    .Q(\ee201_debouncer_1/debounce_count [22])
  );
  FD   \ee201_debouncer_1/debounce_count_21  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [6]),
    .Q(\ee201_debouncer_1/debounce_count [21])
  );
  FD   \ee201_debouncer_1/debounce_count_20  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [7]),
    .Q(\ee201_debouncer_1/debounce_count [20])
  );
  FD   \ee201_debouncer_1/debounce_count_19  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [8]),
    .Q(\ee201_debouncer_1/debounce_count [19])
  );
  FD   \ee201_debouncer_1/debounce_count_18  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [9]),
    .Q(\ee201_debouncer_1/debounce_count [18])
  );
  FD   \ee201_debouncer_1/debounce_count_17  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [10]),
    .Q(\ee201_debouncer_1/debounce_count [17])
  );
  FD   \ee201_debouncer_1/debounce_count_16  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [11]),
    .Q(\ee201_debouncer_1/debounce_count [16])
  );
  FD   \ee201_debouncer_1/debounce_count_15  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [12]),
    .Q(\ee201_debouncer_1/debounce_count [15])
  );
  FD   \ee201_debouncer_1/debounce_count_14  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [13]),
    .Q(\ee201_debouncer_1/debounce_count [14])
  );
  FD   \ee201_debouncer_1/debounce_count_13  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [14]),
    .Q(\ee201_debouncer_1/debounce_count [13])
  );
  FD   \ee201_debouncer_1/debounce_count_12  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [15]),
    .Q(\ee201_debouncer_1/debounce_count [12])
  );
  FD   \ee201_debouncer_1/debounce_count_11  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [16]),
    .Q(\ee201_debouncer_1/debounce_count [11])
  );
  FD   \ee201_debouncer_1/debounce_count_10  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [17]),
    .Q(\ee201_debouncer_1/debounce_count [10])
  );
  FD   \ee201_debouncer_1/debounce_count_9  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [18]),
    .Q(\ee201_debouncer_1/debounce_count [9])
  );
  FD   \ee201_debouncer_1/debounce_count_8  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [19]),
    .Q(\ee201_debouncer_1/debounce_count [8])
  );
  FD   \ee201_debouncer_1/debounce_count_7  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [20]),
    .Q(\ee201_debouncer_1/debounce_count [7])
  );
  FD   \ee201_debouncer_1/debounce_count_6  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [21]),
    .Q(\ee201_debouncer_1/debounce_count [6])
  );
  FD   \ee201_debouncer_1/debounce_count_5  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [22]),
    .Q(\ee201_debouncer_1/debounce_count [5])
  );
  FD   \ee201_debouncer_1/debounce_count_4  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [23]),
    .Q(\ee201_debouncer_1/debounce_count [4])
  );
  FD   \ee201_debouncer_1/debounce_count_3  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [24]),
    .Q(\ee201_debouncer_1/debounce_count [3])
  );
  FD   \ee201_debouncer_1/debounce_count_2  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [25]),
    .Q(\ee201_debouncer_1/debounce_count [2])
  );
  FD   \ee201_debouncer_1/debounce_count_1  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [26]),
    .Q(\ee201_debouncer_1/debounce_count [1])
  );
  FD   \ee201_debouncer_1/debounce_count_0  (
    .C(board_clk),
    .D(\ee201_debouncer_1/debounce_count_mux0000 [27]),
    .Q(\ee201_debouncer_1/debounce_count [0])
  );
  FD   \ee201_debouncer_1/MCEN_count_3  (
    .C(board_clk),
    .D(\ee201_debouncer_1/MCEN_count_mux0000 [0]),
    .Q(\ee201_debouncer_1/MCEN_count [3])
  );
  FD   \ee201_debouncer_1/MCEN_count_2  (
    .C(board_clk),
    .D(\ee201_debouncer_1/MCEN_count_mux0000 [1]),
    .Q(\ee201_debouncer_1/MCEN_count [2])
  );
  FD   \ee201_debouncer_1/MCEN_count_1  (
    .C(board_clk),
    .D(\ee201_debouncer_1/MCEN_count_mux0000 [2]),
    .Q(\ee201_debouncer_1/MCEN_count [1])
  );
  FD   \ee201_debouncer_1/MCEN_count_0  (
    .C(board_clk),
    .D(\ee201_debouncer_1/MCEN_count_mux0000 [3]),
    .Q(\ee201_debouncer_1/MCEN_count [0])
  );
  FDC   \ee201_debouncer_2/state_FSM_FFd5  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_2/state_FSM_FFd5-In_1014 ),
    .Q(\ee201_debouncer_2/state_FSM_FFd5_1013 )
  );
  FDC   \ee201_debouncer_2/state_FSM_FFd4  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_2/state_FSM_FFd4-In ),
    .Q(\ee201_debouncer_2/state_FSM_FFd4_1007 )
  );
  FDC   \ee201_debouncer_2/state_FSM_FFd6  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_2/state_FSM_FFd6-In ),
    .Q(\ee201_debouncer_2/state_FSM_FFd6_1015 )
  );
  FDC   \ee201_debouncer_2/state_FSM_FFd2  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_2/state_FSM_FFd2-In ),
    .Q(\ee201_debouncer_2/state_FSM_FFd2_1001 )
  );
  FDC   \ee201_debouncer_2/state_FSM_FFd1  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_2/state_FSM_FFd1-In ),
    .Q(\ee201_debouncer_2/state_FSM_FFd1_996 )
  );
  FDC   \ee201_debouncer_2/state_FSM_FFd3  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_debouncer_2/state_FSM_FFd3-In ),
    .Q(\ee201_debouncer_2/state_FSM_FFd3_1003 )
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<27>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [26]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<27>_rt_910 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [27])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<26>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [25]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<26>_rt_892 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [26])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<26>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [25]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<26>_rt_892 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [26])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<25>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [24]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<25>_rt_890 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [25])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<25>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [24]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<25>_rt_890 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [25])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<24>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [23]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<24>_rt_888 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [24])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<24>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [23]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<24>_rt_888 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [24])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<23>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [22]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<23>_rt_886 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [23])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<23>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [22]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<23>_rt_886 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [23])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<22>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [21]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<22>_rt_884 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [22])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<22>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [21]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<22>_rt_884 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [22])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<21>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [20]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<21>_rt_882 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [21])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<21>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [20]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<21>_rt_882 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [21])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<20>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [19]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<20>_rt_880 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [20])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<20>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [19]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<20>_rt_880 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [20])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<19>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [18]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<19>_rt_876 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [19])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<19>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [18]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<19>_rt_876 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [19])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<18>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [17]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<18>_rt_874 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [18])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<18>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [17]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<18>_rt_874 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [18])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<17>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [16]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<17>_rt_872 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [17])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<17>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [16]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<17>_rt_872 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [17])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<16>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [15]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<16>_rt_870 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [16])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<16>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [15]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<16>_rt_870 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [16])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<15>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [14]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<15>_rt_868 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [15])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<15>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [14]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<15>_rt_868 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [15])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<14>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [13]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<14>_rt_866 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [14])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<14>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [13]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<14>_rt_866 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [14])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<13>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [12]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<13>_rt_864 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [13])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<13>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [12]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<13>_rt_864 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [13])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<12>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [11]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<12>_rt_862 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [12])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<12>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [11]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<12>_rt_862 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [12])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<11>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [10]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<11>_rt_860 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [11])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<11>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [10]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<11>_rt_860 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [11])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<10>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [9]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<10>_rt_858 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [10])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<10>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [9]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<10>_rt_858 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [10])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<9>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [8]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<9>_rt_908 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [9])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<9>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [8]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<9>_rt_908 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [9])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<8>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [7]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<8>_rt_906 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [8])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<8>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [7]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<8>_rt_906 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [8])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<7>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [6]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<7>_rt_904 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [7])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<7>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [6]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<7>_rt_904 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [7])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<6>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [5]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<6>_rt_902 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [6])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<6>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [5]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<6>_rt_902 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [6])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<5>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [4]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<5>_rt_900 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [5])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<5>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [4]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<5>_rt_900 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [5])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<4>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [3]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<4>_rt_898 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [4])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<4>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [3]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<4>_rt_898 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [4])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<3>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [2]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<3>_rt_896 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [3])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<3>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [2]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<3>_rt_896 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [3])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<2>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [1]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<2>_rt_894 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [2])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<2>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [1]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<2>_rt_894 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [2])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<1>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [0]),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<1>_rt_878 ),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [1])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<1>  (
    .CI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [0]),
    .DI(N0),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<1>_rt_878 ),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [1])
  );
  XORCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\ee201_debouncer_2/Madd_debounce_count_addsub0000_lut [0]),
    .O(\ee201_debouncer_2/debounce_count_addsub0000 [0])
  );
  MUXCY   \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<0>  (
    .CI(N0),
    .DI(Dp_OBUF_70),
    .S(\ee201_debouncer_2/Madd_debounce_count_addsub0000_lut [0]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy [0])
  );
  FD   \ee201_debouncer_2/debounce_count_27  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [0]),
    .Q(\ee201_debouncer_2/debounce_count [27])
  );
  FD   \ee201_debouncer_2/debounce_count_26  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [1]),
    .Q(\ee201_debouncer_2/debounce_count [26])
  );
  FD   \ee201_debouncer_2/debounce_count_25  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [2]),
    .Q(\ee201_debouncer_2/debounce_count [25])
  );
  FD   \ee201_debouncer_2/debounce_count_24  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [3]),
    .Q(\ee201_debouncer_2/debounce_count [24])
  );
  FD   \ee201_debouncer_2/debounce_count_23  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [4]),
    .Q(\ee201_debouncer_2/debounce_count [23])
  );
  FD   \ee201_debouncer_2/debounce_count_22  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [5]),
    .Q(\ee201_debouncer_2/debounce_count [22])
  );
  FD   \ee201_debouncer_2/debounce_count_21  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [6]),
    .Q(\ee201_debouncer_2/debounce_count [21])
  );
  FD   \ee201_debouncer_2/debounce_count_20  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [7]),
    .Q(\ee201_debouncer_2/debounce_count [20])
  );
  FD   \ee201_debouncer_2/debounce_count_19  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [8]),
    .Q(\ee201_debouncer_2/debounce_count [19])
  );
  FD   \ee201_debouncer_2/debounce_count_18  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [9]),
    .Q(\ee201_debouncer_2/debounce_count [18])
  );
  FD   \ee201_debouncer_2/debounce_count_17  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [10]),
    .Q(\ee201_debouncer_2/debounce_count [17])
  );
  FD   \ee201_debouncer_2/debounce_count_16  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [11]),
    .Q(\ee201_debouncer_2/debounce_count [16])
  );
  FD   \ee201_debouncer_2/debounce_count_15  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [12]),
    .Q(\ee201_debouncer_2/debounce_count [15])
  );
  FD   \ee201_debouncer_2/debounce_count_14  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [13]),
    .Q(\ee201_debouncer_2/debounce_count [14])
  );
  FD   \ee201_debouncer_2/debounce_count_13  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [14]),
    .Q(\ee201_debouncer_2/debounce_count [13])
  );
  FD   \ee201_debouncer_2/debounce_count_12  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [15]),
    .Q(\ee201_debouncer_2/debounce_count [12])
  );
  FD   \ee201_debouncer_2/debounce_count_11  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [16]),
    .Q(\ee201_debouncer_2/debounce_count [11])
  );
  FD   \ee201_debouncer_2/debounce_count_10  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [17]),
    .Q(\ee201_debouncer_2/debounce_count [10])
  );
  FD   \ee201_debouncer_2/debounce_count_9  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [18]),
    .Q(\ee201_debouncer_2/debounce_count [9])
  );
  FD   \ee201_debouncer_2/debounce_count_8  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [19]),
    .Q(\ee201_debouncer_2/debounce_count [8])
  );
  FD   \ee201_debouncer_2/debounce_count_7  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [20]),
    .Q(\ee201_debouncer_2/debounce_count [7])
  );
  FD   \ee201_debouncer_2/debounce_count_6  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [21]),
    .Q(\ee201_debouncer_2/debounce_count [6])
  );
  FD   \ee201_debouncer_2/debounce_count_5  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [22]),
    .Q(\ee201_debouncer_2/debounce_count [5])
  );
  FD   \ee201_debouncer_2/debounce_count_4  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [23]),
    .Q(\ee201_debouncer_2/debounce_count [4])
  );
  FD   \ee201_debouncer_2/debounce_count_3  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [24]),
    .Q(\ee201_debouncer_2/debounce_count [3])
  );
  FD   \ee201_debouncer_2/debounce_count_2  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [25]),
    .Q(\ee201_debouncer_2/debounce_count [2])
  );
  FD   \ee201_debouncer_2/debounce_count_1  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [26]),
    .Q(\ee201_debouncer_2/debounce_count [1])
  );
  FD   \ee201_debouncer_2/debounce_count_0  (
    .C(board_clk),
    .D(\ee201_debouncer_2/debounce_count_mux0000 [27]),
    .Q(\ee201_debouncer_2/debounce_count [0])
  );
  FD   \ee201_debouncer_2/MCEN_count_3  (
    .C(board_clk),
    .D(\ee201_debouncer_2/MCEN_count_mux0000 [0]),
    .Q(\ee201_debouncer_2/MCEN_count [3])
  );
  FD   \ee201_debouncer_2/MCEN_count_2  (
    .C(board_clk),
    .D(\ee201_debouncer_2/MCEN_count_mux0000 [1]),
    .Q(\ee201_debouncer_2/MCEN_count [2])
  );
  FD   \ee201_debouncer_2/MCEN_count_1  (
    .C(board_clk),
    .D(\ee201_debouncer_2/MCEN_count_mux0000 [2]),
    .Q(\ee201_debouncer_2/MCEN_count [1])
  );
  FD   \ee201_debouncer_2/MCEN_count_0  (
    .C(board_clk),
    .D(\ee201_debouncer_2/MCEN_count_mux0000 [3]),
    .Q(\ee201_debouncer_2/MCEN_count [0])
  );
  FDC   \ee201_GCD_1/state_FSM_FFd2  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_GCD_1/state_FSM_FFd2-In ),
    .Q(\ee201_GCD_1/state_FSM_FFd2_478 )
  );
  FDC   \ee201_GCD_1/state_FSM_FFd1  (
    .C(board_clk),
    .CLR(BtnC_IBUF_29),
    .D(\ee201_GCD_1/state_FSM_FFd1-In ),
    .Q(\ee201_GCD_1/state_FSM_FFd1_474 )
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<7>  (
    .CI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [6]),
    .DI(\ee201_GCD_1/A [7]),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [7]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<7>  (
    .I0(\ee201_GCD_1/B [7]),
    .I1(\ee201_GCD_1/A [7]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [7])
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<6>  (
    .CI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [5]),
    .DI(\ee201_GCD_1/A [6]),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [6]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<6>  (
    .I0(\ee201_GCD_1/B [6]),
    .I1(\ee201_GCD_1/A [6]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [6])
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<5>  (
    .CI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [4]),
    .DI(\ee201_GCD_1/A [5]),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [5]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<5>  (
    .I0(\ee201_GCD_1/B [5]),
    .I1(\ee201_GCD_1/A [5]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [5])
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<4>  (
    .CI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [3]),
    .DI(\ee201_GCD_1/A [4]),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [4]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<4>  (
    .I0(\ee201_GCD_1/B [4]),
    .I1(\ee201_GCD_1/A [4]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [4])
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<3>  (
    .CI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [2]),
    .DI(\ee201_GCD_1/A [3]),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [3]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<3>  (
    .I0(\ee201_GCD_1/B [3]),
    .I1(\ee201_GCD_1/A [3]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [3])
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<2>  (
    .CI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [1]),
    .DI(\ee201_GCD_1/A [2]),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [2]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<2>  (
    .I0(\ee201_GCD_1/B [2]),
    .I1(\ee201_GCD_1/A [2]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [2])
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<1>  (
    .CI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [0]),
    .DI(\ee201_GCD_1/A [1]),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [1]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<1>  (
    .I0(\ee201_GCD_1/B [1]),
    .I1(\ee201_GCD_1/A [1]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [1])
  );
  MUXCY   \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy<0>  (
    .CI(Dp_OBUF_70),
    .DI(\ee201_GCD_1/A_0_1_333 ),
    .S(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [0]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<0>  (
    .I0(\ee201_GCD_1/A_0_1_333 ),
    .I1(\ee201_GCD_1/B [0]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut [0])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<7>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [6]),
    .LI(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<7>_1_430 ),
    .O(\ee201_GCD_1/A_addsub0000 [7])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<6>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [5]),
    .LI(\ee201_GCD_1/Msub_A_addsub0000_lut [6]),
    .O(\ee201_GCD_1/A_addsub0000 [6])
  );
  MUXCY   \ee201_GCD_1/Msub_A_addsub0000_cy<6>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [5]),
    .DI(\ee201_GCD_1/A [6]),
    .S(\ee201_GCD_1/Msub_A_addsub0000_lut [6]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Msub_A_addsub0000_lut<6>  (
    .I0(\ee201_GCD_1/B [6]),
    .I1(\ee201_GCD_1/A [6]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_lut [6])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<5>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [4]),
    .LI(\ee201_GCD_1/Msub_A_addsub0000_lut [5]),
    .O(\ee201_GCD_1/A_addsub0000 [5])
  );
  MUXCY   \ee201_GCD_1/Msub_A_addsub0000_cy<5>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [4]),
    .DI(\ee201_GCD_1/A [5]),
    .S(\ee201_GCD_1/Msub_A_addsub0000_lut [5]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Msub_A_addsub0000_lut<5>  (
    .I0(\ee201_GCD_1/B [5]),
    .I1(\ee201_GCD_1/A [5]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_lut [5])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<4>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [3]),
    .LI(\ee201_GCD_1/Msub_A_addsub0000_lut [4]),
    .O(\ee201_GCD_1/A_addsub0000 [4])
  );
  MUXCY   \ee201_GCD_1/Msub_A_addsub0000_cy<4>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [3]),
    .DI(\ee201_GCD_1/A [4]),
    .S(\ee201_GCD_1/Msub_A_addsub0000_lut [4]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Msub_A_addsub0000_lut<4>  (
    .I0(\ee201_GCD_1/B [4]),
    .I1(\ee201_GCD_1/A [4]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_lut [4])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<3>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [2]),
    .LI(\ee201_GCD_1/Msub_A_addsub0000_lut [3]),
    .O(\ee201_GCD_1/A_addsub0000 [3])
  );
  MUXCY   \ee201_GCD_1/Msub_A_addsub0000_cy<3>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [2]),
    .DI(\ee201_GCD_1/A [3]),
    .S(\ee201_GCD_1/Msub_A_addsub0000_lut [3]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Msub_A_addsub0000_lut<3>  (
    .I0(\ee201_GCD_1/B [3]),
    .I1(\ee201_GCD_1/A [3]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_lut [3])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<2>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [1]),
    .LI(\ee201_GCD_1/Msub_A_addsub0000_lut [2]),
    .O(\ee201_GCD_1/A_addsub0000 [2])
  );
  MUXCY   \ee201_GCD_1/Msub_A_addsub0000_cy<2>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [1]),
    .DI(\ee201_GCD_1/A [2]),
    .S(\ee201_GCD_1/Msub_A_addsub0000_lut [2]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Msub_A_addsub0000_lut<2>  (
    .I0(\ee201_GCD_1/B [2]),
    .I1(\ee201_GCD_1/A [2]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_lut [2])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<1>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [0]),
    .LI(\ee201_GCD_1/Msub_A_addsub0000_lut [1]),
    .O(\ee201_GCD_1/A_addsub0000 [1])
  );
  MUXCY   \ee201_GCD_1/Msub_A_addsub0000_cy<1>  (
    .CI(\ee201_GCD_1/Msub_A_addsub0000_cy [0]),
    .DI(\ee201_GCD_1/A [1]),
    .S(\ee201_GCD_1/Msub_A_addsub0000_lut [1]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Msub_A_addsub0000_lut<1>  (
    .I0(\ee201_GCD_1/B [1]),
    .I1(\ee201_GCD_1/A [1]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_lut [1])
  );
  XORCY   \ee201_GCD_1/Msub_A_addsub0000_xor<0>  (
    .CI(Dp_OBUF_70),
    .LI(\ee201_GCD_1/Msub_A_addsub0000_lut [0]),
    .O(\ee201_GCD_1/A_addsub0000 [0])
  );
  MUXCY   \ee201_GCD_1/Msub_A_addsub0000_cy<0>  (
    .CI(Dp_OBUF_70),
    .DI(\ee201_GCD_1/A_0_1_333 ),
    .S(\ee201_GCD_1/Msub_A_addsub0000_lut [0]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Msub_A_addsub0000_lut<0>  (
    .I0(\ee201_GCD_1/A_0_1_333 ),
    .I1(\ee201_GCD_1/B [0]),
    .O(\ee201_GCD_1/Msub_A_addsub0000_lut [0])
  );
  FD   \ee201_GCD_1/AB_GCD_7  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [0]),
    .Q(\ee201_GCD_1/AB_GCD [7])
  );
  FD   \ee201_GCD_1/AB_GCD_6  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [1]),
    .Q(\ee201_GCD_1/AB_GCD [6])
  );
  FD   \ee201_GCD_1/AB_GCD_5  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [2]),
    .Q(\ee201_GCD_1/AB_GCD [5])
  );
  FD   \ee201_GCD_1/AB_GCD_4  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [3]),
    .Q(\ee201_GCD_1/AB_GCD [4])
  );
  FD   \ee201_GCD_1/AB_GCD_3  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [4]),
    .Q(\ee201_GCD_1/AB_GCD [3])
  );
  FD   \ee201_GCD_1/AB_GCD_2  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [5]),
    .Q(\ee201_GCD_1/AB_GCD [2])
  );
  FD   \ee201_GCD_1/AB_GCD_1  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [6]),
    .Q(\ee201_GCD_1/AB_GCD [1])
  );
  FD   \ee201_GCD_1/AB_GCD_0  (
    .C(board_clk),
    .D(\ee201_GCD_1/AB_GCD_mux0000 [7]),
    .Q(\ee201_GCD_1/AB_GCD [0])
  );
  FD   \ee201_GCD_1/i_count_7  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000[0] ),
    .Q(\ee201_GCD_1/i_count [7])
  );
  FD   \ee201_GCD_1/i_count_3  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000[4] ),
    .Q(\ee201_GCD_1/i_count [3])
  );
  FD   \ee201_GCD_1/i_count_2  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000[5] ),
    .Q(\ee201_GCD_1/i_count [2])
  );
  FD   \ee201_GCD_1/i_count_1  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000[6] ),
    .Q(\ee201_GCD_1/i_count [1])
  );
  FD   \ee201_GCD_1/i_count_0  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000[7] ),
    .Q(\ee201_GCD_1/i_count [0])
  );
  FD   \ee201_GCD_1/A_0  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000 [0]),
    .Q(\ee201_GCD_1/A [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  An31 (
    .I0(DIV_CLK[19]),
    .I1(DIV_CLK[18]),
    .O(An3_OBUF_18)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  An21 (
    .I0(DIV_CLK[18]),
    .I1(DIV_CLK[19]),
    .O(An2_OBUF_16)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  An11 (
    .I0(DIV_CLK[19]),
    .I1(DIV_CLK[18]),
    .O(An1_OBUF_14)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  An01 (
    .I0(DIV_CLK[19]),
    .I1(DIV_CLK[18]),
    .O(An0_OBUF_12)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \ee201_debouncer_2/state_FSM_FFd2-In1  (
    .I0(Ld3_OBUF_79),
    .I1(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I2(\ee201_debouncer_2/debounce_count [23]),
    .I3(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .O(\ee201_debouncer_2/state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \ee201_debouncer_1/state_FSM_FFd2-In1  (
    .I0(Ld1_OBUF_75),
    .I1(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I2(\ee201_debouncer_1/debounce_count [23]),
    .I3(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .O(\ee201_debouncer_1/state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \ee201_debouncer_0/state_FSM_FFd2-In1  (
    .I0(Ld2_OBUF_77),
    .I1(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I2(\ee201_debouncer_0/debounce_count [23]),
    .I3(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .O(\ee201_debouncer_0/state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Bin_not00011 (
    .I0(A_bar_slash_B_0),
    .I1(\ee201_debouncer_1/state_FSM_FFd2_824 ),
    .O(Bin_not0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Ain_not00011 (
    .I0(\ee201_debouncer_1/state_FSM_FFd2_824 ),
    .I1(A_bar_slash_B_0),
    .O(Ain_not0001)
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \ee201_debouncer_2/state_FSM_FFd5-In_SW0  (
    .I0(Ld3_OBUF_79),
    .I1(\ee201_debouncer_2/debounce_count [23]),
    .I2(\ee201_debouncer_2/state_FSM_FFd5_1013 ),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'h20FF ))
  \ee201_debouncer_2/state_FSM_FFd5-In  (
    .I0(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I3(N14),
    .O(\ee201_debouncer_2/state_FSM_FFd5-In_1014 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \ee201_debouncer_1/state_FSM_FFd5-In_SW0  (
    .I0(Ld1_OBUF_75),
    .I1(\ee201_debouncer_1/debounce_count [23]),
    .I2(\ee201_debouncer_1/state_FSM_FFd5_836 ),
    .O(N16)
  );
  LUT4 #(
    .INIT ( 16'h20FF ))
  \ee201_debouncer_1/state_FSM_FFd5-In  (
    .I0(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I3(N16),
    .O(\ee201_debouncer_1/state_FSM_FFd5-In_837 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \ee201_debouncer_0/state_FSM_FFd5-In_SW0  (
    .I0(Ld2_OBUF_77),
    .I1(\ee201_debouncer_0/debounce_count [23]),
    .I2(\ee201_debouncer_0/state_FSM_FFd5_659 ),
    .O(N18)
  );
  LUT4 #(
    .INIT ( 16'h20FF ))
  \ee201_debouncer_0/state_FSM_FFd5-In  (
    .I0(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I3(N18),
    .O(\ee201_debouncer_0/state_FSM_FFd5-In_660 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_GCD_1/A_mux0000<0>611  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(\ee201_GCD_1/N301 )
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \ee201_debouncer_2/state_FSM_FFd1-In9  (
    .I0(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd5_1013 ),
    .I3(\ee201_debouncer_2/MCEN_count_or0001 ),
    .O(\ee201_debouncer_2/state_FSM_FFd1-In9_1000 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \ee201_debouncer_2/state_FSM_FFd1-In15  (
    .I0(\ee201_debouncer_2/state_FSM_FFd5_1013 ),
    .I1(\ee201_debouncer_2/debounce_count [23]),
    .I2(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .O(\ee201_debouncer_2/state_FSM_FFd1-In15_998 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \ee201_debouncer_2/state_FSM_FFd1-In21  (
    .I0(Ld3_OBUF_79),
    .I1(\ee201_debouncer_2/debounce_count [23]),
    .I2(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I3(\ee201_debouncer_2/state_FSM_FFd5_1013 ),
    .O(\ee201_debouncer_2/state_FSM_FFd1-In21_999 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ee201_debouncer_2/state_FSM_FFd1-In30  (
    .I0(\ee201_debouncer_2/state_FSM_FFd1-In9_1000 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd1-In15_998 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd1-In21_999 ),
    .O(\ee201_debouncer_2/state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \ee201_debouncer_1/state_FSM_FFd1-In9  (
    .I0(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd5_836 ),
    .I3(\ee201_debouncer_1/MCEN_count_or0001 ),
    .O(\ee201_debouncer_1/state_FSM_FFd1-In9_823 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \ee201_debouncer_1/state_FSM_FFd1-In15  (
    .I0(\ee201_debouncer_1/state_FSM_FFd5_836 ),
    .I1(\ee201_debouncer_1/debounce_count [23]),
    .I2(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .O(\ee201_debouncer_1/state_FSM_FFd1-In15_821 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \ee201_debouncer_1/state_FSM_FFd1-In21  (
    .I0(Ld1_OBUF_75),
    .I1(\ee201_debouncer_1/debounce_count [23]),
    .I2(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I3(\ee201_debouncer_1/state_FSM_FFd5_836 ),
    .O(\ee201_debouncer_1/state_FSM_FFd1-In21_822 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ee201_debouncer_1/state_FSM_FFd1-In30  (
    .I0(\ee201_debouncer_1/state_FSM_FFd1-In9_823 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd1-In15_821 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd1-In21_822 ),
    .O(\ee201_debouncer_1/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \ee201_debouncer_0/state_FSM_FFd1-In15  (
    .I0(\ee201_debouncer_0/state_FSM_FFd5_659 ),
    .I1(\ee201_debouncer_0/debounce_count [23]),
    .I2(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .O(\ee201_debouncer_0/state_FSM_FFd1-In15_644 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \ee201_debouncer_0/state_FSM_FFd1-In21  (
    .I0(Ld2_OBUF_77),
    .I1(\ee201_debouncer_0/debounce_count [23]),
    .I2(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd5_659 ),
    .O(\ee201_debouncer_0/state_FSM_FFd1-In21_645 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \ee201_debouncer_0/state_FSM_FFd1-In30  (
    .I0(\ee201_debouncer_0/state_FSM_FFd1-In9_646 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd1-In15_644 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd1-In21_645 ),
    .O(\ee201_debouncer_0/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \ee201_debouncer_2/MCEN_count_mux0000<3>1  (
    .I0(\ee201_debouncer_2/MCEN_count [0]),
    .I1(N210),
    .I2(\ee201_debouncer_2/MCEN_count_or0001 ),
    .O(\ee201_debouncer_2/MCEN_count_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \ee201_debouncer_1/MCEN_count_mux0000<3>1  (
    .I0(\ee201_debouncer_1/MCEN_count [0]),
    .I1(N211),
    .I2(\ee201_debouncer_1/MCEN_count_or0001 ),
    .O(\ee201_debouncer_1/MCEN_count_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \ee201_debouncer_0/MCEN_count_mux0000<3>1  (
    .I0(\ee201_debouncer_0/MCEN_count [0]),
    .I1(N212),
    .I2(\ee201_debouncer_0/MCEN_count_or0001 ),
    .O(\ee201_debouncer_0/MCEN_count_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \ee201_debouncer_2/state_Out31  (
    .I0(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd5_1013 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I3(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .O(\ee201_debouncer_2/state_cmp_eq0004 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \ee201_debouncer_1/state_Out31  (
    .I0(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd5_836 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I3(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .O(\ee201_debouncer_1/state_cmp_eq0004 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \ee201_debouncer_0/state_Out31  (
    .I0(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd5_659 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .O(\ee201_debouncer_0/state_cmp_eq0004 )
  );
  LUT4 #(
    .INIT ( 16'h72A2 ))
  \ee201_debouncer_2/MCEN_count_mux0000<2>1  (
    .I0(\ee201_debouncer_2/MCEN_count [1]),
    .I1(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I2(\ee201_debouncer_2/MCEN_count_or0001 ),
    .I3(\ee201_debouncer_2/MCEN_count [0]),
    .O(\ee201_debouncer_2/MCEN_count_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h72A2 ))
  \ee201_debouncer_2/MCEN_count_mux0000<1>1  (
    .I0(\ee201_debouncer_2/MCEN_count [2]),
    .I1(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I2(\ee201_debouncer_2/MCEN_count_or0001 ),
    .I3(\ee201_debouncer_2/Madd_MCEN_count_addsub0000_cy [1]),
    .O(\ee201_debouncer_2/MCEN_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h72A2 ))
  \ee201_debouncer_1/MCEN_count_mux0000<2>1  (
    .I0(\ee201_debouncer_1/MCEN_count [1]),
    .I1(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I2(\ee201_debouncer_1/MCEN_count_or0001 ),
    .I3(\ee201_debouncer_1/MCEN_count [0]),
    .O(\ee201_debouncer_1/MCEN_count_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h72A2 ))
  \ee201_debouncer_1/MCEN_count_mux0000<1>1  (
    .I0(\ee201_debouncer_1/MCEN_count [2]),
    .I1(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I2(\ee201_debouncer_1/MCEN_count_or0001 ),
    .I3(\ee201_debouncer_1/Madd_MCEN_count_addsub0000_cy [1]),
    .O(\ee201_debouncer_1/MCEN_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h72A2 ))
  \ee201_debouncer_0/MCEN_count_mux0000<2>1  (
    .I0(\ee201_debouncer_0/MCEN_count [1]),
    .I1(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I2(\ee201_debouncer_0/MCEN_count_or0001 ),
    .I3(\ee201_debouncer_0/MCEN_count [0]),
    .O(\ee201_debouncer_0/MCEN_count_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h72A2 ))
  \ee201_debouncer_0/MCEN_count_mux0000<1>1  (
    .I0(\ee201_debouncer_0/MCEN_count [2]),
    .I1(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I2(\ee201_debouncer_0/MCEN_count_or0001 ),
    .I3(\ee201_debouncer_0/Madd_MCEN_count_addsub0000_cy [1]),
    .O(\ee201_debouncer_0/MCEN_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \ee201_debouncer_2/state_FSM_FFd3-In9  (
    .I0(\ee201_debouncer_2/debounce_count [27]),
    .I1(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd3_1003 ),
    .I3(\ee201_debouncer_2/state_cmp_eq0004 ),
    .O(\ee201_debouncer_2/state_FSM_FFd3-In9_1006 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \ee201_debouncer_2/state_FSM_FFd3-In19  (
    .I0(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I1(\ee201_debouncer_2/debounce_count [23]),
    .I2(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I3(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .O(\ee201_debouncer_2/state_FSM_FFd3-In19_1005 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ee201_debouncer_2/state_FSM_FFd3-In30  (
    .I0(Ld3_OBUF_79),
    .I1(\ee201_debouncer_2/state_FSM_FFd3-In9_1006 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd3-In19_1005 ),
    .O(\ee201_debouncer_2/state_FSM_FFd3-In )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \ee201_debouncer_1/state_FSM_FFd3-In9  (
    .I0(\ee201_debouncer_1/debounce_count [27]),
    .I1(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd3_826 ),
    .I3(\ee201_debouncer_1/state_cmp_eq0004 ),
    .O(\ee201_debouncer_1/state_FSM_FFd3-In9_829 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \ee201_debouncer_1/state_FSM_FFd3-In19  (
    .I0(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I1(\ee201_debouncer_1/debounce_count [23]),
    .I2(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I3(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .O(\ee201_debouncer_1/state_FSM_FFd3-In19_828 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ee201_debouncer_1/state_FSM_FFd3-In30  (
    .I0(Ld1_OBUF_75),
    .I1(\ee201_debouncer_1/state_FSM_FFd3-In9_829 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd3-In19_828 ),
    .O(\ee201_debouncer_1/state_FSM_FFd3-In )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \ee201_debouncer_0/state_FSM_FFd3-In9  (
    .I0(\ee201_debouncer_0/debounce_count [27]),
    .I1(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd3_649 ),
    .I3(\ee201_debouncer_0/state_cmp_eq0004 ),
    .O(\ee201_debouncer_0/state_FSM_FFd3-In9_652 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \ee201_debouncer_0/state_FSM_FFd3-In19  (
    .I0(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I1(\ee201_debouncer_0/debounce_count [23]),
    .I2(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .O(\ee201_debouncer_0/state_FSM_FFd3-In19_651 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ee201_debouncer_0/state_FSM_FFd3-In30  (
    .I0(Ld2_OBUF_77),
    .I1(\ee201_debouncer_0/state_FSM_FFd3-In9_652 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd3-In19_651 ),
    .O(\ee201_debouncer_0/state_FSM_FFd3-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_debouncer_2/state_FSM_FFd4-In8  (
    .I0(\ee201_debouncer_2/debounce_count [23]),
    .I1(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .O(\ee201_debouncer_2/state_FSM_FFd4-In8_1012 )
  );
  LUT4 #(
    .INIT ( 16'hF2A2 ))
  \ee201_debouncer_2/state_FSM_FFd4-In16  (
    .I0(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd3_1003 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I3(\ee201_debouncer_2/state_FSM_FFd4-In8_1012 ),
    .O(\ee201_debouncer_2/state_FSM_FFd4-In16_1009 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_debouncer_2/state_FSM_FFd4-In19  (
    .I0(\ee201_debouncer_2/debounce_count [27]),
    .I1(\ee201_debouncer_2/state_cmp_eq0004 ),
    .O(\ee201_debouncer_2/state_FSM_FFd4-In19_1010 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_debouncer_2/state_FSM_FFd4-In46  (
    .I0(\ee201_debouncer_2/state_FSM_FFd3_1003 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd2_1001 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .O(\ee201_debouncer_2/state_FSM_FFd4-In46_1011 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \ee201_debouncer_2/state_FSM_FFd4-In49  (
    .I0(Ld3_OBUF_79),
    .I1(\ee201_debouncer_2/state_FSM_FFd4-In16_1009 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd4-In46_1011 ),
    .I3(\ee201_debouncer_2/state_FSM_FFd4-In19_1010 ),
    .O(\ee201_debouncer_2/state_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_debouncer_1/state_FSM_FFd4-In8  (
    .I0(\ee201_debouncer_1/debounce_count [23]),
    .I1(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .O(\ee201_debouncer_1/state_FSM_FFd4-In8_835 )
  );
  LUT4 #(
    .INIT ( 16'hF2A2 ))
  \ee201_debouncer_1/state_FSM_FFd4-In16  (
    .I0(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd3_826 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I3(\ee201_debouncer_1/state_FSM_FFd4-In8_835 ),
    .O(\ee201_debouncer_1/state_FSM_FFd4-In16_832 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_debouncer_1/state_FSM_FFd4-In19  (
    .I0(\ee201_debouncer_1/debounce_count [27]),
    .I1(\ee201_debouncer_1/state_cmp_eq0004 ),
    .O(\ee201_debouncer_1/state_FSM_FFd4-In19_833 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_debouncer_1/state_FSM_FFd4-In46  (
    .I0(\ee201_debouncer_1/state_FSM_FFd3_826 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd2_824 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .O(\ee201_debouncer_1/state_FSM_FFd4-In46_834 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \ee201_debouncer_1/state_FSM_FFd4-In49  (
    .I0(Ld1_OBUF_75),
    .I1(\ee201_debouncer_1/state_FSM_FFd4-In16_832 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd4-In46_834 ),
    .I3(\ee201_debouncer_1/state_FSM_FFd4-In19_833 ),
    .O(\ee201_debouncer_1/state_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_debouncer_0/state_FSM_FFd4-In8  (
    .I0(\ee201_debouncer_0/debounce_count [23]),
    .I1(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .O(\ee201_debouncer_0/state_FSM_FFd4-In8_658 )
  );
  LUT4 #(
    .INIT ( 16'hF2A2 ))
  \ee201_debouncer_0/state_FSM_FFd4-In16  (
    .I0(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd3_649 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd4-In8_658 ),
    .O(\ee201_debouncer_0/state_FSM_FFd4-In16_655 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_debouncer_0/state_FSM_FFd4-In19  (
    .I0(\ee201_debouncer_0/debounce_count [27]),
    .I1(\ee201_debouncer_0/state_cmp_eq0004 ),
    .O(\ee201_debouncer_0/state_FSM_FFd4-In19_656 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_debouncer_0/state_FSM_FFd4-In46  (
    .I0(\ee201_debouncer_0/state_FSM_FFd3_649 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .O(\ee201_debouncer_0/state_FSM_FFd4-In46_657 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \ee201_debouncer_0/state_FSM_FFd4-In49  (
    .I0(Ld2_OBUF_77),
    .I1(\ee201_debouncer_0/state_FSM_FFd4-In16_655 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd4-In46_657 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd4-In19_656 ),
    .O(\ee201_debouncer_0/state_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_debouncer_2/Madd_MCEN_count_addsub0000_cy<1>11  (
    .I0(\ee201_debouncer_2/MCEN_count [1]),
    .I1(\ee201_debouncer_2/MCEN_count [0]),
    .O(\ee201_debouncer_2/Madd_MCEN_count_addsub0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_debouncer_1/Madd_MCEN_count_addsub0000_cy<1>11  (
    .I0(\ee201_debouncer_1/MCEN_count [1]),
    .I1(\ee201_debouncer_1/MCEN_count [0]),
    .O(\ee201_debouncer_1/Madd_MCEN_count_addsub0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_debouncer_0/Madd_MCEN_count_addsub0000_cy<1>11  (
    .I0(\ee201_debouncer_0/MCEN_count [1]),
    .I1(\ee201_debouncer_0/MCEN_count [0]),
    .O(\ee201_debouncer_0/Madd_MCEN_count_addsub0000_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \ee201_debouncer_2/MCEN_count_or00011  (
    .I0(\ee201_debouncer_2/state_FSM_FFd3_1003 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd2_1001 ),
    .O(\ee201_debouncer_2/MCEN_count_or0001 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \ee201_debouncer_1/MCEN_count_or00011  (
    .I0(\ee201_debouncer_1/state_FSM_FFd3_826 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd2_824 ),
    .O(\ee201_debouncer_1/MCEN_count_or0001 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \ee201_debouncer_0/MCEN_count_or00011  (
    .I0(\ee201_debouncer_0/state_FSM_FFd3_649 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(\ee201_debouncer_0/MCEN_count_or0001 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \ee201_debouncer_2/debounce_count_or0001  (
    .I0(\ee201_debouncer_2/state_FSM_FFd5_1013 ),
    .I1(N28),
    .O(\ee201_debouncer_2/debounce_count_or0001_995 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \ee201_debouncer_1/debounce_count_or0001  (
    .I0(\ee201_debouncer_1/state_FSM_FFd5_836 ),
    .I1(N30),
    .O(\ee201_debouncer_1/debounce_count_or0001_818 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \ee201_debouncer_0/debounce_count_or0001  (
    .I0(\ee201_debouncer_0/state_FSM_FFd5_659 ),
    .I1(N32),
    .O(\ee201_debouncer_0/debounce_count_or0001_641 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \ee201_debouncer_2/state_FSM_FFd6-In32  (
    .I0(\ee201_debouncer_2/MCEN_count [2]),
    .I1(\ee201_debouncer_2/MCEN_count [1]),
    .O(\ee201_debouncer_2/state_FSM_FFd6-In32_1018 )
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \ee201_debouncer_2/state_FSM_FFd6-In63  (
    .I0(\ee201_debouncer_2/state_FSM_FFd6-In36_1019 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd3_1003 ),
    .I2(Ld3_OBUF_79),
    .I3(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .O(\ee201_debouncer_2/state_FSM_FFd6-In63_1020 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \ee201_debouncer_2/state_FSM_FFd6-In83  (
    .I0(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd6-In63_1020 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd6-In17_1017 ),
    .O(\ee201_debouncer_2/state_FSM_FFd6-In )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \ee201_debouncer_1/state_FSM_FFd6-In36  (
    .I0(\ee201_debouncer_1/debounce_count [27]),
    .I1(\ee201_debouncer_1/MCEN_count [0]),
    .I2(\ee201_debouncer_1/MCEN_count [3]),
    .I3(\ee201_debouncer_1/state_FSM_FFd6-In32_841 ),
    .O(\ee201_debouncer_1/state_FSM_FFd6-In36_842 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \ee201_debouncer_1/state_FSM_FFd6-In83  (
    .I0(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd6-In63_843 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd6-In17_840 ),
    .O(\ee201_debouncer_1/state_FSM_FFd6-In )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \ee201_debouncer_0/state_FSM_FFd6-In36  (
    .I0(\ee201_debouncer_0/debounce_count [27]),
    .I1(\ee201_debouncer_0/MCEN_count [0]),
    .I2(\ee201_debouncer_0/MCEN_count [3]),
    .I3(\ee201_debouncer_0/state_FSM_FFd6-In32_664 ),
    .O(\ee201_debouncer_0/state_FSM_FFd6-In36_665 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \ee201_debouncer_0/state_FSM_FFd6-In83  (
    .I0(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd6-In63_666 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd6-In17_663 ),
    .O(\ee201_debouncer_0/state_FSM_FFd6-In )
  );
  LUT4 #(
    .INIT ( 16'h57FF ))
  \ee201_GCD_1/AB_GCD_mux0000<7>12  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000<7>12_330 )
  );
  LUT4 #(
    .INIT ( 16'hF444 ))
  \ee201_GCD_1/AB_GCD_mux0000<7>37  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/AB_GCD_mux0000<7>26_331 ),
    .I2(\ee201_GCD_1/AB_GCD_mux0000<7>12_330 ),
    .I3(\ee201_GCD_1/AB_GCD [0]),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \ee201_GCD_1/AB_GCD_mux0000<6>12  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/state_cmp_eq0000 ),
    .I2(\ee201_GCD_1/A [1]),
    .I3(\ee201_GCD_1/AB_GCD [0]),
    .O(\ee201_GCD_1/AB_GCD_mux0000<6>12_328 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \ee201_GCD_1/AB_GCD_mux0000<6>21  (
    .I0(\ee201_GCD_1/AB_GCD [1]),
    .I1(N213),
    .I2(\ee201_GCD_1/N301 ),
    .I3(\ee201_GCD_1/AB_GCD_mux0000<6>12_328 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/AB_GCD_mux0000<5>  (
    .I0(\ee201_GCD_1/AB_GCD [2]),
    .I1(\ee201_GCD_1/N301 ),
    .I2(N34),
    .I3(\ee201_GCD_1/N5 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/AB_GCD_mux0000<4>  (
    .I0(\ee201_GCD_1/AB_GCD [3]),
    .I1(\ee201_GCD_1/N301 ),
    .I2(N36),
    .I3(\ee201_GCD_1/N5 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/AB_GCD_mux0000<3>  (
    .I0(\ee201_GCD_1/AB_GCD [4]),
    .I1(\ee201_GCD_1/N301 ),
    .I2(N38),
    .I3(\ee201_GCD_1/N5 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/AB_GCD_mux0000<2>  (
    .I0(\ee201_GCD_1/AB_GCD [5]),
    .I1(\ee201_GCD_1/N301 ),
    .I2(N40),
    .I3(\ee201_GCD_1/N5 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/AB_GCD_mux0000<1>  (
    .I0(\ee201_GCD_1/AB_GCD [6]),
    .I1(\ee201_GCD_1/N301 ),
    .I2(N42),
    .I3(\ee201_GCD_1/N5 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/AB_GCD_mux0000<0>  (
    .I0(\ee201_GCD_1/AB_GCD [7]),
    .I1(\ee201_GCD_1/N301 ),
    .I2(N44),
    .I3(\ee201_GCD_1/N5 ),
    .O(\ee201_GCD_1/AB_GCD_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/state_FSM_Out31  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(Ld4_OBUF_81)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ee201_GCD_1/state_FSM_Out21  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(Ld5_OBUF_83)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \ee201_GCD_1/B_mux0000<7>11  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(Ld7_OBUF_87)
  );
  LUT4 #(
    .INIT ( 16'h454C ))
  Mrom_SSD_CATHODES31 (
    .I0(SSD[3]),
    .I1(SSD[0]),
    .I2(SSD[1]),
    .I3(SSD[2]),
    .O(Ce_OBUF_43)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  Mrom_SSD_CATHODES51 (
    .I0(SSD[1]),
    .I1(SSD[3]),
    .I2(SSD[2]),
    .I3(SSD[0]),
    .O(Cc_OBUF_39)
  );
  LUT4 #(
    .INIT ( 16'hB860 ))
  Mrom_SSD_CATHODES61 (
    .I0(SSD[3]),
    .I1(SSD[0]),
    .I2(SSD[2]),
    .I3(SSD[1]),
    .O(Cb_OBUF_37)
  );
  LUT4 #(
    .INIT ( 16'h6032 ))
  Mrom_SSD_CATHODES21 (
    .I0(SSD[1]),
    .I1(SSD[3]),
    .I2(SSD[0]),
    .I3(SSD[2]),
    .O(Cf_OBUF_45)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  Mrom_SSD_CATHODES111 (
    .I0(SSD[1]),
    .I1(SSD[2]),
    .I2(SSD[3]),
    .I3(SSD[0]),
    .O(Cg_OBUF_47)
  );
  LUT4 #(
    .INIT ( 16'h9086 ))
  Mrom_SSD_CATHODES41 (
    .I0(SSD[0]),
    .I1(SSD[2]),
    .I2(SSD[1]),
    .I3(SSD[3]),
    .O(Cd_OBUF_41)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  Mrom_SSD_CATHODES71 (
    .I0(SSD[0]),
    .I1(SSD[1]),
    .I2(SSD[2]),
    .I3(SSD[3]),
    .O(Ca_OBUF_35)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \ee201_GCD_1/state_FSM_FFd2-In7  (
    .I0(\ee201_GCD_1/i_count [7]),
    .I1(\ee201_GCD_1/i_count [4]),
    .I2(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I3(\ee201_GCD_1/i_count [3]),
    .O(\ee201_GCD_1/state_FSM_FFd2-In7_482 )
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \ee201_GCD_1/state_cmp_eq0000826  (
    .I0(\ee201_GCD_1/B [4]),
    .I1(\ee201_GCD_1/B [1]),
    .I2(\ee201_GCD_1/A [1]),
    .I3(\ee201_GCD_1/A [4]),
    .O(\ee201_GCD_1/state_cmp_eq0000826_488 )
  );
  LUT4 #(
    .INIT ( 16'h8421 ))
  \ee201_GCD_1/state_cmp_eq0000853  (
    .I0(\ee201_GCD_1/B [6]),
    .I1(\ee201_GCD_1/B [5]),
    .I2(\ee201_GCD_1/A [6]),
    .I3(\ee201_GCD_1/A [5]),
    .O(\ee201_GCD_1/state_cmp_eq0000853_489 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \ee201_GCD_1/state_cmp_eq0000893  (
    .I0(\ee201_GCD_1/B_0_1_390 ),
    .I1(\ee201_GCD_1/A_0_1_333 ),
    .I2(\ee201_GCD_1/B [7]),
    .I3(\ee201_GCD_1/A [7]),
    .O(\ee201_GCD_1/state_cmp_eq0000893_490 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \ee201_GCD_1/state_cmp_eq00008136  (
    .I0(\ee201_GCD_1/state_cmp_eq0000893_490 ),
    .I1(N214),
    .I2(\ee201_GCD_1/state_cmp_eq0000853_489 ),
    .I3(\ee201_GCD_1/state_cmp_eq0000826_488 ),
    .O(\ee201_GCD_1/state_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \ee201_GCD_1/B_mux0000<7>_SW0  (
    .I0(Bin[7]),
    .I1(\ee201_GCD_1/B [7]),
    .I2(Ld7_OBUF_87),
    .I3(N217),
    .O(N86)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/A_mux0000<7>29  (
    .I0(Ain[7]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/A_mux0000<7>29_386 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \ee201_GCD_1/A_mux0000<0>55  (
    .I0(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .O(\ee201_GCD_1/A_mux0000<0>55_352 )
  );
  LUT4 #(
    .INIT ( 16'hBBA8 ))
  \ee201_GCD_1/A_mux0000<0>99  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/A_mux0000<0>15_350 ),
    .I3(\ee201_GCD_1/A_mux0000<0>66_353 ),
    .O(\ee201_GCD_1/A_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/A_mux0000<6>46  (
    .I0(Ain[6]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/A_mux0000<6>46_382 )
  );
  LUT4 #(
    .INIT ( 16'hFEAA ))
  \ee201_GCD_1/A_mux0000<6>49  (
    .I0(\ee201_GCD_1/A_mux0000<6>46_382 ),
    .I1(\ee201_GCD_1/A_mux0000<6>0_379 ),
    .I2(\ee201_GCD_1/A_mux0000<6>16_381 ),
    .I3(\ee201_GCD_1/N24 ),
    .O(\ee201_GCD_1/A_mux0000<6>49_383 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/A_mux0000<5>46  (
    .I0(Ain[5]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/A_mux0000<5>46_376 )
  );
  LUT4 #(
    .INIT ( 16'hFEAA ))
  \ee201_GCD_1/A_mux0000<5>49  (
    .I0(\ee201_GCD_1/A_mux0000<5>46_376 ),
    .I1(\ee201_GCD_1/A_mux0000<5>14_375 ),
    .I2(\ee201_GCD_1/A_mux0000<5>0_374 ),
    .I3(\ee201_GCD_1/N24 ),
    .O(\ee201_GCD_1/A_mux0000<5>49_377 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/A_mux0000<4>46  (
    .I0(Ain[4]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/A_mux0000<4>46_371 )
  );
  LUT4 #(
    .INIT ( 16'hFEAA ))
  \ee201_GCD_1/A_mux0000<4>49  (
    .I0(\ee201_GCD_1/A_mux0000<4>46_371 ),
    .I1(\ee201_GCD_1/A_mux0000<4>0_369 ),
    .I2(\ee201_GCD_1/A_mux0000<4>14_370 ),
    .I3(\ee201_GCD_1/N24 ),
    .O(\ee201_GCD_1/A_mux0000<4>49_372 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/A_mux0000<3>46  (
    .I0(Ain[3]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/A_mux0000<3>46_366 )
  );
  LUT4 #(
    .INIT ( 16'hFEAA ))
  \ee201_GCD_1/A_mux0000<3>49  (
    .I0(\ee201_GCD_1/A_mux0000<3>46_366 ),
    .I1(\ee201_GCD_1/A_mux0000<3>0_364 ),
    .I2(\ee201_GCD_1/A_mux0000<3>14_365 ),
    .I3(\ee201_GCD_1/N24 ),
    .O(\ee201_GCD_1/A_mux0000<3>49_367 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/A_mux0000<2>46  (
    .I0(Ain[2]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/A_mux0000<2>46_361 )
  );
  LUT4 #(
    .INIT ( 16'hFEAA ))
  \ee201_GCD_1/A_mux0000<2>49  (
    .I0(\ee201_GCD_1/A_mux0000<2>46_361 ),
    .I1(\ee201_GCD_1/A_mux0000<2>0_359 ),
    .I2(\ee201_GCD_1/A_mux0000<2>14_360 ),
    .I3(\ee201_GCD_1/N24 ),
    .O(\ee201_GCD_1/A_mux0000<2>49_362 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/A_mux0000<1>46  (
    .I0(Ain[1]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/A_mux0000<1>46_356 )
  );
  LUT4 #(
    .INIT ( 16'hFEAA ))
  \ee201_GCD_1/A_mux0000<1>49  (
    .I0(\ee201_GCD_1/A_mux0000<1>46_356 ),
    .I1(\ee201_GCD_1/A_mux0000<1>0_354 ),
    .I2(\ee201_GCD_1/A_mux0000<1>14_355 ),
    .I3(\ee201_GCD_1/N24 ),
    .O(\ee201_GCD_1/A_mux0000<1>49_357 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \ee201_GCD_1/i_count_mux0000<6>  (
    .I0(\ee201_GCD_1/i_count [1]),
    .I1(N88),
    .I2(\ee201_GCD_1/N11 ),
    .I3(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000[6] )
  );
  LUT4 #(
    .INIT ( 16'hB3A0 ))
  \ee201_GCD_1/i_count_mux0000<4>  (
    .I0(\ee201_GCD_1/i_count [3]),
    .I1(N90),
    .I2(\ee201_GCD_1/N11 ),
    .I3(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000[4] )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \ee201_GCD_1/i_count_mux0000<5>  (
    .I0(\ee201_GCD_1/i_count [2]),
    .I1(N94),
    .I2(\ee201_GCD_1/N11 ),
    .I3(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000[5] )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/state_FSM_Out11  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(Ld6_OBUF_85)
  );
  LUT4 #(
    .INIT ( 16'hAD88 ))
  \ee201_GCD_1/i_count_mux0000<0>  (
    .I0(\ee201_GCD_1/i_count [7]),
    .I1(\ee201_GCD_1/N11 ),
    .I2(N104),
    .I3(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000[0] )
  );
  IBUF   BtnD_IBUF (
    .I(BtnD),
    .O(Ld0_OBUF_73)
  );
  IBUF   BtnL_IBUF (
    .I(BtnL),
    .O(Ld3_OBUF_79)
  );
  IBUF   BtnR_IBUF (
    .I(BtnR),
    .O(Ld1_OBUF_75)
  );
  IBUF   BtnU_IBUF (
    .I(BtnU),
    .O(Ld2_OBUF_77)
  );
  IBUF   Sw0_IBUF (
    .I(Sw0),
    .O(Sw0_IBUF_297)
  );
  IBUF   Sw1_IBUF (
    .I(Sw1),
    .O(Sw1_IBUF_299)
  );
  IBUF   Sw2_IBUF (
    .I(Sw2),
    .O(Sw2_IBUF_301)
  );
  IBUF   Sw3_IBUF (
    .I(Sw3),
    .O(Sw3_IBUF_303)
  );
  IBUF   Sw4_IBUF (
    .I(Sw4),
    .O(Sw4_IBUF_305)
  );
  IBUF   Sw5_IBUF (
    .I(Sw5),
    .O(Sw5_IBUF_307)
  );
  IBUF   Sw6_IBUF (
    .I(Sw6),
    .O(Sw6_IBUF_309)
  );
  IBUF   Sw7_IBUF (
    .I(Sw7),
    .O(Sw7_IBUF_311)
  );
  IBUF   BtnC_IBUF (
    .I(BtnC),
    .O(BtnC_IBUF_29)
  );
  OBUF   Ca_OBUF (
    .I(Ca_OBUF_35),
    .O(Ca)
  );
  OBUF   Cb_OBUF (
    .I(Cb_OBUF_37),
    .O(Cb)
  );
  OBUF   Cc_OBUF (
    .I(Cc_OBUF_39),
    .O(Cc)
  );
  OBUF   Cd_OBUF (
    .I(Cd_OBUF_41),
    .O(Cd)
  );
  OBUF   Ce_OBUF (
    .I(Ce_OBUF_43),
    .O(Ce)
  );
  OBUF   Cf_OBUF (
    .I(Cf_OBUF_45),
    .O(Cf)
  );
  OBUF   Cg_OBUF (
    .I(Cg_OBUF_47),
    .O(Cg)
  );
  OBUF   Dp_OBUF (
    .I(Dp_OBUF_70),
    .O(Dp)
  );
  OBUF   FlashCS_OBUF (
    .I(Dp_OBUF_70),
    .O(FlashCS)
  );
  OBUF   MemOE_OBUF (
    .I(Dp_OBUF_70),
    .O(MemOE)
  );
  OBUF   An0_OBUF (
    .I(An0_OBUF_12),
    .O(An0)
  );
  OBUF   An1_OBUF (
    .I(An1_OBUF_14),
    .O(An1)
  );
  OBUF   MemWR_OBUF (
    .I(Dp_OBUF_70),
    .O(MemWR)
  );
  OBUF   An2_OBUF (
    .I(An2_OBUF_16),
    .O(An2)
  );
  OBUF   An3_OBUF (
    .I(An3_OBUF_18),
    .O(An3)
  );
  OBUF   RamCS_OBUF (
    .I(Dp_OBUF_70),
    .O(RamCS)
  );
  OBUF   QuadSpiFlashCS_OBUF (
    .I(Dp_OBUF_70),
    .O(QuadSpiFlashCS)
  );
  OBUF   Ld0_OBUF (
    .I(Ld0_OBUF_73),
    .O(Ld0)
  );
  OBUF   Ld1_OBUF (
    .I(Ld1_OBUF_75),
    .O(Ld1)
  );
  OBUF   Ld2_OBUF (
    .I(Ld2_OBUF_77),
    .O(Ld2)
  );
  OBUF   Ld3_OBUF (
    .I(Ld3_OBUF_79),
    .O(Ld3)
  );
  OBUF   Ld4_OBUF (
    .I(Ld4_OBUF_81),
    .O(Ld4)
  );
  OBUF   Ld5_OBUF (
    .I(Ld5_OBUF_83),
    .O(Ld5)
  );
  OBUF   Ld6_OBUF (
    .I(Ld6_OBUF_85),
    .O(Ld6)
  );
  OBUF   Ld7_OBUF (
    .I(Ld7_OBUF_87),
    .O(Ld7)
  );
  FDS   \ee201_GCD_1/B_7  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<7>1_413 ),
    .S(N86),
    .Q(\ee201_GCD_1/B [7])
  );
  FDS   \ee201_GCD_1/B_6  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<6>35 ),
    .S(\ee201_GCD_1/B_mux0000<6>0_411 ),
    .Q(\ee201_GCD_1/B [6])
  );
  FDS   \ee201_GCD_1/B_5  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<5>35 ),
    .S(\ee201_GCD_1/B_mux0000<5>0_409 ),
    .Q(\ee201_GCD_1/B [5])
  );
  FDS   \ee201_GCD_1/B_4  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<4>35 ),
    .S(\ee201_GCD_1/B_mux0000<4>0_407 ),
    .Q(\ee201_GCD_1/B [4])
  );
  FDS   \ee201_GCD_1/B_3  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<3>35 ),
    .S(\ee201_GCD_1/B_mux0000<3>0_405 ),
    .Q(\ee201_GCD_1/B [3])
  );
  FDS   \ee201_GCD_1/B_2  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<2>35 ),
    .S(\ee201_GCD_1/B_mux0000<2>0_403 ),
    .Q(\ee201_GCD_1/B [2])
  );
  FDS   \ee201_GCD_1/B_1  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<1>35 ),
    .S(\ee201_GCD_1/B_mux0000<1>0_401 ),
    .Q(\ee201_GCD_1/B [1])
  );
  FDS   \ee201_GCD_1/B_0  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<0>38 ),
    .S(\ee201_GCD_1/B_mux0000<0>0_398 ),
    .Q(\ee201_GCD_1/B [0])
  );
  FDS   \ee201_GCD_1/i_count_6  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000<1>1_464 ),
    .S(N98),
    .Q(\ee201_GCD_1/i_count [6])
  );
  FDS   \ee201_GCD_1/i_count_5  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000<2>61 ),
    .S(\ee201_GCD_1/i_count_mux0000<2>0_467 ),
    .Q(\ee201_GCD_1/i_count [5])
  );
  FDS   \ee201_GCD_1/i_count_4  (
    .C(board_clk),
    .D(\ee201_GCD_1/i_count_mux0000<3>1_469 ),
    .S(N96),
    .Q(\ee201_GCD_1/i_count [4])
  );
  FDS   \ee201_GCD_1/A_7  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000<7>44 ),
    .S(\ee201_GCD_1/A_mux0000<7>32_387 ),
    .Q(\ee201_GCD_1/A [7])
  );
  FDS   \ee201_GCD_1/A_6  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000<6>64 ),
    .S(\ee201_GCD_1/A_mux0000<6>49_383 ),
    .Q(\ee201_GCD_1/A [6])
  );
  FDS   \ee201_GCD_1/A_5  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000<5>64 ),
    .S(\ee201_GCD_1/A_mux0000<5>49_377 ),
    .Q(\ee201_GCD_1/A [5])
  );
  FDS   \ee201_GCD_1/A_4  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000<4>64 ),
    .S(\ee201_GCD_1/A_mux0000<4>49_372 ),
    .Q(\ee201_GCD_1/A [4])
  );
  FDS   \ee201_GCD_1/A_3  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000<3>64 ),
    .S(\ee201_GCD_1/A_mux0000<3>49_367 ),
    .Q(\ee201_GCD_1/A [3])
  );
  FDS   \ee201_GCD_1/A_2  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000<2>64 ),
    .S(\ee201_GCD_1/A_mux0000<2>49_362 ),
    .Q(\ee201_GCD_1/A [2])
  );
  FDS   \ee201_GCD_1/A_1  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000<1>64 ),
    .S(\ee201_GCD_1/A_mux0000<1>49_357 ),
    .Q(\ee201_GCD_1/A [1])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<1>_rt  (
    .I0(DIV_CLK[1]),
    .O(\Mcount_DIV_CLK_cy<1>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<2>_rt  (
    .I0(DIV_CLK[2]),
    .O(\Mcount_DIV_CLK_cy<2>_rt_110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<3>_rt  (
    .I0(DIV_CLK[3]),
    .O(\Mcount_DIV_CLK_cy<3>_rt_112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<4>_rt  (
    .I0(DIV_CLK[4]),
    .O(\Mcount_DIV_CLK_cy<4>_rt_114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<5>_rt  (
    .I0(DIV_CLK[5]),
    .O(\Mcount_DIV_CLK_cy<5>_rt_116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<6>_rt  (
    .I0(DIV_CLK[6]),
    .O(\Mcount_DIV_CLK_cy<6>_rt_118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<7>_rt  (
    .I0(DIV_CLK[7]),
    .O(\Mcount_DIV_CLK_cy<7>_rt_120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<8>_rt  (
    .I0(DIV_CLK[8]),
    .O(\Mcount_DIV_CLK_cy<8>_rt_122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<9>_rt  (
    .I0(DIV_CLK[9]),
    .O(\Mcount_DIV_CLK_cy<9>_rt_124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<10>_rt  (
    .I0(DIV_CLK[10]),
    .O(\Mcount_DIV_CLK_cy<10>_rt_90 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<11>_rt  (
    .I0(DIV_CLK[11]),
    .O(\Mcount_DIV_CLK_cy<11>_rt_92 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<12>_rt  (
    .I0(DIV_CLK[12]),
    .O(\Mcount_DIV_CLK_cy<12>_rt_94 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<13>_rt  (
    .I0(DIV_CLK[13]),
    .O(\Mcount_DIV_CLK_cy<13>_rt_96 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<14>_rt  (
    .I0(DIV_CLK[14]),
    .O(\Mcount_DIV_CLK_cy<14>_rt_98 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<15>_rt  (
    .I0(DIV_CLK[15]),
    .O(\Mcount_DIV_CLK_cy<15>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<16>_rt  (
    .I0(DIV_CLK[16]),
    .O(\Mcount_DIV_CLK_cy<16>_rt_102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<17>_rt  (
    .I0(DIV_CLK[17]),
    .O(\Mcount_DIV_CLK_cy<17>_rt_104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_cy<18>_rt  (
    .I0(DIV_CLK[18]),
    .O(\Mcount_DIV_CLK_cy<18>_rt_106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<26>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [26]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<26>_rt_538 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<25>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [25]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<25>_rt_536 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<24>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [24]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<24>_rt_534 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<23>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [23]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<23>_rt_532 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<22>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [22]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<22>_rt_530 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<21>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [21]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<21>_rt_528 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<20>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [20]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<20>_rt_526 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<19>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [19]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<19>_rt_522 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<18>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [18]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<18>_rt_520 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<17>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [17]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<17>_rt_518 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<16>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [16]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<16>_rt_516 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<15>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [15]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<15>_rt_514 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<14>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [14]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<14>_rt_512 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<13>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [13]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<13>_rt_510 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<12>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [12]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<12>_rt_508 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<11>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [11]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<11>_rt_506 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<10>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [10]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<10>_rt_504 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<9>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [9]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<9>_rt_554 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<8>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [8]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<8>_rt_552 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<7>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [7]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<7>_rt_550 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<6>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [6]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<6>_rt_548 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<5>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [5]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<5>_rt_546 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<4>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [4]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<4>_rt_544 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<3>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [3]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<3>_rt_542 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<2>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [2]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<2>_rt_540 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<1>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [1]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_cy<1>_rt_524 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<26>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [26]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<26>_rt_715 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<25>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [25]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<25>_rt_713 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<24>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [24]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<24>_rt_711 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<23>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [23]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<23>_rt_709 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<22>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [22]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<22>_rt_707 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<21>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [21]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<21>_rt_705 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<20>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [20]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<20>_rt_703 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<19>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [19]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<19>_rt_699 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<18>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [18]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<18>_rt_697 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<17>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [17]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<17>_rt_695 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<16>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [16]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<16>_rt_693 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<15>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [15]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<15>_rt_691 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<14>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [14]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<14>_rt_689 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<13>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [13]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<13>_rt_687 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<12>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [12]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<12>_rt_685 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<11>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [11]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<11>_rt_683 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<10>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [10]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<10>_rt_681 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<9>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [9]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<9>_rt_731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<8>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [8]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<8>_rt_729 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<7>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [7]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<7>_rt_727 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<6>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [6]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<6>_rt_725 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<5>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [5]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<5>_rt_723 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<4>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [4]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<4>_rt_721 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<3>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [3]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<3>_rt_719 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<2>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [2]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<2>_rt_717 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<1>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [1]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_cy<1>_rt_701 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<26>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [26]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<26>_rt_892 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<25>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [25]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<25>_rt_890 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<24>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [24]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<24>_rt_888 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<23>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [23]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<23>_rt_886 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<22>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [22]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<22>_rt_884 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<21>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [21]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<21>_rt_882 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<20>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [20]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<20>_rt_880 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<19>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [19]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<19>_rt_876 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<18>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [18]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<18>_rt_874 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<17>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [17]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<17>_rt_872 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<16>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [16]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<16>_rt_870 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<15>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [15]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<15>_rt_868 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<14>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [14]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<14>_rt_866 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<13>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [13]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<13>_rt_864 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<12>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [12]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<12>_rt_862 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<11>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [11]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<11>_rt_860 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<10>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [10]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<10>_rt_858 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<9>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [9]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<9>_rt_908 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<8>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [8]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<8>_rt_906 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<7>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [7]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<7>_rt_904 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<6>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [6]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<6>_rt_902 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<5>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [5]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<5>_rt_900 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<4>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [4]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<4>_rt_898 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<3>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [3]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<3>_rt_896 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<2>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [2]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<2>_rt_894 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<1>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [1]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_cy<1>_rt_878 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<7>_1  (
    .I0(\ee201_GCD_1/A [7]),
    .I1(\ee201_GCD_1/B [7]),
    .O(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_lut<7>_1_430 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_DIV_CLK_xor<19>_rt  (
    .I0(DIV_CLK[19]),
    .O(\Mcount_DIV_CLK_xor<19>_rt_126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<27>_rt  (
    .I0(\ee201_debouncer_0/debounce_count [27]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_xor<27>_rt_556 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<27>_rt  (
    .I0(\ee201_debouncer_1/debounce_count [27]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_xor<27>_rt_733 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<27>_rt  (
    .I0(\ee201_debouncer_2/debounce_count [27]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_xor<27>_rt_910 )
  );
  LUT4 #(
    .INIT ( 16'hAAA2 ))
  \ee201_GCD_1/B_mux0000<1>1_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I2(\ee201_GCD_1/B [0]),
    .I3(\ee201_GCD_1/state_cmp_eq00008136_487 ),
    .O(N80)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \ee201_GCD_1/B_mux0000<1>1_SW1  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I2(N224),
    .O(N81)
  );
  LUT4 #(
    .INIT ( 16'h5455 ))
  \ee201_GCD_1/i_count_mux0000<1>110  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/i_count_mux0000<1>10_465 ),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(\ee201_GCD_1/i_count_mux0000<1>110_466 )
  );
  LUT4 #(
    .INIT ( 16'hEA00 ))
  \ee201_GCD_1/A_mux0000<6>16  (
    .I0(\ee201_GCD_1/A_mux0000<6>6_384 ),
    .I1(\ee201_GCD_1/A_mux0000<6>1 ),
    .I2(\ee201_GCD_1/A_addsub0000 [6]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(\ee201_GCD_1/A_mux0000<6>16_381 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ee201_GCD_1/A_mux0000<5>14_SW1  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/A [6]),
    .I2(\ee201_GCD_1/B [0]),
    .O(N124)
  );
  LUT4 #(
    .INIT ( 16'hC500 ))
  \ee201_GCD_1/A_mux0000<5>14  (
    .I0(N123),
    .I1(N124),
    .I2(\ee201_GCD_1/A_addsub0000 [5]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(\ee201_GCD_1/A_mux0000<5>14_375 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ee201_GCD_1/A_mux0000<4>14_SW1  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/A [5]),
    .I2(\ee201_GCD_1/B [0]),
    .O(N127)
  );
  LUT4 #(
    .INIT ( 16'hCA00 ))
  \ee201_GCD_1/A_mux0000<4>14  (
    .I0(N126),
    .I1(N127),
    .I2(\ee201_GCD_1/A_addsub0000 [4]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(\ee201_GCD_1/A_mux0000<4>14_370 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ee201_GCD_1/A_mux0000<3>14_SW1  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/A [4]),
    .I2(\ee201_GCD_1/B [0]),
    .O(N130)
  );
  LUT4 #(
    .INIT ( 16'hCA00 ))
  \ee201_GCD_1/A_mux0000<3>14  (
    .I0(N129),
    .I1(N130),
    .I2(\ee201_GCD_1/A_addsub0000 [3]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(\ee201_GCD_1/A_mux0000<3>14_365 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ee201_GCD_1/A_mux0000<2>14_SW1  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/A [3]),
    .I2(\ee201_GCD_1/B [0]),
    .O(N133)
  );
  LUT4 #(
    .INIT ( 16'hCA00 ))
  \ee201_GCD_1/A_mux0000<2>14  (
    .I0(N132),
    .I1(N133),
    .I2(\ee201_GCD_1/A_addsub0000 [2]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(\ee201_GCD_1/A_mux0000<2>14_360 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<1>14_SW0  (
    .I0(\ee201_GCD_1/A [2]),
    .I1(\ee201_GCD_1/A [0]),
    .O(N135)
  );
  LUT4 #(
    .INIT ( 16'hCA00 ))
  \ee201_GCD_1/A_mux0000<1>14  (
    .I0(N135),
    .I1(N136),
    .I2(\ee201_GCD_1/A_addsub0000 [1]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(\ee201_GCD_1/A_mux0000<1>14_355 )
  );
  LUT4 #(
    .INIT ( 16'hEEEC ))
  \ee201_GCD_1/B_mux0000<0>30  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I3(\ee201_GCD_1/N311 ),
    .O(\ee201_GCD_1/B_mux0000<0>30_399 )
  );
  LUT4 #(
    .INIT ( 16'hC888 ))
  \ee201_GCD_1/i_count_mux0000<1>4  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/N301 ),
    .I2(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I3(N78),
    .O(\ee201_GCD_1/N26 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/B_mux0000<6>351  (
    .I0(\ee201_GCD_1/B [6]),
    .I1(N138),
    .I2(\ee201_GCD_1/N24 ),
    .I3(\ee201_GCD_1/N4 ),
    .O(\ee201_GCD_1/B_mux0000<6>35 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/B_mux0000<5>351  (
    .I0(\ee201_GCD_1/B [5]),
    .I1(N140),
    .I2(\ee201_GCD_1/N24 ),
    .I3(\ee201_GCD_1/N4 ),
    .O(\ee201_GCD_1/B_mux0000<5>35 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/B_mux0000<4>351  (
    .I0(\ee201_GCD_1/B [4]),
    .I1(N142),
    .I2(\ee201_GCD_1/N24 ),
    .I3(\ee201_GCD_1/N4 ),
    .O(\ee201_GCD_1/B_mux0000<4>35 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/B_mux0000<3>351  (
    .I0(\ee201_GCD_1/B [3]),
    .I1(N144),
    .I2(\ee201_GCD_1/N24 ),
    .I3(\ee201_GCD_1/N4 ),
    .O(\ee201_GCD_1/B_mux0000<3>35 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/B_mux0000<2>351  (
    .I0(\ee201_GCD_1/B [2]),
    .I1(N146),
    .I2(\ee201_GCD_1/N24 ),
    .I3(\ee201_GCD_1/N4 ),
    .O(\ee201_GCD_1/B_mux0000<2>35 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/B_mux0000<1>351  (
    .I0(\ee201_GCD_1/B [1]),
    .I1(N148),
    .I2(\ee201_GCD_1/N24 ),
    .I3(\ee201_GCD_1/N4 ),
    .O(\ee201_GCD_1/B_mux0000<1>35 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \ee201_GCD_1/B_mux0000<0>381  (
    .I0(\ee201_GCD_1/B [0]),
    .I1(N150),
    .I2(\ee201_GCD_1/N24 ),
    .I3(\ee201_GCD_1/B_mux0000<0>30_399 ),
    .O(\ee201_GCD_1/B_mux0000<0>38 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \ee201_GCD_1/A_mux0000<0>15  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/B [0]),
    .I3(\ee201_GCD_1/A_mux0000<0>2_351 ),
    .O(\ee201_GCD_1/A_mux0000<0>15_350 )
  );
  LUT4 #(
    .INIT ( 16'h22F0 ))
  \ee201_GCD_1/A_mux0000<0>60_SW0  (
    .I0(\ee201_GCD_1/A [1]),
    .I1(\ee201_GCD_1/A [0]),
    .I2(\ee201_GCD_1/B [0]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(N152)
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \ee201_GCD_1/A_mux0000<7>32_SW0  (
    .I0(\ee201_GCD_1/B [7]),
    .I1(N215),
    .I2(\ee201_GCD_1/A_addsub0000 [7]),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .O(N154)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \ee201_GCD_1/A_mux0000<7>32  (
    .I0(\ee201_GCD_1/A_mux0000<7>29_386 ),
    .I1(N154),
    .I2(N221),
    .O(\ee201_GCD_1/A_mux0000<7>32_387 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \ee201_GCD_1/A_mux0000<0>121_SW0  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/B [0]),
    .O(N156)
  );
  LUT3 #(
    .INIT ( 8'h91 ))
  \ee201_GCD_1/i_count_mux0000<1>110_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(N158)
  );
  LUT4 #(
    .INIT ( 16'h9B11 ))
  \ee201_GCD_1/i_count_mux0000<1>110_SW1  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(N216),
    .I3(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(N159)
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \ee201_GCD_1/A_mux0000<1>1_SW2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(N218),
    .O(N162)
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \ee201_GCD_1/A_mux0000<7>441  (
    .I0(\ee201_GCD_1/A [7]),
    .I1(N81),
    .I2(N162),
    .I3(N220),
    .O(\ee201_GCD_1/A_mux0000<7>44 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \ee201_GCD_1/A_mux0000<6>641  (
    .I0(\ee201_GCD_1/A [6]),
    .I1(N81),
    .I2(N162),
    .I3(N161),
    .O(\ee201_GCD_1/A_mux0000<6>64 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \ee201_GCD_1/A_mux0000<5>641  (
    .I0(\ee201_GCD_1/A [5]),
    .I1(N81),
    .I2(N162),
    .I3(N161),
    .O(\ee201_GCD_1/A_mux0000<5>64 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \ee201_GCD_1/A_mux0000<4>641  (
    .I0(\ee201_GCD_1/A [4]),
    .I1(N81),
    .I2(N162),
    .I3(N161),
    .O(\ee201_GCD_1/A_mux0000<4>64 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \ee201_GCD_1/A_mux0000<3>641  (
    .I0(\ee201_GCD_1/A [3]),
    .I1(N81),
    .I2(N162),
    .I3(N161),
    .O(\ee201_GCD_1/A_mux0000<3>64 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \ee201_GCD_1/A_mux0000<2>641  (
    .I0(\ee201_GCD_1/A [2]),
    .I1(N81),
    .I2(N162),
    .I3(N161),
    .O(\ee201_GCD_1/A_mux0000<2>64 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \ee201_GCD_1/A_mux0000<1>641  (
    .I0(\ee201_GCD_1/A [1]),
    .I1(N81),
    .I2(N162),
    .I3(N161),
    .O(\ee201_GCD_1/A_mux0000<1>64 )
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<0>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [27]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [27]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<0>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [27]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [27]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<0>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [27]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [27]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<1>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [26]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [26]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<1>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [26]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [26]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<1>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [26]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [26]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<2>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [25]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [25]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<2>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [25]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [25]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<2>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [25]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [25]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \ee201_GCD_1/B_mux0000<7>1  (
    .I0(\ee201_GCD_1/A [7]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/N24 ),
    .O(\ee201_GCD_1/B_mux0000<7>1_413 )
  );
  LUT4 #(
    .INIT ( 16'h9600 ))
  \ee201_GCD_1/i_count_mux0000<1>1  (
    .I0(\ee201_GCD_1/i_count [6]),
    .I1(Ld6_OBUF_85),
    .I2(\ee201_GCD_1/N21 ),
    .I3(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000<1>1_464 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \ee201_GCD_1/i_count_mux0000<1>3_SW0  (
    .I0(\ee201_GCD_1/i_count [6]),
    .I1(\ee201_GCD_1/i_count [5]),
    .I2(\ee201_GCD_1/i_count [4]),
    .I3(Ld6_OBUF_85),
    .O(N111)
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \ee201_GCD_1/i_count_mux0000<1>3_SW1  (
    .I0(Ld6_OBUF_85),
    .I1(\ee201_GCD_1/i_count [6]),
    .I2(\ee201_GCD_1/i_count [5]),
    .I3(\ee201_GCD_1/i_count [4]),
    .O(N112)
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<3>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [24]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [24]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<3>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [24]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [24]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<3>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [24]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [24]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<4>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [23]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [23]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<4>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [23]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [23]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<4>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [23]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [23]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<5>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [22]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [22]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<5>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [22]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [22]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<5>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [22]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [22]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<6>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [21]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [21]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<6>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [21]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [21]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<6>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [21]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [21]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<7>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [20]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [20]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<7>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [20]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [20]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<7>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [20]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [20]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<8>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [19]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [19]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<8>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [19]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [19]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<8>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [19]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [19]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<9>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [18]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [18]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<9>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [18]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [18]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<9>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [18]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [18]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<10>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [17]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [17]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<10>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [17]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [17]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<10>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [17]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [17]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<11>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [16]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [16]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<11>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [16]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [16]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<11>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [16]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [16]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<12>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [15]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [15]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<12>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [15]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [15]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<12>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [15]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [15]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hFE80 ))
  \ee201_GCD_1/Maddsub_i_count_share0000_xor<4>12  (
    .I0(\ee201_GCD_1/i_count [2]),
    .I1(\ee201_GCD_1/i_count [1]),
    .I2(\ee201_GCD_1/i_count [0]),
    .I3(N222),
    .O(\ee201_GCD_1/N10 )
  );
  LUT4 #(
    .INIT ( 16'h6900 ))
  \ee201_GCD_1/i_count_mux0000<3>1  (
    .I0(\ee201_GCD_1/i_count [4]),
    .I1(Ld6_OBUF_85),
    .I2(\ee201_GCD_1/N22 ),
    .I3(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000<3>1_469 )
  );
  LUT3 #(
    .INIT ( 8'h7E ))
  \ee201_GCD_1/i_count_mux0000<2>45_SW0  (
    .I0(\ee201_GCD_1/i_count [4]),
    .I1(Ld6_OBUF_85),
    .I2(N223),
    .O(N184)
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \ee201_GCD_1/i_count_mux0000<2>611  (
    .I0(\ee201_GCD_1/i_count [5]),
    .I1(N184),
    .I2(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000<2>61 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \ee201_GCD_1/state_FSM_FFd2-In24  (
    .I0(\ee201_GCD_1/state_FSM_FFd2-In7_482 ),
    .I1(\ee201_GCD_1/i_count [1]),
    .I2(\ee201_GCD_1/i_count [2]),
    .I3(\ee201_GCD_1/state_FSM_FFd2-In16_480 ),
    .O(\ee201_GCD_1/state_FSM_FFd2-In24_481 )
  );
  LUT4 #(
    .INIT ( 16'h96A5 ))
  \ee201_GCD_1/i_count_mux0000<6>_SW0  (
    .I0(\ee201_GCD_1/i_count [1]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/i_count [0]),
    .I3(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(N88)
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<27>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [0]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [0]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [27])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<27>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [0]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [0]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [27])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<27>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [0]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [0]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [27])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/B_mux0000<0>0  (
    .I0(Bin[0]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/B_mux0000<0>0_398 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/B_mux0000<6>0  (
    .I0(Bin[6]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/B_mux0000<6>0_411 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/B_mux0000<5>0  (
    .I0(Bin[5]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/B_mux0000<5>0_409 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/B_mux0000<4>0  (
    .I0(Bin[4]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/B_mux0000<4>0_407 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/B_mux0000<3>0  (
    .I0(Bin[3]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/B_mux0000<3>0_405 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/B_mux0000<2>0  (
    .I0(Bin[2]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/B_mux0000<2>0_403 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \ee201_GCD_1/B_mux0000<1>0  (
    .I0(Bin[1]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/B_mux0000<1>0_401 )
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<26>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [1]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [1]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [26])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<26>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [1]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [1]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [26])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<26>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [1]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [1]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [26])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<25>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [2]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [2]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [25])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<25>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [2]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [2]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [25])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<25>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [2]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [2]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [25])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<24>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [3]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [3]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [24])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<24>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [3]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [3]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [24])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<24>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [3]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [3]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [24])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<23>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [4]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [4]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [23])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<23>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [4]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [4]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [23])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<23>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [4]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [4]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [23])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<22>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [5]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [5]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [22])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<22>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [5]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [5]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [22])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<22>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [5]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [5]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [22])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<21>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [6]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [6]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [21])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<21>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [6]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [6]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [21])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<21>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [6]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [6]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [21])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<20>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [7]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [7]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [20])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<20>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [7]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [7]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [20])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<20>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [7]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [7]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [20])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<19>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [8]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [8]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [19])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<19>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [8]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [8]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [19])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<19>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [8]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [8]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [19])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<18>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [9]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [9]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [18])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<18>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [9]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [9]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [18])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<18>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [9]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [9]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [18])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<13>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [14]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [14]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<13>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [14]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [14]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<13>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [14]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [14]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<14>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [13]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [13]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<14>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [13]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [13]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<14>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [13]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [13]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<15>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [12]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [12]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<15>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [12]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [12]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<15>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [12]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [12]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<16>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [11]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [11]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [16])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<16>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [11]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [11]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [16])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<16>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [11]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [11]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [16])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_2/debounce_count_mux0000<17>1  (
    .I0(\ee201_debouncer_2/debounce_count_or0001_995 ),
    .I1(\ee201_debouncer_2/debounce_count [10]),
    .I2(\ee201_debouncer_2/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_2/debounce_count_addsub0000 [10]),
    .O(\ee201_debouncer_2/debounce_count_mux0000 [17])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_1/debounce_count_mux0000<17>1  (
    .I0(\ee201_debouncer_1/debounce_count_or0001_818 ),
    .I1(\ee201_debouncer_1/debounce_count [10]),
    .I2(\ee201_debouncer_1/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_1/debounce_count_addsub0000 [10]),
    .O(\ee201_debouncer_1/debounce_count_mux0000 [17])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \ee201_debouncer_0/debounce_count_mux0000<17>1  (
    .I0(\ee201_debouncer_0/debounce_count_or0001_641 ),
    .I1(\ee201_debouncer_0/debounce_count [10]),
    .I2(\ee201_debouncer_0/MCEN_count_or0002 ),
    .I3(\ee201_debouncer_0/debounce_count_addsub0000 [10]),
    .O(\ee201_debouncer_0/debounce_count_mux0000 [17])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \ee201_GCD_1/i_count_mux0000<7>1  (
    .I0(\ee201_GCD_1/i_count [0]),
    .I1(N219),
    .I2(\ee201_GCD_1/N26 ),
    .O(\ee201_GCD_1/i_count_mux0000[7] )
  );
  FDS   \ee201_GCD_1/B_0_1  (
    .C(board_clk),
    .D(\ee201_GCD_1/B_mux0000<0>38 ),
    .S(\ee201_GCD_1/B_mux0000<0>0_398 ),
    .Q(\ee201_GCD_1/B_0_1_390 )
  );
  FD   \ee201_GCD_1/A_0_1  (
    .C(board_clk),
    .D(\ee201_GCD_1/A_mux0000 [0]),
    .Q(\ee201_GCD_1/A_0_1_333 )
  );
  INV   \Mcount_DIV_CLK_lut<0>_INV_0  (
    .I(DIV_CLK[0]),
    .O(Mcount_DIV_CLK_lut[0])
  );
  INV   \ee201_debouncer_0/Madd_debounce_count_addsub0000_lut<0>_INV_0  (
    .I(\ee201_debouncer_0/debounce_count [0]),
    .O(\ee201_debouncer_0/Madd_debounce_count_addsub0000_lut [0])
  );
  INV   \ee201_debouncer_1/Madd_debounce_count_addsub0000_lut<0>_INV_0  (
    .I(\ee201_debouncer_1/debounce_count [0]),
    .O(\ee201_debouncer_1/Madd_debounce_count_addsub0000_lut [0])
  );
  INV   \ee201_debouncer_2/Madd_debounce_count_addsub0000_lut<0>_INV_0  (
    .I(\ee201_debouncer_2/debounce_count [0]),
    .O(\ee201_debouncer_2/Madd_debounce_count_addsub0000_lut [0])
  );
  INV   A_bar_slash_B_not00011_INV_0 (
    .I(A_bar_slash_B_0),
    .O(A_bar_slash_B_not0001)
  );
  MUXF5   \ee201_debouncer_2/state_FSM_FFd6-In17  (
    .I0(N192),
    .I1(N193),
    .S(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .O(\ee201_debouncer_2/state_FSM_FFd6-In17_1017 )
  );
  LUT3 #(
    .INIT ( 8'h4C ))
  \ee201_debouncer_2/state_FSM_FFd6-In17_F  (
    .I0(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I1(Ld3_OBUF_79),
    .I2(\ee201_debouncer_2/debounce_count [23]),
    .O(N192)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \ee201_debouncer_2/state_FSM_FFd6-In17_G  (
    .I0(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd5_1013 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .I3(Ld3_OBUF_79),
    .O(N193)
  );
  MUXF5   \ee201_debouncer_1/state_FSM_FFd6-In17  (
    .I0(N194),
    .I1(N195),
    .S(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .O(\ee201_debouncer_1/state_FSM_FFd6-In17_840 )
  );
  LUT3 #(
    .INIT ( 8'h4C ))
  \ee201_debouncer_1/state_FSM_FFd6-In17_F  (
    .I0(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I1(Ld1_OBUF_75),
    .I2(\ee201_debouncer_1/debounce_count [23]),
    .O(N194)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \ee201_debouncer_1/state_FSM_FFd6-In17_G  (
    .I0(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd5_836 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .I3(Ld1_OBUF_75),
    .O(N195)
  );
  MUXF5   \ee201_debouncer_0/state_FSM_FFd6-In17  (
    .I0(N196),
    .I1(N197),
    .S(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .O(\ee201_debouncer_0/state_FSM_FFd6-In17_663 )
  );
  LUT3 #(
    .INIT ( 8'h4C ))
  \ee201_debouncer_0/state_FSM_FFd6-In17_F  (
    .I0(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I1(Ld2_OBUF_77),
    .I2(\ee201_debouncer_0/debounce_count [23]),
    .O(N196)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \ee201_debouncer_0/state_FSM_FFd6-In17_G  (
    .I0(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd5_659 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .I3(Ld2_OBUF_77),
    .O(N197)
  );
  MUXF5   \ee201_GCD_1/i_count_mux0000<3>_SW0  (
    .I0(N198),
    .I1(N199),
    .S(\ee201_GCD_1/i_count_mux0000<1>110_466 ),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \ee201_GCD_1/i_count_mux0000<3>_SW0_F  (
    .I0(\ee201_GCD_1/i_count [4]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(N198)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ee201_GCD_1/i_count_mux0000<3>_SW0_G  (
    .I0(\ee201_GCD_1/i_count [4]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(N199)
  );
  MUXF5   \ee201_GCD_1/i_count_mux0000<2>0  (
    .I0(N200),
    .I1(N201),
    .S(\ee201_GCD_1/i_count_mux0000<1>110_466 ),
    .O(\ee201_GCD_1/i_count_mux0000<2>0_467 )
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \ee201_GCD_1/i_count_mux0000<2>0_F  (
    .I0(\ee201_GCD_1/i_count [5]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(N200)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ee201_GCD_1/i_count_mux0000<2>0_G  (
    .I0(\ee201_GCD_1/i_count [5]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(N201)
  );
  MUXF5   \ee201_GCD_1/i_count_mux0000<1>_SW0  (
    .I0(N202),
    .I1(N203),
    .S(\ee201_GCD_1/i_count_mux0000<1>110_466 ),
    .O(N98)
  );
  LUT4 #(
    .INIT ( 16'h20A8 ))
  \ee201_GCD_1/i_count_mux0000<1>_SW0_F  (
    .I0(\ee201_GCD_1/i_count [6]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .O(N202)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ee201_GCD_1/i_count_mux0000<1>_SW0_G  (
    .I0(\ee201_GCD_1/i_count [6]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(N203)
  );
  MUXF5   \ee201_debouncer_2/MCEN_count_mux0000<0>  (
    .I0(N204),
    .I1(N205),
    .S(\ee201_debouncer_2/MCEN_count_or0001 ),
    .O(\ee201_debouncer_2/MCEN_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hA828 ))
  \ee201_debouncer_2/MCEN_count_mux0000<0>_F  (
    .I0(\ee201_debouncer_2/MCEN_count [3]),
    .I1(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I3(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .O(N204)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \ee201_debouncer_2/MCEN_count_mux0000<0>_G  (
    .I0(\ee201_debouncer_2/MCEN_count [3]),
    .I1(\ee201_debouncer_2/MCEN_count [2]),
    .I2(\ee201_debouncer_2/MCEN_count [1]),
    .I3(\ee201_debouncer_2/MCEN_count [0]),
    .O(N205)
  );
  MUXF5   \ee201_debouncer_1/MCEN_count_mux0000<0>  (
    .I0(N206),
    .I1(N207),
    .S(\ee201_debouncer_1/MCEN_count_or0001 ),
    .O(\ee201_debouncer_1/MCEN_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hA828 ))
  \ee201_debouncer_1/MCEN_count_mux0000<0>_F  (
    .I0(\ee201_debouncer_1/MCEN_count [3]),
    .I1(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I3(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .O(N206)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \ee201_debouncer_1/MCEN_count_mux0000<0>_G  (
    .I0(\ee201_debouncer_1/MCEN_count [3]),
    .I1(\ee201_debouncer_1/MCEN_count [2]),
    .I2(\ee201_debouncer_1/MCEN_count [1]),
    .I3(\ee201_debouncer_1/MCEN_count [0]),
    .O(N207)
  );
  MUXF5   \ee201_debouncer_0/MCEN_count_mux0000<0>  (
    .I0(N208),
    .I1(N209),
    .S(\ee201_debouncer_0/MCEN_count_or0001 ),
    .O(\ee201_debouncer_0/MCEN_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hA828 ))
  \ee201_debouncer_0/MCEN_count_mux0000<0>_F  (
    .I0(\ee201_debouncer_0/MCEN_count [3]),
    .I1(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .O(N208)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \ee201_debouncer_0/MCEN_count_mux0000<0>_G  (
    .I0(\ee201_debouncer_0/MCEN_count [3]),
    .I1(\ee201_debouncer_0/MCEN_count [2]),
    .I2(\ee201_debouncer_0/MCEN_count [1]),
    .I3(\ee201_debouncer_0/MCEN_count [0]),
    .O(N209)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<3>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [3]),
    .I2(\ee201_GCD_1/AB_GCD [3]),
    .O(\SSD2<3>1_278 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<3>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[3]),
    .I2(\ee201_GCD_1/AB_GCD [3]),
    .O(\SSD2<3>2_279 )
  );
  MUXF5   \SSD2<3>_f5  (
    .I0(\SSD2<3>2_279 ),
    .I1(\SSD2<3>1_278 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD2[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<2>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [2]),
    .I2(\ee201_GCD_1/AB_GCD [2]),
    .O(\SSD2<2>1_275 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<2>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[2]),
    .I2(\ee201_GCD_1/AB_GCD [2]),
    .O(\SSD2<2>2_276 )
  );
  MUXF5   \SSD2<2>_f5  (
    .I0(\SSD2<2>2_276 ),
    .I1(\SSD2<2>1_275 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD2[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<1>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [1]),
    .I2(\ee201_GCD_1/AB_GCD [1]),
    .O(\SSD2<1>1_272 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<1>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[1]),
    .I2(\ee201_GCD_1/AB_GCD [1]),
    .O(\SSD2<1>2_273 )
  );
  MUXF5   \SSD2<1>_f5  (
    .I0(\SSD2<1>2_273 ),
    .I1(\SSD2<1>1_272 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD2[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<0>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [0]),
    .I2(\ee201_GCD_1/AB_GCD [0]),
    .O(\SSD2<0>1_269 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD2<0>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[0]),
    .I2(\ee201_GCD_1/AB_GCD [0]),
    .O(\SSD2<0>2_270 )
  );
  MUXF5   \SSD2<0>_f5  (
    .I0(\SSD2<0>2_270 ),
    .I1(\SSD2<0>1_269 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD2[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<3>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [3]),
    .I2(\ee201_GCD_1/i_count [3]),
    .O(\SSD0<3>1_254 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<3>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[3]),
    .I2(\ee201_GCD_1/i_count [3]),
    .O(\SSD0<3>2_255 )
  );
  MUXF5   \SSD0<3>_f5  (
    .I0(\SSD0<3>2_255 ),
    .I1(\SSD0<3>1_254 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD0[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<2>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [2]),
    .I2(\ee201_GCD_1/i_count [2]),
    .O(\SSD0<2>1_251 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<2>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[2]),
    .I2(\ee201_GCD_1/i_count [2]),
    .O(\SSD0<2>2_252 )
  );
  MUXF5   \SSD0<2>_f5  (
    .I0(\SSD0<2>2_252 ),
    .I1(\SSD0<2>1_251 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD0[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<1>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [1]),
    .I2(\ee201_GCD_1/i_count [1]),
    .O(\SSD0<1>1_248 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<1>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[1]),
    .I2(\ee201_GCD_1/i_count [1]),
    .O(\SSD0<1>2_249 )
  );
  MUXF5   \SSD0<1>_f5  (
    .I0(\SSD0<1>2_249 ),
    .I1(\SSD0<1>1_248 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD0[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<0>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [0]),
    .I2(\ee201_GCD_1/i_count [0]),
    .O(\SSD0<0>1_245 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD0<0>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[0]),
    .I2(\ee201_GCD_1/i_count [0]),
    .O(\SSD0<0>2_246 )
  );
  MUXF5   \SSD0<0>_f5  (
    .I0(\SSD0<0>2_246 ),
    .I1(\SSD0<0>1_245 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD0[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<3>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [7]),
    .I2(\ee201_GCD_1/AB_GCD [7]),
    .O(\SSD3<3>1_290 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<3>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[7]),
    .I2(\ee201_GCD_1/AB_GCD [7]),
    .O(\SSD3<3>2_291 )
  );
  MUXF5   \SSD3<3>_f5  (
    .I0(\SSD3<3>2_291 ),
    .I1(\SSD3<3>1_290 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD3[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<2>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [6]),
    .I2(\ee201_GCD_1/AB_GCD [6]),
    .O(\SSD3<2>1_287 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<2>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[6]),
    .I2(\ee201_GCD_1/AB_GCD [6]),
    .O(\SSD3<2>2_288 )
  );
  MUXF5   \SSD3<2>_f5  (
    .I0(\SSD3<2>2_288 ),
    .I1(\SSD3<2>1_287 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD3[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<1>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [5]),
    .I2(\ee201_GCD_1/AB_GCD [5]),
    .O(\SSD3<1>1_284 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<1>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[5]),
    .I2(\ee201_GCD_1/AB_GCD [5]),
    .O(\SSD3<1>2_285 )
  );
  MUXF5   \SSD3<1>_f5  (
    .I0(\SSD3<1>2_285 ),
    .I1(\SSD3<1>1_284 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD3[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<0>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [4]),
    .I2(\ee201_GCD_1/AB_GCD [4]),
    .O(\SSD3<0>1_281 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD3<0>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Ain[4]),
    .I2(\ee201_GCD_1/AB_GCD [4]),
    .O(\SSD3<0>2_282 )
  );
  MUXF5   \SSD3<0>_f5  (
    .I0(\SSD3<0>2_282 ),
    .I1(\SSD3<0>1_281 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD3[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<3>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [7]),
    .I2(\ee201_GCD_1/i_count [7]),
    .O(\SSD1<3>1_266 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<3>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[7]),
    .I2(\ee201_GCD_1/i_count [7]),
    .O(\SSD1<3>2_267 )
  );
  MUXF5   \SSD1<3>_f5  (
    .I0(\SSD1<3>2_267 ),
    .I1(\SSD1<3>1_266 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD1[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<2>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [6]),
    .I2(\ee201_GCD_1/i_count [6]),
    .O(\SSD1<2>1_263 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<2>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[6]),
    .I2(\ee201_GCD_1/i_count [6]),
    .O(\SSD1<2>2_264 )
  );
  MUXF5   \SSD1<2>_f5  (
    .I0(\SSD1<2>2_264 ),
    .I1(\SSD1<2>1_263 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD1[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<1>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [5]),
    .I2(\ee201_GCD_1/i_count [5]),
    .O(\SSD1<1>1_260 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<1>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[5]),
    .I2(\ee201_GCD_1/i_count [5]),
    .O(\SSD1<1>2_261 )
  );
  MUXF5   \SSD1<1>_f5  (
    .I0(\SSD1<1>2_261 ),
    .I1(\SSD1<1>1_260 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD1[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<0>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/B [4]),
    .I2(\ee201_GCD_1/i_count [4]),
    .O(\SSD1<0>1_257 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \SSD1<0>2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(Bin[4]),
    .I2(\ee201_GCD_1/i_count [4]),
    .O(\SSD1<0>2_258 )
  );
  MUXF5   \SSD1<0>_f5  (
    .I0(\SSD1<0>2_258 ),
    .I1(\SSD1<0>1_257 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(SSD1[0])
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \ee201_GCD_1/state_FSM_FFd2-In791  (
    .I0(\ee201_GCD_1/i_count [0]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/state_FSM_FFd2-In24_481 ),
    .O(\ee201_GCD_1/state_FSM_FFd2-In79 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/state_FSM_FFd2-In792  (
    .I0(\ee201_debouncer_2/state_FSM_FFd2_1001 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/state_FSM_FFd2-In791_484 )
  );
  MUXF5   \ee201_GCD_1/state_FSM_FFd2-In79_f5  (
    .I0(\ee201_GCD_1/state_FSM_FFd2-In791_484 ),
    .I1(\ee201_GCD_1/state_FSM_FFd2-In79 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/state_FSM_FFd2-In )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \ee201_GCD_1/state_FSM_FFd1-In1  (
    .I0(\ee201_GCD_1/state_cmp_eq0000 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .O(\ee201_GCD_1/state_FSM_FFd1-In1_476 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/state_FSM_FFd1-In2  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd2_1001 ),
    .O(\ee201_GCD_1/state_FSM_FFd1-In2_477 )
  );
  MUXF5   \ee201_GCD_1/state_FSM_FFd1-In_f5  (
    .I0(\ee201_GCD_1/state_FSM_FFd1-In2_477 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1-In1_476 ),
    .S(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .O(\ee201_GCD_1/state_FSM_FFd1-In )
  );
  LUT4_L #(
    .INIT ( 16'hFF8A ))
  \ee201_debouncer_0/state_FSM_FFd1-In9  (
    .I0(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd5_659 ),
    .I3(\ee201_debouncer_0/MCEN_count_or0001 ),
    .LO(\ee201_debouncer_0/state_FSM_FFd1-In9_646 )
  );
  LUT4_D #(
    .INIT ( 16'hFF19 ))
  \ee201_debouncer_2/MCEN_count_or00021  (
    .I0(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .I3(\ee201_debouncer_2/MCEN_count_or0001 ),
    .LO(N210),
    .O(\ee201_debouncer_2/MCEN_count_or0002 )
  );
  LUT4_D #(
    .INIT ( 16'hFF19 ))
  \ee201_debouncer_1/MCEN_count_or00021  (
    .I0(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .I3(\ee201_debouncer_1/MCEN_count_or0001 ),
    .LO(N211),
    .O(\ee201_debouncer_1/MCEN_count_or0002 )
  );
  LUT4_D #(
    .INIT ( 16'hFF19 ))
  \ee201_debouncer_0/MCEN_count_or00021  (
    .I0(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .I3(\ee201_debouncer_0/MCEN_count_or0001 ),
    .LO(N212),
    .O(\ee201_debouncer_0/MCEN_count_or0002 )
  );
  LUT4_L #(
    .INIT ( 16'h26F6 ))
  \ee201_debouncer_2/debounce_count_or0001_SW0  (
    .I0(\ee201_debouncer_2/state_FSM_FFd6_1015 ),
    .I1(\ee201_debouncer_2/state_FSM_FFd1_996 ),
    .I2(\ee201_debouncer_2/state_FSM_FFd4_1007 ),
    .I3(\ee201_debouncer_2/state_FSM_FFd3_1003 ),
    .LO(N28)
  );
  LUT4_L #(
    .INIT ( 16'h26F6 ))
  \ee201_debouncer_1/debounce_count_or0001_SW0  (
    .I0(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd1_819 ),
    .I2(\ee201_debouncer_1/state_FSM_FFd4_830 ),
    .I3(\ee201_debouncer_1/state_FSM_FFd3_826 ),
    .LO(N30)
  );
  LUT4_L #(
    .INIT ( 16'h26F6 ))
  \ee201_debouncer_0/debounce_count_or0001_SW0  (
    .I0(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd1_642 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd4_653 ),
    .I3(\ee201_debouncer_0/state_FSM_FFd3_649 ),
    .LO(N32)
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  \ee201_debouncer_2/state_FSM_FFd6-In36  (
    .I0(\ee201_debouncer_2/debounce_count [27]),
    .I1(\ee201_debouncer_2/MCEN_count [0]),
    .I2(\ee201_debouncer_2/MCEN_count [3]),
    .I3(\ee201_debouncer_2/state_FSM_FFd6-In32_1018 ),
    .LO(\ee201_debouncer_2/state_FSM_FFd6-In36_1019 )
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  \ee201_debouncer_1/state_FSM_FFd6-In32  (
    .I0(\ee201_debouncer_1/MCEN_count [2]),
    .I1(\ee201_debouncer_1/MCEN_count [1]),
    .LO(\ee201_debouncer_1/state_FSM_FFd6-In32_841 )
  );
  LUT4_L #(
    .INIT ( 16'hFF23 ))
  \ee201_debouncer_1/state_FSM_FFd6-In63  (
    .I0(\ee201_debouncer_1/state_FSM_FFd6-In36_842 ),
    .I1(\ee201_debouncer_1/state_FSM_FFd3_826 ),
    .I2(Ld1_OBUF_75),
    .I3(\ee201_debouncer_1/state_FSM_FFd6_838 ),
    .LO(\ee201_debouncer_1/state_FSM_FFd6-In63_843 )
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  \ee201_debouncer_0/state_FSM_FFd6-In32  (
    .I0(\ee201_debouncer_0/MCEN_count [2]),
    .I1(\ee201_debouncer_0/MCEN_count [1]),
    .LO(\ee201_debouncer_0/state_FSM_FFd6-In32_664 )
  );
  LUT4_L #(
    .INIT ( 16'hFF23 ))
  \ee201_debouncer_0/state_FSM_FFd6-In63  (
    .I0(\ee201_debouncer_0/state_FSM_FFd6-In36_665 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd3_649 ),
    .I2(Ld2_OBUF_77),
    .I3(\ee201_debouncer_0/state_FSM_FFd6_661 ),
    .LO(\ee201_debouncer_0/state_FSM_FFd6-In63_666 )
  );
  LUT4_D #(
    .INIT ( 16'h727A ))
  \ee201_GCD_1/AB_GCD_mux0000<0>11  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I3(\ee201_GCD_1/state_cmp_eq0000 ),
    .LO(N213),
    .O(\ee201_GCD_1/N5 )
  );
  LUT4_L #(
    .INIT ( 16'hD555 ))
  \ee201_GCD_1/AB_GCD_mux0000<7>26  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I2(\ee201_GCD_1/A [0]),
    .I3(\ee201_GCD_1/state_cmp_eq0000 ),
    .LO(\ee201_GCD_1/AB_GCD_mux0000<7>26_331 )
  );
  LUT4_L #(
    .INIT ( 16'hEA40 ))
  \ee201_GCD_1/AB_GCD_mux0000<5>_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [2]),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/AB_GCD [1]),
    .LO(N34)
  );
  LUT4_L #(
    .INIT ( 16'hEA40 ))
  \ee201_GCD_1/AB_GCD_mux0000<4>_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [3]),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/AB_GCD [2]),
    .LO(N36)
  );
  LUT4_L #(
    .INIT ( 16'hEA40 ))
  \ee201_GCD_1/AB_GCD_mux0000<3>_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [4]),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/AB_GCD [3]),
    .LO(N38)
  );
  LUT4_L #(
    .INIT ( 16'hEA40 ))
  \ee201_GCD_1/AB_GCD_mux0000<2>_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [5]),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/AB_GCD [4]),
    .LO(N40)
  );
  LUT4_L #(
    .INIT ( 16'hEA40 ))
  \ee201_GCD_1/AB_GCD_mux0000<1>_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [6]),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/AB_GCD [5]),
    .LO(N42)
  );
  LUT4_L #(
    .INIT ( 16'hEA40 ))
  \ee201_GCD_1/AB_GCD_mux0000<0>_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/A [7]),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/AB_GCD [6]),
    .LO(N44)
  );
  LUT4_L #(
    .INIT ( 16'hFFAE ))
  \ee201_GCD_1/state_FSM_FFd2-In16  (
    .I0(\ee201_GCD_1/i_count [5]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/i_count [0]),
    .I3(\ee201_GCD_1/i_count [6]),
    .LO(\ee201_GCD_1/state_FSM_FFd2-In16_480 )
  );
  LUT3_L #(
    .INIT ( 8'h01 ))
  \ee201_GCD_1/i_count_mux0000<1>4_SW0  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/B [0]),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .LO(N78)
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \ee201_GCD_1/A_mux0000<0>121  (
    .I0(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I1(\ee201_GCD_1/state_cmp_eq0000 ),
    .LO(\ee201_GCD_1/N311 )
  );
  LUT4_D #(
    .INIT ( 16'h8421 ))
  \ee201_GCD_1/state_cmp_eq00008120  (
    .I0(\ee201_GCD_1/B [2]),
    .I1(\ee201_GCD_1/B [3]),
    .I2(\ee201_GCD_1/A [2]),
    .I3(\ee201_GCD_1/A [3]),
    .LO(N214),
    .O(\ee201_GCD_1/state_cmp_eq00008120_486 )
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \ee201_GCD_1/A_mux0000<7>1  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/B [0]),
    .LO(N215),
    .O(\ee201_GCD_1/A_mux0000<6>1 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<6>6  (
    .I0(\ee201_GCD_1/A [7]),
    .I1(\ee201_GCD_1/A [0]),
    .LO(\ee201_GCD_1/A_mux0000<6>6_384 )
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \ee201_GCD_1/i_count_mux0000<1>10  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/B [0]),
    .LO(N216),
    .O(\ee201_GCD_1/i_count_mux0000<1>10_465 )
  );
  LUT4_L #(
    .INIT ( 16'hA599 ))
  \ee201_GCD_1/i_count_mux0000<0>_SW0  (
    .I0(Ld6_OBUF_85),
    .I1(N111),
    .I2(N112),
    .I3(\ee201_GCD_1/N22 ),
    .LO(N104)
  );
  LUT4_L #(
    .INIT ( 16'hFFD5 ))
  \ee201_GCD_1/A_mux0000<0>2  (
    .I0(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I1(\ee201_GCD_1/B [0]),
    .I2(\ee201_GCD_1/A_addsub0000 [0]),
    .I3(\ee201_GCD_1/state_cmp_eq0000 ),
    .LO(\ee201_GCD_1/A_mux0000<0>2_351 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<6>0  (
    .I0(\ee201_GCD_1/B [6]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .LO(\ee201_GCD_1/A_mux0000<6>0_379 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<5>0  (
    .I0(\ee201_GCD_1/B [5]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .LO(\ee201_GCD_1/A_mux0000<5>0_374 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<4>0  (
    .I0(\ee201_GCD_1/B [4]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .LO(\ee201_GCD_1/A_mux0000<4>0_369 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<3>0  (
    .I0(\ee201_GCD_1/B [3]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .LO(\ee201_GCD_1/A_mux0000<3>0_364 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<2>0  (
    .I0(\ee201_GCD_1/B [2]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .LO(\ee201_GCD_1/A_mux0000<2>0_359 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<1>0  (
    .I0(\ee201_GCD_1/B [1]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .LO(\ee201_GCD_1/A_mux0000<1>0_354 )
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \ee201_GCD_1/A_mux0000<5>14_SW0  (
    .I0(\ee201_GCD_1/A [6]),
    .I1(\ee201_GCD_1/A [0]),
    .LO(N123)
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<4>14_SW0  (
    .I0(\ee201_GCD_1/A [5]),
    .I1(\ee201_GCD_1/A [0]),
    .LO(N126)
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<3>14_SW0  (
    .I0(\ee201_GCD_1/A [4]),
    .I1(\ee201_GCD_1/A [0]),
    .LO(N129)
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \ee201_GCD_1/A_mux0000<2>14_SW0  (
    .I0(\ee201_GCD_1/A [3]),
    .I1(\ee201_GCD_1/A [0]),
    .LO(N132)
  );
  LUT3_L #(
    .INIT ( 8'hE4 ))
  \ee201_GCD_1/A_mux0000<1>14_SW1  (
    .I0(\ee201_GCD_1/A [0]),
    .I1(\ee201_GCD_1/A [2]),
    .I2(\ee201_GCD_1/B [0]),
    .LO(N136)
  );
  LUT4_D #(
    .INIT ( 16'hFBEA ))
  \ee201_GCD_1/B_mux0000<1>1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(N80),
    .I3(N81),
    .LO(N217),
    .O(\ee201_GCD_1/N4 )
  );
  LUT4_L #(
    .INIT ( 16'hF222 ))
  \ee201_GCD_1/A_mux0000<0>66  (
    .I0(Ain[0]),
    .I1(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I2(\ee201_GCD_1/A_mux0000<0>55_352 ),
    .I3(N152),
    .LO(\ee201_GCD_1/A_mux0000<0>66_353 )
  );
  LUT3_L #(
    .INIT ( 8'hE4 ))
  \ee201_GCD_1/B_mux0000<0>13_SW0  (
    .I0(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I1(\ee201_GCD_1/A [0]),
    .I2(\ee201_GCD_1/B [1]),
    .LO(N150)
  );
  LUT4_D #(
    .INIT ( 16'hAA2A ))
  \ee201_GCD_1/A_mux0000<1>1_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I2(N156),
    .I3(\ee201_GCD_1/state_cmp_eq0000 ),
    .LO(N218),
    .O(N83)
  );
  LUT4_D #(
    .INIT ( 16'h5355 ))
  \ee201_GCD_1/i_count_mux0000<1>134  (
    .I0(N158),
    .I1(N159),
    .I2(\ee201_GCD_1/state_cmp_eq0000 ),
    .I3(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .LO(N219),
    .O(\ee201_GCD_1/N11 )
  );
  LUT3_D #(
    .INIT ( 8'hEA ))
  \ee201_GCD_1/A_mux0000<1>1_SW1  (
    .I0(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(N83),
    .LO(N220),
    .O(N161)
  );
  LUT4_L #(
    .INIT ( 16'h7340 ))
  \ee201_GCD_1/B_mux0000<6>20_SW0  (
    .I0(\ee201_GCD_1/B [0]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/B [7]),
    .I3(\ee201_GCD_1/A [6]),
    .LO(N138)
  );
  LUT4_L #(
    .INIT ( 16'h7340 ))
  \ee201_GCD_1/B_mux0000<5>20_SW0  (
    .I0(\ee201_GCD_1/B [0]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/B [6]),
    .I3(\ee201_GCD_1/A [5]),
    .LO(N140)
  );
  LUT4_L #(
    .INIT ( 16'h7340 ))
  \ee201_GCD_1/B_mux0000<4>20_SW0  (
    .I0(\ee201_GCD_1/B [0]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/B [5]),
    .I3(\ee201_GCD_1/A [4]),
    .LO(N142)
  );
  LUT4_L #(
    .INIT ( 16'h7340 ))
  \ee201_GCD_1/B_mux0000<3>20_SW0  (
    .I0(\ee201_GCD_1/B [0]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/B [4]),
    .I3(\ee201_GCD_1/A [3]),
    .LO(N144)
  );
  LUT4_L #(
    .INIT ( 16'h7340 ))
  \ee201_GCD_1/B_mux0000<2>20_SW0  (
    .I0(\ee201_GCD_1/B [0]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/B [3]),
    .I3(\ee201_GCD_1/A [2]),
    .LO(N146)
  );
  LUT4_L #(
    .INIT ( 16'h7340 ))
  \ee201_GCD_1/B_mux0000<1>20_SW0  (
    .I0(\ee201_GCD_1/B [0]),
    .I1(\ee201_GCD_1/Mcompar_i_count_cmp_lt0000_cy [7]),
    .I2(\ee201_GCD_1/B [2]),
    .I3(\ee201_GCD_1/A [1]),
    .LO(N148)
  );
  LUT4_D #(
    .INIT ( 16'h0020 ))
  \ee201_GCD_1/B_mux0000<0>11  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_debouncer_0/state_FSM_FFd2_647 ),
    .I3(\ee201_GCD_1/state_cmp_eq0000 ),
    .LO(N221),
    .O(\ee201_GCD_1/N24 )
  );
  LUT2_D #(
    .INIT ( 4'hD ))
  \ee201_GCD_1/Maddsub_i_count_share0000_xor<4>12_SW0  (
    .I0(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .LO(N222),
    .O(N182)
  );
  LUT4_D #(
    .INIT ( 16'hEF8A ))
  \ee201_GCD_1/Maddsub_i_count_share0000_xor<4>131  (
    .I0(\ee201_GCD_1/i_count [3]),
    .I1(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I2(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .I3(\ee201_GCD_1/N10 ),
    .LO(N223),
    .O(\ee201_GCD_1/N22 )
  );
  LUT4_L #(
    .INIT ( 16'h6966 ))
  \ee201_GCD_1/i_count_mux0000<4>_SW0  (
    .I0(\ee201_GCD_1/N10 ),
    .I1(\ee201_GCD_1/i_count [3]),
    .I2(\ee201_GCD_1/state_FSM_FFd1_474 ),
    .I3(\ee201_GCD_1/state_FSM_FFd2_478 ),
    .LO(N90)
  );
  LUT4_L #(
    .INIT ( 16'h6AA9 ))
  \ee201_GCD_1/i_count_mux0000<5>_SW0  (
    .I0(\ee201_GCD_1/i_count [2]),
    .I1(\ee201_GCD_1/i_count [1]),
    .I2(\ee201_GCD_1/i_count [0]),
    .I3(Ld6_OBUF_85),
    .LO(N94)
  );
  LUT4_L #(
    .INIT ( 16'h071F ))
  \ee201_GCD_1/i_count_mux0000<1>3  (
    .I0(\ee201_GCD_1/i_count [5]),
    .I1(\ee201_GCD_1/i_count [4]),
    .I2(N182),
    .I3(\ee201_GCD_1/N22 ),
    .LO(\ee201_GCD_1/N21 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \ee201_GCD_1/state_cmp_eq00008136_1  (
    .I0(\ee201_GCD_1/state_cmp_eq0000893_490 ),
    .I1(\ee201_GCD_1/state_cmp_eq00008120_486 ),
    .I2(\ee201_GCD_1/state_cmp_eq0000853_489 ),
    .I3(\ee201_GCD_1/state_cmp_eq0000826_488 ),
    .LO(N224),
    .O(\ee201_GCD_1/state_cmp_eq00008136_487 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

