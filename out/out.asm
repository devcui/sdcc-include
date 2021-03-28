;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Disp_1602_str
	.globl _Init_1602
	.globl _WR_Dat
	.globl _WR_Cmd
	.globl _Ready
	.globl _RD_sta
	.globl _EN_1602
	.globl _RW_1602
	.globl _RS_1602
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
	.globl _Disp_1602_str_PARM_3
	.globl _Disp_1602_str_PARM_2
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
_RS_1602	=	0x00b6
_RW_1602	=	0x00b5
_EN_1602	=	0x00b4
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Disp_1602_str_PARM_2:
	.ds 1
_Disp_1602_str_PARM_3:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'RD_sta'
;------------------------------------------------------------
;sta                       Allocated to registers 
;------------------------------------------------------------
;	./src/i2c/lcd.c:18: unsigned char RD_sta() //读状态函数
;	-----------------------------------------
;	 function RD_sta
;	-----------------------------------------
_RD_sta:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/i2c/lcd.c:21: RS_1602 = 0;
;	assignBit
	clr	_RS_1602
;	./src/i2c/lcd.c:22: RW_1602 = 1; //进入读 1602 状态模式
;	assignBit
	setb	_RW_1602
;	./src/i2c/lcd.c:23: EN_1602 = 1; //拉高使能信号
;	assignBit
	setb	_EN_1602
;	./src/i2c/lcd.c:24: sta = P2;    //将 1602 状态数据读取
	mov	dpl,_P2
;	./src/i2c/lcd.c:25: EN_1602 = 0; //拉低使能，完成读操作
;	assignBit
	clr	_EN_1602
;	./src/i2c/lcd.c:26: return sta;  //将状态值返
;	./src/i2c/lcd.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Ready'
;------------------------------------------------------------
;	./src/i2c/lcd.c:29: void Ready() //空闲检测函数
;	-----------------------------------------
;	 function Ready
;	-----------------------------------------
_Ready:
;	./src/i2c/lcd.c:31: P2 = 0xFF;
	mov	_P2,#0xff
;	./src/i2c/lcd.c:32: while (RD_sta() & 0x80)
00101$:
	lcall	_RD_sta
	mov	a,dpl
	jb	acc.7,00101$
;	./src/i2c/lcd.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WR_Cmd'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/i2c/lcd.c:36: void WR_Cmd(unsigned char cmd) //写指令函数
;	-----------------------------------------
;	 function WR_Cmd
;	-----------------------------------------
_WR_Cmd:
	mov	r7,dpl
;	./src/i2c/lcd.c:38: Ready(); //检测 1602 是否处于空闲状态
	push	ar7
	lcall	_Ready
	pop	ar7
;	./src/i2c/lcd.c:39: RS_1602 = 0;
;	assignBit
	clr	_RS_1602
;	./src/i2c/lcd.c:40: RW_1602 = 0; //进入写指令模式
;	assignBit
	clr	_RW_1602
;	./src/i2c/lcd.c:41: P2 = cmd;    //将指令数据输出
	mov	_P2,r7
;	./src/i2c/lcd.c:42: EN_1602 = 1; //拉高使能信号
;	assignBit
	setb	_EN_1602
;	./src/i2c/lcd.c:43: EN_1602 = 0; //拉低使能，完成写操作
;	assignBit
	clr	_EN_1602
;	./src/i2c/lcd.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WR_Dat'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/i2c/lcd.c:46: void WR_Dat(unsigned char dat) //写数据函数
;	-----------------------------------------
;	 function WR_Dat
;	-----------------------------------------
_WR_Dat:
	mov	r7,dpl
;	./src/i2c/lcd.c:48: Ready(); //检测 1602 是否处于空闲状态
	push	ar7
	lcall	_Ready
	pop	ar7
;	./src/i2c/lcd.c:49: RS_1602 = 1;
;	assignBit
	setb	_RS_1602
;	./src/i2c/lcd.c:50: RW_1602 = 0; //进入写数据模式
;	assignBit
	clr	_RW_1602
;	./src/i2c/lcd.c:52: P2 = dat; //将数据输出
	mov	_P2,r7
