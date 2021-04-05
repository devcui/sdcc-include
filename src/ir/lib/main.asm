;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wait2
	.globl _main
	.globl _WaitRed
	.globl _InitIR
	.globl _Disp_1602_str
	.globl _Init_1602
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _T2
	.globl _T2EX
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EC
	.globl _EA
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _P37
	.globl _P36
	.globl _P35
	.globl _P34
	.globl _P33
	.globl _P32
	.globl _P31
	.globl _P30
	.globl _P27
	.globl _P26
	.globl _P25
	.globl _P24
	.globl _P23
	.globl _P22
	.globl _P21
	.globl _P20
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _P07
	.globl _P06
	.globl _P05
	.globl _P04
	.globl _P03
	.globl _P02
	.globl _P01
	.globl _P00
	.globl _P40
	.globl _P41
	.globl _P42
	.globl _P43
	.globl _P44
	.globl _P45
	.globl _P46
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _SADEN
	.globl _IPH
	.globl _SADDR
	.globl _AUXR1
	.globl _AUXR
	.globl _SBUF
	.globl _SCON
	.globl _IP
	.globl _IE
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _ISP_CONTR
	.globl _ISP_TRIG
	.globl _ISP_CMD
	.globl _ISP_ADDRL
	.globl _ISP_ADDRH
	.globl _ISP_DATA
	.globl _WDT_CONTR
	.globl _XICON
	.globl _P4
	.globl _Key_Str
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P4	=	0x00e8
_XICON	=	0x00c0
_WDT_CONTR	=	0x00e1
_ISP_DATA	=	0x00e2
_ISP_ADDRH	=	0x00e3
_ISP_ADDRL	=	0x00e4
_ISP_CMD	=	0x00e5
_ISP_TRIG	=	0x00e6
_ISP_CONTR	=	0x00e7
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_IE	=	0x00a8
_IP	=	0x00b8
_SCON	=	0x0098
_SBUF	=	0x0099
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_SADDR	=	0x00a9
_IPH	=	0x00b7
_SADEN	=	0x00b9
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P46	=	0x00ee
_P45	=	0x00ed
_P44	=	0x00ec
_P43	=	0x00eb
_P42	=	0x00ea
_P41	=	0x00e9
_P40	=	0x00e8
_P00	=	0x0080
_P01	=	0x0081
_P02	=	0x0082
_P03	=	0x0083
_P04	=	0x0084
_P05	=	0x0085
_P06	=	0x0086
_P07	=	0x0087
_P10	=	0x0090
_P11	=	0x0091
_P12	=	0x0092
_P13	=	0x0093
_P14	=	0x0094
_P15	=	0x0095
_P16	=	0x0096
_P17	=	0x0097
_P20	=	0x00a0
_P21	=	0x00a1
_P22	=	0x00a2
_P23	=	0x00a3
_P24	=	0x00a4
_P25	=	0x00a5
_P26	=	0x00a6
_P27	=	0x00a7
_P30	=	0x00b0
_P31	=	0x00b1
_P32	=	0x00b2
_P33	=	0x00b3
_P34	=	0x00b4
_P35	=	0x00b5
_P36	=	0x00b6
_P37	=	0x00b7
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_EA	=	0x00af
_EC	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_SM0	=	0x009f
_FE	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_T2EX	=	0x0091
_T2	=	0x0090
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Key_Str::
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_wait2
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	./src/ir/main.c:16: unsigned char *Key_Str = 0;
	clr	a
	mov	_Key_Str,a
	mov	(_Key_Str + 1),a
;	1-genFromRTrack replaced	mov	(_Key_Str + 2),#0x00
	mov	(_Key_Str + 2),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;Key                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/ir/main.c:18: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/ir/main.c:20: P10 = 1;
;	assignBit
	setb	_P10
;	./src/ir/main.c:22: Init_1602();
	lcall	_Init_1602
;	./src/ir/main.c:23: InitIR();
	lcall	_InitIR
;	./src/ir/main.c:24: Disp_1602_str(1, 2, "Nebula-Pi IR");
	mov	_Disp_1602_str_PARM_3,#___str_0
	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_0 >> 8)
	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
	mov	_Disp_1602_str_PARM_2,#0x02
	mov	dpl,#0x01
	lcall	_Disp_1602_str
;	./src/ir/main.c:25: Disp_1602_str(2, 1, "KEY: ");
	mov	_Disp_1602_str_PARM_3,#___str_1
	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_1 >> 8)
	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
	mov	_Disp_1602_str_PARM_2,#0x01
	mov	dpl,#0x02
	lcall	_Disp_1602_str
;	./src/ir/main.c:26: while (1)
00127$:
;	./src/ir/main.c:29: if (Flag_IR)
	mov	a,_Flag_IR
	jz	00127$
;	./src/ir/main.c:32: Flag_IR = 0;
	mov	_Flag_IR,#0x00
