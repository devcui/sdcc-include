;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module I2C
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SDA_I2C
	.globl _SCL_I2C
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
	.globl _Delay_I2C
	.globl _Start_I2C
	.globl _Stop_I2C
	.globl _Wr_I2C
	.globl _RdACK_I2C
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
_SCL_I2C	=	0x0081
_SDA_I2C	=	0x0082
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'Delay_I2C'
;------------------------------------------------------------
;	./src/i2c/include/I2C.c:19: void Delay_I2C(void)
;	-----------------------------------------
;	 function Delay_I2C
;	-----------------------------------------
_Delay_I2C:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/i2c/include/I2C.c:21: NOP();
	NOP	
;	./src/i2c/include/I2C.c:22: NOP();
	NOP	
;	./src/i2c/include/I2C.c:23: NOP();
	NOP	
;	./src/i2c/include/I2C.c:24: NOP();
	NOP	
;	./src/i2c/include/I2C.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Start_I2C'
;------------------------------------------------------------
;	./src/i2c/include/I2C.c:27: void Start_I2C(void)
;	-----------------------------------------
;	 function Start_I2C
;	-----------------------------------------
_Start_I2C:
;	./src/i2c/include/I2C.c:30: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:31: SDA_I2C = 1;
;	assignBit
	setb	_SDA_I2C
;	./src/i2c/include/I2C.c:32: Delay_I2C();
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:33: SCL_I2C = 1;
;	assignBit
	setb	_SCL_I2C
;	./src/i2c/include/I2C.c:34: Delay_I2C();
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:36: SDA_I2C = 0;
;	assignBit
	clr	_SDA_I2C
;	./src/i2c/include/I2C.c:37: Delay_I2C();
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:39: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:40: Delay_I2C();
;	./src/i2c/include/I2C.c:41: }
	ljmp	_Delay_I2C
;------------------------------------------------------------
;Allocation info for local variables in function 'Stop_I2C'
;------------------------------------------------------------
;	./src/i2c/include/I2C.c:43: void Stop_I2C(void)
;	-----------------------------------------
;	 function Stop_I2C
;	-----------------------------------------
_Stop_I2C:
;	./src/i2c/include/I2C.c:46: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:47: SDA_I2C = 0;
;	assignBit
	clr	_SDA_I2C
;	./src/i2c/include/I2C.c:48: Delay_I2C();
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:50: SCL_I2C = 1;
;	assignBit
	setb	_SCL_I2C
;	./src/i2c/include/I2C.c:51: Delay_I2C();
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:53: SDA_I2C = 1;
;	assignBit
	setb	_SDA_I2C
;	./src/i2c/include/I2C.c:54: Delay_I2C();
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:55: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Wr_I2C'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;ack                       Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	./src/i2c/include/I2C.c:58: unsigned char Wr_I2C(unsigned char dat)
;	-----------------------------------------
;	 function Wr_I2C
;	-----------------------------------------
_Wr_I2C:
	mov	r7,dpl
;	./src/i2c/include/I2C.c:70: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	r6,#0x80
00105$:
;	./src/i2c/include/I2C.c:77: if ((mask & dat) == 0)
	mov	a,r7
	anl	a,r6
	jnz	00102$
;	./src/i2c/include/I2C.c:79: SDA_I2C = 0;
;	assignBit
	clr	_SDA_I2C
	sjmp	00103$
00102$:
;	./src/i2c/include/I2C.c:83: SDA_I2C = 1;
;	assignBit
	setb	_SDA_I2C
00103$:
;	./src/i2c/include/I2C.c:86: Delay_I2C();
	push	ar7
	push	ar6
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:88: SCL_I2C = 1;
;	assignBit
	setb	_SCL_I2C
;	./src/i2c/include/I2C.c:90: Delay_I2C();
	lcall	_Delay_I2C
	pop	ar6
	pop	ar7
;	./src/i2c/include/I2C.c:93: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:70: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	jnz	00105$
;	./src/i2c/include/I2C.c:96: SDA_I2C = 1;
;	assignBit
	setb	_SDA_I2C
;	./src/i2c/include/I2C.c:97: Delay_I2C();
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:99: SCL_I2C = 1;
;	assignBit
	setb	_SCL_I2C
;	./src/i2c/include/I2C.c:101: ack = SDA_I2C;
	mov	c,_SDA_I2C
	clr	a
	rlc	a
	mov	r7,a
;	./src/i2c/include/I2C.c:102: Delay_I2C();
	push	ar7
	lcall	_Delay_I2C
	pop	ar7
;	./src/i2c/include/I2C.c:104: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:105: return ack;
	mov	dpl,r7
;	./src/i2c/include/I2C.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RdACK_I2C'
;------------------------------------------------------------
;ack                       Allocated to registers r7 
;mask                      Allocated to registers r5 
;dat                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/i2c/include/I2C.c:110: unsigned char RdACK_I2C(unsigned char ack)
;	-----------------------------------------
;	 function RdACK_I2C
;	-----------------------------------------
_RdACK_I2C:
	mov	r7,dpl
;	./src/i2c/include/I2C.c:113: unsigned char dat = 0;
	mov	r6,#0x00
;	./src/i2c/include/I2C.c:115: SDA_I2C = 1;
;	assignBit
	setb	_SDA_I2C
;	./src/i2c/include/I2C.c:116: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	r5,#0x80
00105$:
;	./src/i2c/include/I2C.c:119: Delay_I2C();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Delay_I2C
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/i2c/include/I2C.c:121: SCL_I2C = 1;
;	assignBit
	setb	_SCL_I2C
;	./src/i2c/include/I2C.c:122: if (SDA_I2C == 0)
	jb	_SDA_I2C,00102$
;	./src/i2c/include/I2C.c:131: dat &= ~mask;
	mov	a,r5
	cpl	a
	mov	r4,a
	anl	ar6,a
	sjmp	00103$
00102$:
;	./src/i2c/include/I2C.c:142: dat |= mask;
	mov	a,r5
	orl	ar6,a
00103$:
;	./src/i2c/include/I2C.c:145: Delay_I2C();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Delay_I2C
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/i2c/include/I2C.c:147: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:116: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	a,r5
	clr	c
	rrc	a
	mov	r5,a
	jnz	00105$
;	./src/i2c/include/I2C.c:150: SDA_I2C = ack;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_SDA_I2C,c
;	./src/i2c/include/I2C.c:152: Delay_I2C();
	push	ar6
	lcall	_Delay_I2C
;	./src/i2c/include/I2C.c:154: SCL_I2C = 1;
;	assignBit
	setb	_SCL_I2C
;	./src/i2c/include/I2C.c:156: Delay_I2C();
	lcall	_Delay_I2C
	pop	ar6
;	./src/i2c/include/I2C.c:158: SCL_I2C = 0;
;	assignBit
	clr	_SCL_I2C
;	./src/i2c/include/I2C.c:159: return dat;
	mov	dpl,r6
;	./src/i2c/include/I2C.c:160: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
