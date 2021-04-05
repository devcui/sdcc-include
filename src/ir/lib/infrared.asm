;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module infrared
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Int1
	.globl _T_Count
	.globl _IR_out
	.globl _LED1
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
	.globl _Data_IR
	.globl _Flag_IR
	.globl _InitIR
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
_LED1	=	0x0091
_IR_out	=	0x00b3
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
_Flag_IR::
	.ds 1
_Data_IR::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	./src/ir/include/infrared.c:34: unsigned char Flag_IR = 0;
	mov	_Flag_IR,#0x00
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
;Allocation info for local variables in function 'InitIR'
;------------------------------------------------------------
;	./src/ir/include/infrared.c:39: void InitIR()
;	-----------------------------------------
;	 function InitIR
;	-----------------------------------------
_InitIR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/ir/include/infrared.c:43: IR_out = 1;
;	assignBit
	setb	_IR_out
;	./src/ir/include/infrared.c:47: TMOD &= 0xF0;
	anl	_TMOD,#0xf0
;	./src/ir/include/infrared.c:51: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	./src/ir/include/infrared.c:53: TR0 = 1;
;	assignBit
	setb	_TR0
;	./src/ir/include/infrared.c:55: ET0 = 0;
;	assignBit
	clr	_ET0
;	./src/ir/include/infrared.c:59: IT1 = 1;
;	assignBit
	setb	_IT1
;	./src/ir/include/infrared.c:61: EX1 = 1;
;	assignBit
	setb	_EX1
;	./src/ir/include/infrared.c:63: EA = 1;
;	assignBit
	setb	_EA
;	./src/ir/include/infrared.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T_Count'
;------------------------------------------------------------
;flag                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/ir/include/infrared.c:66: unsigned int T_Count(unsigned int flag)
;	-----------------------------------------
;	 function T_Count
;	-----------------------------------------
_T_Count:
	mov	r6,dpl
	mov	r7,dph
;	./src/ir/include/infrared.c:69: TH0 = 0;
	mov	_TH0,#0x00
;	./src/ir/include/infrared.c:70: TL0 = 0;
	mov	_TL0,#0x00
;	./src/ir/include/infrared.c:72: TR0 = 1;
;	assignBit
	setb	_TR0
;	./src/ir/include/infrared.c:75: while (IR_out == flag)
00103$:
	mov	c,_IR_out
	clr	a
	rlc	a
	mov	r5,#0x00
	cjne	a,ar6,00105$
	mov	a,r5
	cjne	a,ar7,00105$
;	./src/ir/include/infrared.c:79: if (TH0 > (Time_16ms >> 8))
	mov	a,_TH0
	add	a,#0xff - 0x3e
	jnc	00103$
;	./src/ir/include/infrared.c:81: break;
00105$:
;	./src/ir/include/infrared.c:85: TR0 = 0;
;	assignBit
	clr	_TR0
;	./src/ir/include/infrared.c:88: return (TH0 * 256 + TL0);
	mov	r7,_TH0
	mov	r6,#0x00
	mov	r4,_TL0
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
;	./src/ir/include/infrared.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Int1'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;T_Low                     Allocated to registers r4 r5 
;T_High                    Allocated to registers r2 r3 
;------------------------------------------------------------
;	./src/ir/include/infrared.c:92: void Int1() __interrupt(2)
;	-----------------------------------------
;	 function Int1
;	-----------------------------------------
_Int1:
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
;	./src/ir/include/infrared.c:99: T_Low = T_Count(LOW_IR);
	mov	dptr,#0x0000
	lcall	_T_Count
	mov	r6,dpl
	mov	r7,dph
;	./src/ir/include/infrared.c:101: T_High = T_Count(HIGH_IR);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_T_Count
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	./src/ir/include/infrared.c:105: if (T_Low < Min_9ms || T_Low > Max_9ms || T_High < Min_4_5ms || T_High > MAX_4_5ms)
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r7
	subb	a,#0x1f
	jc	00101$
	mov	a,#0x10
	subb	a,r6
	mov	a,#0x27
	subb	a,r7
	jc	00101$
	mov	a,r4
	subb	a,#0xac
	mov	a,r5
	subb	a,#0x0d
	jc	00101$
	mov	a,#0x88
	subb	a,r4
	mov	a,#0x13
	subb	a,r5
	jnc	00125$
00101$:
;	./src/ir/include/infrared.c:108: IE1 = 0;
;	assignBit
	clr	_IE1
;	./src/ir/include/infrared.c:109: return;
	ljmp	00116$
;	./src/ir/include/infrared.c:116: for (i = 0; i < 32; i++)
00125$:
	mov	r6,#0x00
	mov	r7,#0x00
00114$:
;	./src/ir/include/infrared.c:119: T_Low = T_Count(LOW_IR);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	lcall	_T_Count
	mov	r4,dpl
	mov	r5,dph
;	./src/ir/include/infrared.c:121: T_High = T_Count(HIGH_IR);
	mov	dptr,#0x0001
	push	ar5
	push	ar4
	lcall	_T_Count
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/ir/include/infrared.c:123: if (T_Low < Min_560us || T_Low > Max_560us || T_High < Min_560us || T_High > Max_1680us)
	clr	c
	mov	a,r4
	subb	a,#0x2c
	mov	a,r5
	subb	a,#0x01
	jc	00106$
	mov	a,#0xbc
	subb	a,r4
	mov	a,#0x02
	subb	a,r5
	jc	00106$
	mov	a,r2
	subb	a,#0x2c
	mov	a,r3
	subb	a,#0x01
	jc	00106$
	mov	a,#0x14
	subb	a,r2
	mov	a,#0x05
	subb	a,r3
	jnc	00107$
00106$:
;	./src/ir/include/infrared.c:126: IE1 = 0;
;	assignBit
	clr	_IE1
;	./src/ir/include/infrared.c:127: return;
	sjmp	00116$
00107$:
;	./src/ir/include/infrared.c:130: Data_IR >>= 1;
	mov	a,(_Data_IR + 3)
	clr	c
	rrc	a
	mov	(_Data_IR + 3),a
	mov	a,(_Data_IR + 2)
	rrc	a
	mov	(_Data_IR + 2),a
	mov	a,(_Data_IR + 1)
	rrc	a
	mov	(_Data_IR + 1),a
	mov	a,_Data_IR
	rrc	a
	mov	_Data_IR,a
;	./src/ir/include/infrared.c:131: if (T_High > Min_1680us)
	clr	c
	mov	a,#0x08
	subb	a,r2
	mov	a,#0x07
	subb	a,r3
	jnc	00115$
;	./src/ir/include/infrared.c:134: Data_IR |= 0x80000000;
	orl	(_Data_IR + 3),#0x80
00115$:
;	./src/ir/include/infrared.c:116: for (i = 0; i < 32; i++)
	inc	r6
	cjne	r6,#0x00,00172$
	inc	r7
00172$:
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	subb	a,#0x00
	jc	00114$
;	./src/ir/include/infrared.c:138: Flag_IR = 1;
	mov	_Flag_IR,#0x01
;	./src/ir/include/infrared.c:140: IE1 = 0;
;	assignBit
	clr	_IE1
00116$:
;	./src/ir/include/infrared.c:141: }
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
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