;	./src/ir/main.c:35: Key = (unsigned char)(Data_IR >> 16);
	mov	r7,(_Data_IR + 2)
;	./src/ir/main.c:36: switch (Key)
	cjne	r7,#0x07,00224$
	ljmp	00107$
00224$:
	cjne	r7,#0x08,00225$
	ljmp	00116$
00225$:
	cjne	r7,#0x09,00226$
	ljmp	00109$
00226$:
	cjne	r7,#0x0c,00227$
	ljmp	00113$
00227$:
	cjne	r7,#0x0d,00228$
	ljmp	00112$
00228$:
	cjne	r7,#0x15,00229$
	ljmp	00108$
00229$:
	cjne	r7,#0x16,00230$
	ljmp	00110$
00230$:
	cjne	r7,#0x18,00231$
	ljmp	00114$
00231$:
	cjne	r7,#0x19,00232$
	ljmp	00111$
00232$:
	cjne	r7,#0x1c,00233$
	ljmp	00117$
00233$:
	cjne	r7,#0x40,00234$
	sjmp	00105$
00234$:
	cjne	r7,#0x42,00235$
	ljmp	00119$
00235$:
	cjne	r7,#0x43,00236$
	sjmp	00106$
00236$:
	cjne	r7,#0x44,00237$
	sjmp	00104$
00237$:
	cjne	r7,#0x45,00238$
	sjmp	00101$
00238$:
	cjne	r7,#0x46,00239$
	sjmp	00102$
00239$:
	cjne	r7,#0x47,00240$
	sjmp	00103$
00240$:
	cjne	r7,#0x4a,00241$
	ljmp	00121$
00241$:
	cjne	r7,#0x52,00242$
	ljmp	00120$
00242$:
	cjne	r7,#0x5a,00243$
	ljmp	00118$
00243$:
	cjne	r7,#0x5e,00244$
	ljmp	00115$
00244$:
	ljmp	00122$
;	./src/ir/main.c:38: case 69:
00101$:
;	./src/ir/main.c:39: Key_Str = "CH-";
	mov	_Key_Str,#___str_2
	mov	(_Key_Str + 1),#(___str_2 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:40: break;
	ljmp	00123$
;	./src/ir/main.c:41: case 70:
00102$:
;	./src/ir/main.c:42: Key_Str = "CH";
	mov	_Key_Str,#___str_3
	mov	(_Key_Str + 1),#(___str_3 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:43: break;
	ljmp	00123$
;	./src/ir/main.c:44: case 71:
00103$:
;	./src/ir/main.c:45: Key_Str = "CH+";
	mov	_Key_Str,#___str_4
	mov	(_Key_Str + 1),#(___str_4 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:46: break;
	ljmp	00123$
;	./src/ir/main.c:47: case 68:
00104$:
;	./src/ir/main.c:48: Key_Str = "PREV";
	mov	_Key_Str,#___str_5
	mov	(_Key_Str + 1),#(___str_5 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:49: break;
	ljmp	00123$
;	./src/ir/main.c:50: case 64:
00105$:
;	./src/ir/main.c:51: Key_Str = "NEXT";
	mov	_Key_Str,#___str_6
	mov	(_Key_Str + 1),#(___str_6 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:52: break;
	ljmp	00123$
;	./src/ir/main.c:53: case 67:
00106$:
;	./src/ir/main.c:54: Key_Str = "PLAY/PAUSE";
	mov	_Key_Str,#___str_7
	mov	(_Key_Str + 1),#(___str_7 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:55: break;
	ljmp	00123$
;	./src/ir/main.c:56: case 7:
00107$:
;	./src/ir/main.c:57: Key_Str = "-";
	mov	_Key_Str,#___str_8
	mov	(_Key_Str + 1),#(___str_8 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:58: break;
	ljmp	00123$
;	./src/ir/main.c:59: case 21:
00108$:
;	./src/ir/main.c:60: Key_Str = "+";
	mov	_Key_Str,#___str_9
	mov	(_Key_Str + 1),#(___str_9 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:61: break;
	ljmp	00123$
;	./src/ir/main.c:62: case 9:
00109$:
;	./src/ir/main.c:63: Key_Str = "EQ";
	mov	_Key_Str,#___str_10
	mov	(_Key_Str + 1),#(___str_10 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:64: break;
	ljmp	00123$
;	./src/ir/main.c:65: case 22:
00110$:
;	./src/ir/main.c:66: Key_Str = "0";
	mov	_Key_Str,#___str_11
	mov	(_Key_Str + 1),#(___str_11 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:67: break;
	ljmp	00123$
;	./src/ir/main.c:68: case 25:
00111$:
;	./src/ir/main.c:69: Key_Str = "100+";
	mov	_Key_Str,#___str_12
	mov	(_Key_Str + 1),#(___str_12 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:70: break;
	ljmp	00123$
