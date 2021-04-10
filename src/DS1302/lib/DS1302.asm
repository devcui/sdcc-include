;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module DS1302
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SCLK_LINE
	.globl _IO_LINE
	.globl _CE_LINE
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
	.globl _WrSingle_1302_PARM_2
	.globl _WrByte_1302
	.globl _RdByte_1302
	.globl _WrSingle_1302
	.globl _RdSingle_1302
	.globl _Init_1302
	.globl _GetTime
	.globl _WrBurst_1302
	.globl _RdBurst_1302
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
_CE_LINE	=	0x0085
_IO_LINE	=	0x0084
_SCLK_LINE	=	0x0083
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_WrSingle_1302_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'WrByte_1302'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;j                         Allocated to registers r6 
;flag                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:19: void WrByte_1302(unsigned char dat)
;	-----------------------------------------
;	 function WrByte_1302
;	-----------------------------------------
_WrByte_1302:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./src/DS1302/include/DS1302.c:23: for (j = 1; j <= 8; j++)
	mov	r6,#0x01
00102$:
;	./src/DS1302/include/DS1302.c:26: flag = dat & 0x01;
	mov	ar4,r7
	anl	ar4,#0x01
	mov	r5,#0x00
;	./src/DS1302/include/DS1302.c:28: IO_LINE = flag;
;	assignBit
	mov	a,r4
	orl	a,r5
	add	a,#0xff
	mov	_IO_LINE,c
;	./src/DS1302/include/DS1302.c:30: SCLK_LINE = 0;
;	assignBit
	clr	_SCLK_LINE
;	./src/DS1302/include/DS1302.c:31: SCLK_LINE = 1;
;	assignBit
	setb	_SCLK_LINE
;	./src/DS1302/include/DS1302.c:33: dat >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	./src/DS1302/include/DS1302.c:23: for (j = 1; j <= 8; j++)
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/DS1302/include/DS1302.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RdByte_1302'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;flag                      Allocated to registers 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:38: unsigned char RdByte_1302(void)
;	-----------------------------------------
;	 function RdByte_1302
;	-----------------------------------------
_RdByte_1302:
;	./src/DS1302/include/DS1302.c:40: unsigned char dat = 0;
	mov	r7,#0x00
;	./src/DS1302/include/DS1302.c:44: for (j = 1; j <= 8; j++)
	mov	r6,#0x01
00102$:
;	./src/DS1302/include/DS1302.c:47: SCLK_LINE = 1;
;	assignBit
	setb	_SCLK_LINE
;	./src/DS1302/include/DS1302.c:48: SCLK_LINE = 0;
;	assignBit
	clr	_SCLK_LINE
;	./src/DS1302/include/DS1302.c:50: flag = IO_LINE;
	mov	c,_IO_LINE
	clr	a
	rlc	a
	mov	r5,a
;	./src/DS1302/include/DS1302.c:52: dat = (dat >> 1) | (flag << 7);
	mov	a,r7
	clr	c
	rrc	a
	mov	r4,a
	mov	a,r5
	rr	a
	anl	a,#0x80
	orl	a,r4
	mov	r7,a
;	./src/DS1302/include/DS1302.c:44: for (j = 1; j <= 8; j++)
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/DS1302/include/DS1302.c:54: return dat;
	mov	dpl,r7
;	./src/DS1302/include/DS1302.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WrSingle_1302'
;------------------------------------------------------------
;dat                       Allocated with name '_WrSingle_1302_PARM_2'
;addr                      Allocated to registers 
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:57: void WrSingle_1302(unsigned char addr, unsigned char dat)
;	-----------------------------------------
;	 function WrSingle_1302
;	-----------------------------------------
_WrSingle_1302:
;	./src/DS1302/include/DS1302.c:60: CE_LINE = 1;
;	assignBit
	setb	_CE_LINE
;	./src/DS1302/include/DS1302.c:62: WrByte_1302(addr);
	lcall	_WrByte_1302
;	./src/DS1302/include/DS1302.c:64: WrByte_1302(dat);
	mov	dpl,_WrSingle_1302_PARM_2
	lcall	_WrByte_1302
;	./src/DS1302/include/DS1302.c:66: CE_LINE = 0;
;	assignBit
	clr	_CE_LINE
;	./src/DS1302/include/DS1302.c:68: SCLK_LINE = 0;
;	assignBit
	clr	_SCLK_LINE
;	./src/DS1302/include/DS1302.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RdSingle_1302'
;------------------------------------------------------------
;addr                      Allocated to registers 
;dat                       Allocated to registers 
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:71: unsigned char RdSingle_1302(unsigned char addr)
;	-----------------------------------------
;	 function RdSingle_1302
;	-----------------------------------------
_RdSingle_1302:
;	./src/DS1302/include/DS1302.c:75: CE_LINE = 1;
;	assignBit
	setb	_CE_LINE
;	./src/DS1302/include/DS1302.c:77: WrByte_1302(addr);
	lcall	_WrByte_1302
;	./src/DS1302/include/DS1302.c:78: dat = RdByte_1302();
	lcall	_RdByte_1302
;	./src/DS1302/include/DS1302.c:80: CE_LINE = 0;
;	assignBit
	clr	_CE_LINE
