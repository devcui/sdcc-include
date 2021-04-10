;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timmer0
	.globl _main
	.globl _Disp_1602_str
	.globl _Init_1602
	.globl _GetTime
	.globl _Init_1302
	.globl _WE
	.globl _DU
	.globl _FM
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
	.globl _str
	.globl _SetTime
	.globl _CurrentTime
	.globl _T_flag
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
_FM	=	0x0080
_DU	=	0x0086
_WE	=	0x0087
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_T_flag::
	.ds 1
_CurrentTime::
	.ds 23
_SetTime::
	.ds 7
_str::
	.ds 23
_timmer0_T_500ms_65537_18:
	.ds 2
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
	ljmp	_timmer0
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
;------------------------------------------------------------
;Allocation info for local variables in function 'timmer0'
;------------------------------------------------------------
;T_500ms                   Allocated with name '_timmer0_T_500ms_65537_18'
;------------------------------------------------------------
;	./src/DS1302/main.c:94: static unsigned int T_500ms = 0;
	clr	a
	mov	_timmer0_T_500ms_65537_18,a
	mov	(_timmer0_T_500ms_65537_18 + 1),a
;	./src/DS1302/main.c:25: unsigned char T_flag = 0;
;	1-genFromRTrack replaced	mov	_T_flag,#0x00
	mov	_T_flag,a
;	./src/DS1302/main.c:27: unsigned char CurrentTime[23] = "";
;	1-genFromRTrack replaced	mov	_CurrentTime,#0x00
	mov	_CurrentTime,a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0001),#0x00
	mov	(_CurrentTime + 0x0001),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0002),#0x00
	mov	(_CurrentTime + 0x0002),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0003),#0x00
	mov	(_CurrentTime + 0x0003),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0004),#0x00
	mov	(_CurrentTime + 0x0004),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0005),#0x00
	mov	(_CurrentTime + 0x0005),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0006),#0x00
	mov	(_CurrentTime + 0x0006),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0007),#0x00
	mov	(_CurrentTime + 0x0007),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0008),#0x00
	mov	(_CurrentTime + 0x0008),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0009),#0x00
	mov	(_CurrentTime + 0x0009),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000a),#0x00
	mov	(_CurrentTime + 0x000a),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000b),#0x00
	mov	(_CurrentTime + 0x000b),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000c),#0x00
	mov	(_CurrentTime + 0x000c),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000d),#0x00
	mov	(_CurrentTime + 0x000d),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000e),#0x00
	mov	(_CurrentTime + 0x000e),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000f),#0x00
	mov	(_CurrentTime + 0x000f),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0010),#0x00
	mov	(_CurrentTime + 0x0010),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0011),#0x00
	mov	(_CurrentTime + 0x0011),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0012),#0x00
	mov	(_CurrentTime + 0x0012),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0013),#0x00
	mov	(_CurrentTime + 0x0013),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0014),#0x00
	mov	(_CurrentTime + 0x0014),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0015),#0x00
	mov	(_CurrentTime + 0x0015),a
;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0016),#0x00
	mov	(_CurrentTime + 0x0016),a
;	./src/DS1302/main.c:28: unsigned char SetTime[7] = {0x56, 0x58, 0x23, 0x01, 0x06, 0x02, 0x21};
	mov	_SetTime,#0x56
	mov	(_SetTime + 0x0001),#0x58
	mov	(_SetTime + 0x0002),#0x23
	mov	(_SetTime + 0x0003),#0x01
	mov	(_SetTime + 0x0004),#0x06
	mov	(_SetTime + 0x0005),#0x02
	mov	(_SetTime + 0x0006),#0x21
;	./src/DS1302/main.c:29: unsigned char str[23] = "";
;	1-genFromRTrack replaced	mov	_str,#0x00
	mov	_str,a
;	1-genFromRTrack replaced	mov	(_str + 0x0001),#0x00
	mov	(_str + 0x0001),a
;	1-genFromRTrack replaced	mov	(_str + 0x0002),#0x00
	mov	(_str + 0x0002),a
;	1-genFromRTrack replaced	mov	(_str + 0x0003),#0x00
	mov	(_str + 0x0003),a
;	1-genFromRTrack replaced	mov	(_str + 0x0004),#0x00
	mov	(_str + 0x0004),a
;	1-genFromRTrack replaced	mov	(_str + 0x0005),#0x00
	mov	(_str + 0x0005),a
;	1-genFromRTrack replaced	mov	(_str + 0x0006),#0x00
	mov	(_str + 0x0006),a
;	1-genFromRTrack replaced	mov	(_str + 0x0007),#0x00
	mov	(_str + 0x0007),a
;	1-genFromRTrack replaced	mov	(_str + 0x0008),#0x00
	mov	(_str + 0x0008),a
;	1-genFromRTrack replaced	mov	(_str + 0x0009),#0x00
	mov	(_str + 0x0009),a
;	1-genFromRTrack replaced	mov	(_str + 0x000a),#0x00
	mov	(_str + 0x000a),a
;	1-genFromRTrack replaced	mov	(_str + 0x000b),#0x00
	mov	(_str + 0x000b),a