;	./src/i2c/lcd.c:54: EN_1602 = 1; //拉高使能信号
;	assignBit
	setb	_EN_1602
;	./src/i2c/lcd.c:55: EN_1602 = 0; //拉低使能，完成写操作
;	assignBit
	clr	_EN_1602
;	./src/i2c/lcd.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_1602'
;------------------------------------------------------------
;	./src/i2c/lcd.c:58: void Init_1602() //1602 初始化函
;	-----------------------------------------
;	 function Init_1602
;	-----------------------------------------
_Init_1602:
;	./src/i2c/lcd.c:60: WR_Cmd(0x38); //设置 16x2 显示，5x7 点阵，8 位数据接口
	mov	dpl,#0x38
	lcall	_WR_Cmd
;	./src/i2c/lcd.c:61: WR_Cmd(0x0C); //开显示，关闭光标
	mov	dpl,#0x0c
	lcall	_WR_Cmd
;	./src/i2c/lcd.c:62: WR_Cmd(0x06); //读或写完一个字符后，地址指针、光标均加 1
	mov	dpl,#0x06
	lcall	_WR_Cmd
;	./src/i2c/lcd.c:63: WR_Cmd(0x01); //数据指针清零、所示显示清零
	mov	dpl,#0x01
;	./src/i2c/lcd.c:64: }
	ljmp	_WR_Cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'Disp_1602_str'
;------------------------------------------------------------
;column                    Allocated with name '_Disp_1602_str_PARM_2'
;str                       Allocated with name '_Disp_1602_str_PARM_3'
;row                       Allocated to registers r7 
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/i2c/lcd.c:66: void Disp_1602_str(unsigned char row, unsigned char column, char *str)
;	-----------------------------------------
;	 function Disp_1602_str
;	-----------------------------------------
_Disp_1602_str:
	mov	r7,dpl
;	./src/i2c/lcd.c:70: addr = (row - 1) * 0x40 + (column - 1); //组合成地址
	dec	r7
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	mov	a,_Disp_1602_str_PARM_2
	dec	a
	add	a,r7
;	./src/i2c/lcd.c:71: WR_Cmd(0x80 + addr);                    //写地址命令
	add	a,#0x80
	mov	dpl,a
	lcall	_WR_Cmd
;	./src/i2c/lcd.c:73: while (*str) //判断 str 字符串是否已结束
	mov	r5,_Disp_1602_str_PARM_3
	mov	r6,(_Disp_1602_str_PARM_3 + 1)
	mov	r7,(_Disp_1602_str_PARM_3 + 2)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	./src/i2c/lcd.c:75: WR_Dat(*str++); //将 str 字符串数据依次写入
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_WR_Dat
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	./src/i2c/lcd.c:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./src/i2c/lcd.c:79: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/i2c/lcd.c:81: P2 = 0x00; //关闭所有数码管
	mov	_P2,#0x00
;	./src/i2c/lcd.c:82: P06 = 1;
;	assignBit
	setb	_P06
;	./src/i2c/lcd.c:83: P06 = 0;                            //锁存段
;	assignBit
	clr	_P06
;	./src/i2c/lcd.c:84: Init_1602();                        //1602 初始ZaoDianShui化
	lcall	_Init_1602
;	./src/i2c/lcd.c:85: Disp_1602_str(1, 3, "ZhaiZhuZhu");  //第 1 行第 3 列开始显示"RongYi Mini-51"
	mov	_Disp_1602_str_PARM_3,#___str_0
	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_0 >> 8)
	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
	mov	_Disp_1602_str_PARM_2,#0x03
	mov	dpl,#0x01
	lcall	_Disp_1602_str
;	./src/i2c/lcd.c:86: Disp_1602_str(2, 3, "ZaoDianShui"); //第 2 行第 3 列开始显示"LCD1602 Test!"
	mov	_Disp_1602_str_PARM_3,#___str_1
	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_1 >> 8)
	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
	mov	_Disp_1602_str_PARM_2,#0x03
	mov	dpl,#0x02
	lcall	_Disp_1602_str
;	./src/i2c/lcd.c:87: while (1)
00102$:
;	./src/i2c/lcd.c:89: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "ZhaiZhuZhu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "ZaoDianShui"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