;	./src/DS1302/include/DS1302.c:81: return dat;
;	./src/DS1302/include/DS1302.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_1302'
;------------------------------------------------------------
;time                      Allocated to registers r5 r6 r7 
;j                         Allocated with name '_Init_1302_j_65536_22'
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:84: void Init_1302(unsigned char *time)
;	-----------------------------------------
;	 function Init_1302
;	-----------------------------------------
_Init_1302:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/DS1302/include/DS1302.c:87: CE_LINE = 0;
;	assignBit
	clr	_CE_LINE
;	./src/DS1302/include/DS1302.c:88: SCLK_LINE = 0;
;	assignBit
	clr	_SCLK_LINE
;	./src/DS1302/include/DS1302.c:90: WrSingle_1302(0x8E, 0x00);
	mov	_WrSingle_1302_PARM_2,#0x00
	mov	dpl,#0x8e
	push	ar7
	push	ar6
	push	ar5
	lcall	_WrSingle_1302
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/DS1302/include/DS1302.c:97: WrBurst_1302(time);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	./src/DS1302/include/DS1302.c:98: }
	ljmp	_WrBurst_1302
;------------------------------------------------------------
;Allocation info for local variables in function 'GetTime'
;------------------------------------------------------------
;currentTime               Allocated to registers r5 r6 r7 
;j                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:100: void GetTime(unsigned char *currentTime)
;	-----------------------------------------
;	 function GetTime
;	-----------------------------------------
_GetTime:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/DS1302/include/DS1302.c:103: CE_LINE = 0;
;	assignBit
	clr	_CE_LINE
;	./src/DS1302/include/DS1302.c:104: SCLK_LINE = 0;
;	assignBit
	clr	_SCLK_LINE
;	./src/DS1302/include/DS1302.c:105: for (j = 0; j <= 6; j++)
	mov	r4,#0x00
00102$:
;	./src/DS1302/include/DS1302.c:107: *currentTime = RdSingle_1302(0x81 + 2 * j);
	mov	ar3,r4
	mov	a,r3
	add	a,r3
	add	a,#0x81
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_RdSingle_1302
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	./src/DS1302/include/DS1302.c:108: currentTime++;
;	./src/DS1302/include/DS1302.c:105: for (j = 0; j <= 6; j++)
	inc	r4
	mov	a,r4
	add	a,#0xff - 0x06
	jnc	00102$
;	./src/DS1302/include/DS1302.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WrBurst_1302'
;------------------------------------------------------------
;SetTime                   Allocated to registers r5 r6 r7 
;j                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:113: void WrBurst_1302(unsigned char *SetTime)
;	-----------------------------------------
;	 function WrBurst_1302
;	-----------------------------------------
_WrBurst_1302:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/DS1302/include/DS1302.c:117: CE_LINE = 1;
;	assignBit
	setb	_CE_LINE
;	./src/DS1302/include/DS1302.c:119: WrByte_1302(0xBE);
	mov	dpl,#0xbe
	push	ar7
	push	ar6
	push	ar5
	lcall	_WrByte_1302
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/DS1302/include/DS1302.c:120: for (j = 0; j < 6; j++)
	mov	r4,#0x00
00102$:
;	./src/DS1302/include/DS1302.c:123: WrByte_1302(SetTime[j]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_WrByte_1302
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/DS1302/include/DS1302.c:120: for (j = 0; j < 6; j++)
	inc	r4
	cjne	r4,#0x06,00115$
00115$:
	jc	00102$
;	./src/DS1302/include/DS1302.c:125: WrByte_1302(0);
	mov	dpl,#0x00
	lcall	_WrByte_1302
;	./src/DS1302/include/DS1302.c:127: CE_LINE = 0;
;	assignBit
	clr	_CE_LINE
;	./src/DS1302/include/DS1302.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RdBurst_1302'
;------------------------------------------------------------
;CurrentTime               Allocated to registers r5 r6 r7 
;j                         Allocated to registers r4 
;------------------------------------------------------------
;	./src/DS1302/include/DS1302.c:130: void RdBurst_1302(unsigned char *CurrentTime)
;	-----------------------------------------
;	 function RdBurst_1302
;	-----------------------------------------
_RdBurst_1302:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/DS1302/include/DS1302.c:134: CE_LINE = 1;
;	assignBit
	setb	_CE_LINE
;	./src/DS1302/include/DS1302.c:136: WrByte_1302(0xBF);
	mov	dpl,#0xbf
	push	ar7
	push	ar6
	push	ar5
	lcall	_WrByte_1302
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/DS1302/include/DS1302.c:137: for (j = 0; j <= 6; j++)
	mov	r4,#0x07
00104$:
;	./src/DS1302/include/DS1302.c:140: *CurrentTime = RdByte_1302();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_RdByte_1302
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	./src/DS1302/include/DS1302.c:141: CurrentTime++;
	mov	a,r4
	dec	a
;	./src/DS1302/include/DS1302.c:137: for (j = 0; j <= 6; j++)
	mov	r4,a
	jnz	00104$
;	./src/DS1302/include/DS1302.c:144: CE_LINE = 0;
;	assignBit
	clr	_CE_LINE
;	./src/DS1302/include/DS1302.c:145: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