;	1-genFromRTrack replaced	mov	(_str + 0x000c),#0x00
	mov	(_str + 0x000c),a
;	1-genFromRTrack replaced	mov	(_str + 0x000d),#0x00
	mov	(_str + 0x000d),a
;	1-genFromRTrack replaced	mov	(_str + 0x000e),#0x00
	mov	(_str + 0x000e),a
;	1-genFromRTrack replaced	mov	(_str + 0x000f),#0x00
	mov	(_str + 0x000f),a
;	1-genFromRTrack replaced	mov	(_str + 0x0010),#0x00
	mov	(_str + 0x0010),a
;	1-genFromRTrack replaced	mov	(_str + 0x0011),#0x00
	mov	(_str + 0x0011),a
;	1-genFromRTrack replaced	mov	(_str + 0x0012),#0x00
	mov	(_str + 0x0012),a
;	1-genFromRTrack replaced	mov	(_str + 0x0013),#0x00
	mov	(_str + 0x0013),a
;	1-genFromRTrack replaced	mov	(_str + 0x0014),#0x00
	mov	(_str + 0x0014),a
;	1-genFromRTrack replaced	mov	(_str + 0x0015),#0x00
	mov	(_str + 0x0015),a
;	1-genFromRTrack replaced	mov	(_str + 0x0016),#0x00
	mov	(_str + 0x0016),a
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
;	./src/DS1302/main.c:31: void main()
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
;	./src/DS1302/main.c:33: P10 = 1;
;	assignBit
	setb	_P10
;	./src/DS1302/main.c:34: Init_1602();
	lcall	_Init_1602
;	./src/DS1302/main.c:36: P2 = 0xFF;
	mov	_P2,#0xff
;	./src/DS1302/main.c:37: WE = 1;
;	assignBit
	setb	_WE
;	./src/DS1302/main.c:38: WE = 0;
;	assignBit
	clr	_WE
;	./src/DS1302/main.c:40: TMOD = 0x01;
	mov	_TMOD,#0x01
;	./src/DS1302/main.c:41: TL0 = T_1ms;
	mov	_TL0,#0x67
;	./src/DS1302/main.c:42: TH0 = T_1ms >> 8;
	mov	_TH0,#0xfc
;	./src/DS1302/main.c:43: TR0 = 1;
;	assignBit
	setb	_TR0
;	./src/DS1302/main.c:44: ET0 = 1;
;	assignBit
	setb	_ET0
;	./src/DS1302/main.c:45: EA = 1;
;	assignBit
	setb	_EA
;	./src/DS1302/main.c:47: Init_1302(SetTime);
	mov	dptr,#_SetTime
	mov	b,#0x40
	lcall	_Init_1302
;	./src/DS1302/main.c:49: while (1)
00104$:
;	./src/DS1302/main.c:51: if (T_flag) //500ms
	mov	a,_T_flag
	jz	00104$
;	./src/DS1302/main.c:53: T_flag = 0;
	mov	_T_flag,#0x00
;	./src/DS1302/main.c:55: GetTime(CurrentTime); 
	mov	dptr,#_CurrentTime
	mov	b,#0x40
	lcall	_GetTime
;	./src/DS1302/main.c:57: str[0] = '2';
	mov	_str,#0x32
;	./src/DS1302/main.c:58: str[1] = '0';
	mov	(_str + 0x0001),#0x30
;	./src/DS1302/main.c:59: str[2] = (CurrentTime[6] >> 4) + '0'; 
	mov	a,(_CurrentTime + 0x0006)
	swap	a
	anl	a,#0x0f
	add	a,#0x30
	mov	(_str + 0x0002),a
;	./src/DS1302/main.c:60: str[3] = (CurrentTime[6] & 0x0F) + '0';
	mov	r7,(_CurrentTime + 0x0006)
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	(_str + 0x0003),a
;	./src/DS1302/main.c:61: str[4] = '-';
	mov	(_str + 0x0004),#0x2d
;	./src/DS1302/main.c:62: str[5] = (CurrentTime[4] >> 4) + '0'; 
	mov	a,(_CurrentTime + 0x0004)
	swap	a
	anl	a,#0x0f
	add	a,#0x30
	mov	(_str + 0x0005),a
;	./src/DS1302/main.c:63: str[6] = (CurrentTime[4] & 0x0F) + '0';
	mov	r7,(_CurrentTime + 0x0004)
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	(_str + 0x0006),a
;	./src/DS1302/main.c:64: str[7] = '-';
	mov	(_str + 0x0007),#0x2d
;	./src/DS1302/main.c:65: str[8] = (CurrentTime[3] >> 4) + '0'; 
	mov	a,(_CurrentTime + 0x0003)
	swap	a
	anl	a,#0x0f
	add	a,#0x30
	mov	(_str + 0x0008),a
;	./src/DS1302/main.c:66: str[9] = (CurrentTime[3] & 0x0F) + '0';
	mov	r7,(_CurrentTime + 0x0003)
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	(_str + 0x0009),a
;	./src/DS1302/main.c:67: str[10] = '\0';
	mov	(_str + 0x000a),#0x00