;	./src/ir/main.c:71: case 13:
00112$:
;	./src/ir/main.c:72: Key_Str = "200+";
	mov	_Key_Str,#___str_13
	mov	(_Key_Str + 1),#(___str_13 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:73: break;
;	./src/ir/main.c:74: case 12:
	sjmp	00123$
00113$:
;	./src/ir/main.c:75: Key_Str = "1";
	mov	_Key_Str,#___str_14
	mov	(_Key_Str + 1),#(___str_14 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:76: break;
;	./src/ir/main.c:77: case 24:
	sjmp	00123$
00114$:
;	./src/ir/main.c:78: Key_Str = "2";
	mov	_Key_Str,#___str_15
	mov	(_Key_Str + 1),#(___str_15 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:79: break;
;	./src/ir/main.c:80: case 94:
	sjmp	00123$
00115$:
;	./src/ir/main.c:81: Key_Str = "3";
	mov	_Key_Str,#___str_16
	mov	(_Key_Str + 1),#(___str_16 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:82: break;
;	./src/ir/main.c:83: case 8:
	sjmp	00123$
00116$:
;	./src/ir/main.c:84: Key_Str = "4";
	mov	_Key_Str,#___str_17
	mov	(_Key_Str + 1),#(___str_17 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:85: break;
;	./src/ir/main.c:86: case 28:
	sjmp	00123$
00117$:
;	./src/ir/main.c:87: Key_Str = "5";
	mov	_Key_Str,#___str_18
	mov	(_Key_Str + 1),#(___str_18 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:88: break;
;	./src/ir/main.c:89: case 90:
	sjmp	00123$
00118$:
;	./src/ir/main.c:90: Key_Str = "6";
	mov	_Key_Str,#___str_19
	mov	(_Key_Str + 1),#(___str_19 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:91: break;
;	./src/ir/main.c:92: case 66:
	sjmp	00123$
00119$:
;	./src/ir/main.c:93: Key_Str = "7";
	mov	_Key_Str,#___str_20
	mov	(_Key_Str + 1),#(___str_20 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:94: break;
;	./src/ir/main.c:95: case 82:
	sjmp	00123$
00120$:
;	./src/ir/main.c:96: Key_Str = "8";
	mov	_Key_Str,#___str_21
	mov	(_Key_Str + 1),#(___str_21 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:97: break;
;	./src/ir/main.c:98: case 74:
	sjmp	00123$
00121$:
;	./src/ir/main.c:99: Key_Str = "9";
	mov	_Key_Str,#___str_22
	mov	(_Key_Str + 1),#(___str_22 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:100: break;
;	./src/ir/main.c:101: default:
	sjmp	00123$
00122$:
;	./src/ir/main.c:102: Key_Str = "error!";
	mov	_Key_Str,#___str_23
	mov	(_Key_Str + 1),#(___str_23 >> 8)
	mov	(_Key_Str + 2),#0x80
;	./src/ir/main.c:103: }
00123$:
;	./src/ir/main.c:104: Disp_1602_str(2,5,"             ");
	mov	_Disp_1602_str_PARM_3,#___str_24
	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_24 >> 8)
	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
	mov	_Disp_1602_str_PARM_2,#0x05
	mov	dpl,#0x02
	lcall	_Disp_1602_str
;	./src/ir/main.c:105: Disp_1602_str(2, 5, Key_Str);
	mov	_Disp_1602_str_PARM_2,#0x05
	mov	_Disp_1602_str_PARM_3,_Key_Str
	mov	(_Disp_1602_str_PARM_3 + 1),(_Key_Str + 1)
	mov	(_Disp_1602_str_PARM_3 + 2),(_Key_Str + 2)
	mov	dpl,#0x02
	lcall	_Disp_1602_str
;	./src/ir/main.c:108: }
	ljmp	00127$
;------------------------------------------------------------
;Allocation info for local variables in function 'wait2'
;------------------------------------------------------------
;	./src/ir/main.c:110: void wait2() __interrupt(2)
;	-----------------------------------------
;	 function wait2
;	-----------------------------------------
_wait2:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./src/ir/main.c:112: if (P10 == 0)
	jb	_P10,00102$
;	./src/ir/main.c:114: P10 = 1;
;	assignBit
	setb	_P10
	sjmp	00103$
00102$:
;	./src/ir/main.c:118: P10 = 0;
;	assignBit
	clr	_P10
00103$:
;	./src/ir/main.c:120: WaitRed();
	lcall	_WaitRed
;	./src/ir/main.c:121: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Nebula-Pi IR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "KEY: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "CH-"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "CH"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "CH+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "PREV"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "NEXT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "PLAY/PAUSE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "-"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "EQ"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "100+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "200+"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "5"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "6"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "7"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "8"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "9"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "error!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "             "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