;	./src/DS1302/main.c:68: str[11] = (CurrentTime[2] >> 4) + '0';
	mov	a,(_CurrentTime + 0x0002)
	swap	a
	anl	a,#0x0f
	add	a,#0x30
	mov	(_str + 0x000b),a
;	./src/DS1302/main.c:69: str[12] = (CurrentTime[2] & 0x0F) + '0';
	mov	r7,(_CurrentTime + 0x0002)
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	(_str + 0x000c),a
;	./src/DS1302/main.c:70: str[13] = ':';
	mov	(_str + 0x000d),#0x3a
;	./src/DS1302/main.c:71: str[14] = (CurrentTime[1] >> 4) + '0';
	mov	a,(_CurrentTime + 0x0001)
	swap	a
	anl	a,#0x0f
	add	a,#0x30
	mov	(_str + 0x000e),a
;	./src/DS1302/main.c:72: str[15] = (CurrentTime[1] & 0x0F) + '0';
	mov	r7,(_CurrentTime + 0x0001)
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	(_str + 0x000f),a
;	./src/DS1302/main.c:73: str[16] = ':';
	mov	(_str + 0x0010),#0x3a
;	./src/DS1302/main.c:74: str[17] = (CurrentTime[0] >> 4) + '0'; 
	mov	a,_CurrentTime
	swap	a
	anl	a,#0x0f
	add	a,#0x30
	mov	(_str + 0x0011),a
;	./src/DS1302/main.c:75: str[18] = (CurrentTime[0] & 0x0F) + '0';
	mov	r7,_CurrentTime
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	(_str + 0x0012),a
;	./src/DS1302/main.c:76: str[19] = ' ';
	mov	(_str + 0x0013),#0x20
;	./src/DS1302/main.c:77: str[20] = (CurrentTime[5] >> 4) + '0'; 
	mov	a,(_CurrentTime + 0x0005)
	swap	a
	anl	a,#0x0f
	add	a,#0x30
	mov	(_str + 0x0014),a
;	./src/DS1302/main.c:78: str[21] = (CurrentTime[5] & 0x0F) + '0';
	mov	r7,(_CurrentTime + 0x0005)
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	(_str + 0x0015),a
;	./src/DS1302/main.c:79: str[22] = '\0';
	mov	(_str + 0x0016),#0x00
;	./src/DS1302/main.c:81: Disp_1602_str(1, 4, str); 
	mov	_Disp_1602_str_PARM_3,#_str
	mov	(_Disp_1602_str_PARM_3 + 1),#0x00
	mov	(_Disp_1602_str_PARM_3 + 2),#0x40
	mov	_Disp_1602_str_PARM_2,#0x04
	mov	dpl,#0x01
	lcall	_Disp_1602_str
;	./src/DS1302/main.c:82: Disp_1602_str(2, 3, str + 11);
	mov	_Disp_1602_str_PARM_3,#(_str + 0x000b)
	mov	(_Disp_1602_str_PARM_3 + 1),#0x00
	mov	(_Disp_1602_str_PARM_3 + 2),#0x40
	mov	_Disp_1602_str_PARM_2,#0x03
	mov	dpl,#0x02
	lcall	_Disp_1602_str
;	./src/DS1302/main.c:85: }
	ljmp	00104$
;------------------------------------------------------------
;Allocation info for local variables in function 'timmer0'
;------------------------------------------------------------
;T_500ms                   Allocated with name '_timmer0_T_500ms_65537_18'
;------------------------------------------------------------
;	./src/DS1302/main.c:87: void timmer0() __interrupt(1)
;	-----------------------------------------
;	 function timmer0
;	-----------------------------------------
_timmer0:
	push	acc
	push	psw
;	./src/DS1302/main.c:89: if(P10 == 1){
;	./src/DS1302/main.c:90: P10 = 0;
;	assignBit
	jbc	_P10,00103$
;	./src/DS1302/main.c:92: P10 = 1;
;	assignBit
	setb	_P10
00103$:
;	./src/DS1302/main.c:95: TL0 = T_1ms;
	mov	_TL0,#0x67
;	./src/DS1302/main.c:96: TH0 = T_1ms >> 8;
	mov	_TH0,#0xfc
;	./src/DS1302/main.c:97: T_500ms++;
	inc	_timmer0_T_500ms_65537_18
	clr	a
	cjne	a,_timmer0_T_500ms_65537_18,00117$
	inc	(_timmer0_T_500ms_65537_18 + 1)
00117$:
;	./src/DS1302/main.c:98: if (T_500ms >= 500)
	clr	c
	mov	a,_timmer0_T_500ms_65537_18
	subb	a,#0xf4
	mov	a,(_timmer0_T_500ms_65537_18 + 1)
	subb	a,#0x01
	jc	00106$
;	./src/DS1302/main.c:100: T_500ms = 0;
	clr	a
	mov	_timmer0_T_500ms_65537_18,a
	mov	(_timmer0_T_500ms_65537_18 + 1),a
;	./src/DS1302/main.c:101: T_flag = 1;
	mov	_T_flag,#0x01
00106$:
;	./src/DS1302/main.c:103: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
