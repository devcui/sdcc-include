                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Disp_1602_str
                                     13 	.globl _Init_1602
                                     14 	.globl _WR_Dat
                                     15 	.globl _WR_Cmd
                                     16 	.globl _Ready
                                     17 	.globl _RD_sta
                                     18 	.globl _EN_1602
                                     19 	.globl _RW_1602
                                     20 	.globl _RS_1602
                                     21 	.globl _CP_RL2
                                     22 	.globl _C_T2
                                     23 	.globl _TR2
                                     24 	.globl _EXEN2
                                     25 	.globl _TCLK
                                     26 	.globl _RCLK
                                     27 	.globl _EXF2
                                     28 	.globl _TF2
                                     29 	.globl _T2
                                     30 	.globl _T2EX
                                     31 	.globl _RI
                                     32 	.globl _TI
                                     33 	.globl _RB8
                                     34 	.globl _TB8
                                     35 	.globl _REN
                                     36 	.globl _SM2
                                     37 	.globl _SM1
                                     38 	.globl _FE
                                     39 	.globl _SM0
                                     40 	.globl _RXD
                                     41 	.globl _TXD
                                     42 	.globl _INT0
                                     43 	.globl _INT1
                                     44 	.globl _T0
                                     45 	.globl _T1
                                     46 	.globl _WR
                                     47 	.globl _RD
                                     48 	.globl _PX0
                                     49 	.globl _PT0
                                     50 	.globl _PX1
                                     51 	.globl _PT1
                                     52 	.globl _PS
                                     53 	.globl _PT2
                                     54 	.globl _EX0
                                     55 	.globl _ET0
                                     56 	.globl _EX1
                                     57 	.globl _ET1
                                     58 	.globl _ES
                                     59 	.globl _ET2
                                     60 	.globl _EC
                                     61 	.globl _EA
                                     62 	.globl _IT0
                                     63 	.globl _IE0
                                     64 	.globl _IT1
                                     65 	.globl _IE1
                                     66 	.globl _TR0
                                     67 	.globl _TF0
                                     68 	.globl _TR1
                                     69 	.globl _TF1
                                     70 	.globl _P
                                     71 	.globl _OV
                                     72 	.globl _RS0
                                     73 	.globl _RS1
                                     74 	.globl _F0
                                     75 	.globl _AC
                                     76 	.globl _CY
                                     77 	.globl _P37
                                     78 	.globl _P36
                                     79 	.globl _P35
                                     80 	.globl _P34
                                     81 	.globl _P33
                                     82 	.globl _P32
                                     83 	.globl _P31
                                     84 	.globl _P30
                                     85 	.globl _P27
                                     86 	.globl _P26
                                     87 	.globl _P25
                                     88 	.globl _P24
                                     89 	.globl _P23
                                     90 	.globl _P22
                                     91 	.globl _P21
                                     92 	.globl _P20
                                     93 	.globl _P17
                                     94 	.globl _P16
                                     95 	.globl _P15
                                     96 	.globl _P14
                                     97 	.globl _P13
                                     98 	.globl _P12
                                     99 	.globl _P11
                                    100 	.globl _P10
                                    101 	.globl _P07
                                    102 	.globl _P06
                                    103 	.globl _P05
                                    104 	.globl _P04
                                    105 	.globl _P03
                                    106 	.globl _P02
                                    107 	.globl _P01
                                    108 	.globl _P00
                                    109 	.globl _P40
                                    110 	.globl _P41
                                    111 	.globl _P42
                                    112 	.globl _P43
                                    113 	.globl _P44
                                    114 	.globl _P45
                                    115 	.globl _P46
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2MOD
                                    121 	.globl _T2CON
                                    122 	.globl _SADEN
                                    123 	.globl _IPH
                                    124 	.globl _SADDR
                                    125 	.globl _AUXR1
                                    126 	.globl _AUXR
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _IP
                                    130 	.globl _IE
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _B
                                    142 	.globl _ACC
                                    143 	.globl _PSW
                                    144 	.globl _P3
                                    145 	.globl _P2
                                    146 	.globl _P1
                                    147 	.globl _P0
                                    148 	.globl _ISP_CONTR
                                    149 	.globl _ISP_TRIG
                                    150 	.globl _ISP_CMD
                                    151 	.globl _ISP_ADDRL
                                    152 	.globl _ISP_ADDRH
                                    153 	.globl _ISP_DATA
                                    154 	.globl _WDT_CONTR
                                    155 	.globl _XICON
                                    156 	.globl _P4
                                    157 	.globl _Disp_1602_str_PARM_3
                                    158 	.globl _Disp_1602_str_PARM_2
                                    159 ;--------------------------------------------------------
                                    160 ; special function registers
                                    161 ;--------------------------------------------------------
                                    162 	.area RSEG    (ABS,DATA)
      000000                        163 	.org 0x0000
                           0000E8   164 _P4	=	0x00e8
                           0000C0   165 _XICON	=	0x00c0
                           0000E1   166 _WDT_CONTR	=	0x00e1
                           0000E2   167 _ISP_DATA	=	0x00e2
                           0000E3   168 _ISP_ADDRH	=	0x00e3
                           0000E4   169 _ISP_ADDRL	=	0x00e4
                           0000E5   170 _ISP_CMD	=	0x00e5
                           0000E6   171 _ISP_TRIG	=	0x00e6
                           0000E7   172 _ISP_CONTR	=	0x00e7
                           000080   173 _P0	=	0x0080
                           000090   174 _P1	=	0x0090
                           0000A0   175 _P2	=	0x00a0
                           0000B0   176 _P3	=	0x00b0
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000F0   179 _B	=	0x00f0
                           000081   180 _SP	=	0x0081
                           000082   181 _DPL	=	0x0082
                           000083   182 _DPH	=	0x0083
                           000087   183 _PCON	=	0x0087
                           000088   184 _TCON	=	0x0088
                           000089   185 _TMOD	=	0x0089
                           00008A   186 _TL0	=	0x008a
                           00008B   187 _TL1	=	0x008b
                           00008C   188 _TH0	=	0x008c
                           00008D   189 _TH1	=	0x008d
                           0000A8   190 _IE	=	0x00a8
                           0000B8   191 _IP	=	0x00b8
                           000098   192 _SCON	=	0x0098
                           000099   193 _SBUF	=	0x0099
                           00008E   194 _AUXR	=	0x008e
                           0000A2   195 _AUXR1	=	0x00a2
                           0000A9   196 _SADDR	=	0x00a9
                           0000B7   197 _IPH	=	0x00b7
                           0000B9   198 _SADEN	=	0x00b9
                           0000C8   199 _T2CON	=	0x00c8
                           0000C9   200 _T2MOD	=	0x00c9
                           0000CA   201 _RCAP2L	=	0x00ca
                           0000CB   202 _RCAP2H	=	0x00cb
                           0000CC   203 _TL2	=	0x00cc
                           0000CD   204 _TH2	=	0x00cd
                                    205 ;--------------------------------------------------------
                                    206 ; special function bits
                                    207 ;--------------------------------------------------------
                                    208 	.area RSEG    (ABS,DATA)
      000000                        209 	.org 0x0000
                           0000EE   210 _P46	=	0x00ee
                           0000ED   211 _P45	=	0x00ed
                           0000EC   212 _P44	=	0x00ec
                           0000EB   213 _P43	=	0x00eb
                           0000EA   214 _P42	=	0x00ea
                           0000E9   215 _P41	=	0x00e9
                           0000E8   216 _P40	=	0x00e8
                           000080   217 _P00	=	0x0080
                           000081   218 _P01	=	0x0081
                           000082   219 _P02	=	0x0082
                           000083   220 _P03	=	0x0083
                           000084   221 _P04	=	0x0084
                           000085   222 _P05	=	0x0085
                           000086   223 _P06	=	0x0086
                           000087   224 _P07	=	0x0087
                           000090   225 _P10	=	0x0090
                           000091   226 _P11	=	0x0091
                           000092   227 _P12	=	0x0092
                           000093   228 _P13	=	0x0093
                           000094   229 _P14	=	0x0094
                           000095   230 _P15	=	0x0095
                           000096   231 _P16	=	0x0096
                           000097   232 _P17	=	0x0097
                           0000A0   233 _P20	=	0x00a0
                           0000A1   234 _P21	=	0x00a1
                           0000A2   235 _P22	=	0x00a2
                           0000A3   236 _P23	=	0x00a3
                           0000A4   237 _P24	=	0x00a4
                           0000A5   238 _P25	=	0x00a5
                           0000A6   239 _P26	=	0x00a6
                           0000A7   240 _P27	=	0x00a7
                           0000B0   241 _P30	=	0x00b0
                           0000B1   242 _P31	=	0x00b1
                           0000B2   243 _P32	=	0x00b2
                           0000B3   244 _P33	=	0x00b3
                           0000B4   245 _P34	=	0x00b4
                           0000B5   246 _P35	=	0x00b5
                           0000B6   247 _P36	=	0x00b6
                           0000B7   248 _P37	=	0x00b7
                           0000D7   249 _CY	=	0x00d7
                           0000D6   250 _AC	=	0x00d6
                           0000D5   251 _F0	=	0x00d5
                           0000D4   252 _RS1	=	0x00d4
                           0000D3   253 _RS0	=	0x00d3
                           0000D2   254 _OV	=	0x00d2
                           0000D0   255 _P	=	0x00d0
                           00008F   256 _TF1	=	0x008f
                           00008E   257 _TR1	=	0x008e
                           00008D   258 _TF0	=	0x008d
                           00008C   259 _TR0	=	0x008c
                           00008B   260 _IE1	=	0x008b
                           00008A   261 _IT1	=	0x008a
                           000089   262 _IE0	=	0x0089
                           000088   263 _IT0	=	0x0088
                           0000AF   264 _EA	=	0x00af
                           0000AE   265 _EC	=	0x00ae
                           0000AD   266 _ET2	=	0x00ad
                           0000AC   267 _ES	=	0x00ac
                           0000AB   268 _ET1	=	0x00ab
                           0000AA   269 _EX1	=	0x00aa
                           0000A9   270 _ET0	=	0x00a9
                           0000A8   271 _EX0	=	0x00a8
                           0000BD   272 _PT2	=	0x00bd
                           0000BC   273 _PS	=	0x00bc
                           0000BB   274 _PT1	=	0x00bb
                           0000BA   275 _PX1	=	0x00ba
                           0000B9   276 _PT0	=	0x00b9
                           0000B8   277 _PX0	=	0x00b8
                           0000B7   278 _RD	=	0x00b7
                           0000B6   279 _WR	=	0x00b6
                           0000B5   280 _T1	=	0x00b5
                           0000B4   281 _T0	=	0x00b4
                           0000B3   282 _INT1	=	0x00b3
                           0000B2   283 _INT0	=	0x00b2
                           0000B1   284 _TXD	=	0x00b1
                           0000B0   285 _RXD	=	0x00b0
                           00009F   286 _SM0	=	0x009f
                           00009F   287 _FE	=	0x009f
                           00009E   288 _SM1	=	0x009e
                           00009D   289 _SM2	=	0x009d
                           00009C   290 _REN	=	0x009c
                           00009B   291 _TB8	=	0x009b
                           00009A   292 _RB8	=	0x009a
                           000099   293 _TI	=	0x0099
                           000098   294 _RI	=	0x0098
                           000091   295 _T2EX	=	0x0091
                           000090   296 _T2	=	0x0090
                           0000CF   297 _TF2	=	0x00cf
                           0000CE   298 _EXF2	=	0x00ce
                           0000CD   299 _RCLK	=	0x00cd
                           0000CC   300 _TCLK	=	0x00cc
                           0000CB   301 _EXEN2	=	0x00cb
                           0000CA   302 _TR2	=	0x00ca
                           0000C9   303 _C_T2	=	0x00c9
                           0000C8   304 _CP_RL2	=	0x00c8
                           0000B6   305 _RS_1602	=	0x00b6
                           0000B5   306 _RW_1602	=	0x00b5
                           0000B4   307 _EN_1602	=	0x00b4
                                    308 ;--------------------------------------------------------
                                    309 ; overlayable register banks
                                    310 ;--------------------------------------------------------
                                    311 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        312 	.ds 8
                                    313 ;--------------------------------------------------------
                                    314 ; internal ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area DSEG    (DATA)
      000008                        317 _Disp_1602_str_PARM_2:
      000008                        318 	.ds 1
      000009                        319 _Disp_1602_str_PARM_3:
      000009                        320 	.ds 3
                                    321 ;--------------------------------------------------------
                                    322 ; overlayable items in internal ram 
                                    323 ;--------------------------------------------------------
                                    324 	.area	OSEG    (OVR,DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; Stack segment in internal ram 
                                    327 ;--------------------------------------------------------
                                    328 	.area	SSEG
      00000C                        329 __start__stack:
      00000C                        330 	.ds	1
                                    331 
                                    332 ;--------------------------------------------------------
                                    333 ; indirectly addressable internal ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area ISEG    (DATA)
                                    336 ;--------------------------------------------------------
                                    337 ; absolute internal ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area IABS    (ABS,DATA)
                                    340 	.area IABS    (ABS,DATA)
                                    341 ;--------------------------------------------------------
                                    342 ; bit data
                                    343 ;--------------------------------------------------------
                                    344 	.area BSEG    (BIT)
                                    345 ;--------------------------------------------------------
                                    346 ; paged external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area PSEG    (PAG,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; external ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XSEG    (XDATA)
                                    353 ;--------------------------------------------------------
                                    354 ; absolute external ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area XABS    (ABS,XDATA)
                                    357 ;--------------------------------------------------------
                                    358 ; external initialized ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area XISEG   (XDATA)
                                    361 	.area HOME    (CODE)
                                    362 	.area GSINIT0 (CODE)
                                    363 	.area GSINIT1 (CODE)
                                    364 	.area GSINIT2 (CODE)
                                    365 	.area GSINIT3 (CODE)
                                    366 	.area GSINIT4 (CODE)
                                    367 	.area GSINIT5 (CODE)
                                    368 	.area GSINIT  (CODE)
                                    369 	.area GSFINAL (CODE)
                                    370 	.area CSEG    (CODE)
                                    371 ;--------------------------------------------------------
                                    372 ; interrupt vector 
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
      000000                        375 __interrupt_vect:
      000000 02 00 06         [24]  376 	ljmp	__sdcc_gsinit_startup
                                    377 ;--------------------------------------------------------
                                    378 ; global & static initialisations
                                    379 ;--------------------------------------------------------
                                    380 	.area HOME    (CODE)
                                    381 	.area GSINIT  (CODE)
                                    382 	.area GSFINAL (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.globl __sdcc_gsinit_startup
                                    385 	.globl __sdcc_program_startup
                                    386 	.globl __start__stack
                                    387 	.globl __mcs51_genXINIT
                                    388 	.globl __mcs51_genXRAMCLEAR
                                    389 	.globl __mcs51_genRAMCLEAR
                                    390 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  391 	ljmp	__sdcc_program_startup
                                    392 ;--------------------------------------------------------
                                    393 ; Home
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
                                    396 	.area HOME    (CODE)
      000003                        397 __sdcc_program_startup:
      000003 02 00 F9         [24]  398 	ljmp	_main
                                    399 ;	return from main will return to caller
                                    400 ;--------------------------------------------------------
                                    401 ; code
                                    402 ;--------------------------------------------------------
                                    403 	.area CSEG    (CODE)
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'RD_sta'
                                    406 ;------------------------------------------------------------
                                    407 ;sta                       Allocated to registers 
                                    408 ;------------------------------------------------------------
                                    409 ;	./src/i2c/lcd.c:18: unsigned char RD_sta() //读状态函数
                                    410 ;	-----------------------------------------
                                    411 ;	 function RD_sta
                                    412 ;	-----------------------------------------
      000062                        413 _RD_sta:
                           000007   414 	ar7 = 0x07
                           000006   415 	ar6 = 0x06
                           000005   416 	ar5 = 0x05
                           000004   417 	ar4 = 0x04
                           000003   418 	ar3 = 0x03
                           000002   419 	ar2 = 0x02
                           000001   420 	ar1 = 0x01
                           000000   421 	ar0 = 0x00
                                    422 ;	./src/i2c/lcd.c:21: RS_1602 = 0;
                                    423 ;	assignBit
      000062 C2 B6            [12]  424 	clr	_RS_1602
                                    425 ;	./src/i2c/lcd.c:22: RW_1602 = 1; //进入读 1602 状态模式
                                    426 ;	assignBit
      000064 D2 B5            [12]  427 	setb	_RW_1602
                                    428 ;	./src/i2c/lcd.c:23: EN_1602 = 1; //拉高使能信号
                                    429 ;	assignBit
      000066 D2 B4            [12]  430 	setb	_EN_1602
                                    431 ;	./src/i2c/lcd.c:24: sta = P2;    //将 1602 状态数据读取
      000068 85 A0 82         [24]  432 	mov	dpl,_P2
                                    433 ;	./src/i2c/lcd.c:25: EN_1602 = 0; //拉低使能，完成读操作
                                    434 ;	assignBit
      00006B C2 B4            [12]  435 	clr	_EN_1602
                                    436 ;	./src/i2c/lcd.c:26: return sta;  //将状态值返
                                    437 ;	./src/i2c/lcd.c:27: }
      00006D 22               [24]  438 	ret
                                    439 ;------------------------------------------------------------
                                    440 ;Allocation info for local variables in function 'Ready'
                                    441 ;------------------------------------------------------------
                                    442 ;	./src/i2c/lcd.c:29: void Ready() //空闲检测函数
                                    443 ;	-----------------------------------------
                                    444 ;	 function Ready
                                    445 ;	-----------------------------------------
      00006E                        446 _Ready:
                                    447 ;	./src/i2c/lcd.c:31: P2 = 0xFF;
      00006E 75 A0 FF         [24]  448 	mov	_P2,#0xff
                                    449 ;	./src/i2c/lcd.c:32: while (RD_sta() & 0x80)
      000071                        450 00101$:
      000071 12 00 62         [24]  451 	lcall	_RD_sta
      000074 E5 82            [12]  452 	mov	a,dpl
      000076 20 E7 F8         [24]  453 	jb	acc.7,00101$
                                    454 ;	./src/i2c/lcd.c:34: }
      000079 22               [24]  455 	ret
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'WR_Cmd'
                                    458 ;------------------------------------------------------------
                                    459 ;cmd                       Allocated to registers r7 
                                    460 ;------------------------------------------------------------
                                    461 ;	./src/i2c/lcd.c:36: void WR_Cmd(unsigned char cmd) //写指令函数
                                    462 ;	-----------------------------------------
                                    463 ;	 function WR_Cmd
                                    464 ;	-----------------------------------------
      00007A                        465 _WR_Cmd:
      00007A AF 82            [24]  466 	mov	r7,dpl
                                    467 ;	./src/i2c/lcd.c:38: Ready(); //检测 1602 是否处于空闲状态
      00007C C0 07            [24]  468 	push	ar7
      00007E 12 00 6E         [24]  469 	lcall	_Ready
      000081 D0 07            [24]  470 	pop	ar7
                                    471 ;	./src/i2c/lcd.c:39: RS_1602 = 0;
                                    472 ;	assignBit
      000083 C2 B6            [12]  473 	clr	_RS_1602
                                    474 ;	./src/i2c/lcd.c:40: RW_1602 = 0; //进入写指令模式
                                    475 ;	assignBit
      000085 C2 B5            [12]  476 	clr	_RW_1602
                                    477 ;	./src/i2c/lcd.c:41: P2 = cmd;    //将指令数据输出
      000087 8F A0            [24]  478 	mov	_P2,r7
                                    479 ;	./src/i2c/lcd.c:42: EN_1602 = 1; //拉高使能信号
                                    480 ;	assignBit
      000089 D2 B4            [12]  481 	setb	_EN_1602
                                    482 ;	./src/i2c/lcd.c:43: EN_1602 = 0; //拉低使能，完成写操作
                                    483 ;	assignBit
      00008B C2 B4            [12]  484 	clr	_EN_1602
                                    485 ;	./src/i2c/lcd.c:44: }
      00008D 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'WR_Dat'
                                    489 ;------------------------------------------------------------
                                    490 ;dat                       Allocated to registers r7 
                                    491 ;------------------------------------------------------------
                                    492 ;	./src/i2c/lcd.c:46: void WR_Dat(unsigned char dat) //写数据函数
                                    493 ;	-----------------------------------------
                                    494 ;	 function WR_Dat
                                    495 ;	-----------------------------------------
      00008E                        496 _WR_Dat:
      00008E AF 82            [24]  497 	mov	r7,dpl
                                    498 ;	./src/i2c/lcd.c:48: Ready(); //检测 1602 是否处于空闲状态
      000090 C0 07            [24]  499 	push	ar7
      000092 12 00 6E         [24]  500 	lcall	_Ready
      000095 D0 07            [24]  501 	pop	ar7
                                    502 ;	./src/i2c/lcd.c:49: RS_1602 = 1;
                                    503 ;	assignBit
      000097 D2 B6            [12]  504 	setb	_RS_1602
                                    505 ;	./src/i2c/lcd.c:50: RW_1602 = 0; //进入写数据模式
                                    506 ;	assignBit
      000099 C2 B5            [12]  507 	clr	_RW_1602
                                    508 ;	./src/i2c/lcd.c:52: P2 = dat; //将数据输出
      00009B 8F A0            [24]  509 	mov	_P2,r7
                                    510 ;	./src/i2c/lcd.c:54: EN_1602 = 1; //拉高使能信号
                                    511 ;	assignBit
      00009D D2 B4            [12]  512 	setb	_EN_1602
                                    513 ;	./src/i2c/lcd.c:55: EN_1602 = 0; //拉低使能，完成写操作
                                    514 ;	assignBit
      00009F C2 B4            [12]  515 	clr	_EN_1602
                                    516 ;	./src/i2c/lcd.c:56: }
      0000A1 22               [24]  517 	ret
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'Init_1602'
                                    520 ;------------------------------------------------------------
                                    521 ;	./src/i2c/lcd.c:58: void Init_1602() //1602 初始化函
                                    522 ;	-----------------------------------------
                                    523 ;	 function Init_1602
                                    524 ;	-----------------------------------------
      0000A2                        525 _Init_1602:
                                    526 ;	./src/i2c/lcd.c:60: WR_Cmd(0x38); //设置 16x2 显示，5x7 点阵，8 位数据接口
      0000A2 75 82 38         [24]  527 	mov	dpl,#0x38
      0000A5 12 00 7A         [24]  528 	lcall	_WR_Cmd
                                    529 ;	./src/i2c/lcd.c:61: WR_Cmd(0x0C); //开显示，关闭光标
      0000A8 75 82 0C         [24]  530 	mov	dpl,#0x0c
      0000AB 12 00 7A         [24]  531 	lcall	_WR_Cmd
                                    532 ;	./src/i2c/lcd.c:62: WR_Cmd(0x06); //读或写完一个字符后，地址指针、光标均加 1
      0000AE 75 82 06         [24]  533 	mov	dpl,#0x06
      0000B1 12 00 7A         [24]  534 	lcall	_WR_Cmd
                                    535 ;	./src/i2c/lcd.c:63: WR_Cmd(0x01); //数据指针清零、所示显示清零
      0000B4 75 82 01         [24]  536 	mov	dpl,#0x01
                                    537 ;	./src/i2c/lcd.c:64: }
      0000B7 02 00 7A         [24]  538 	ljmp	_WR_Cmd
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'Disp_1602_str'
                                    541 ;------------------------------------------------------------
                                    542 ;column                    Allocated with name '_Disp_1602_str_PARM_2'
                                    543 ;str                       Allocated with name '_Disp_1602_str_PARM_3'
                                    544 ;row                       Allocated to registers r7 
                                    545 ;addr                      Allocated to registers r7 
                                    546 ;------------------------------------------------------------
                                    547 ;	./src/i2c/lcd.c:66: void Disp_1602_str(unsigned char row, unsigned char column, char *str)
                                    548 ;	-----------------------------------------
                                    549 ;	 function Disp_1602_str
                                    550 ;	-----------------------------------------
      0000BA                        551 _Disp_1602_str:
      0000BA AF 82            [24]  552 	mov	r7,dpl
                                    553 ;	./src/i2c/lcd.c:70: addr = (row - 1) * 0x40 + (column - 1); //组合成地址
      0000BC 1F               [12]  554 	dec	r7
      0000BD EF               [12]  555 	mov	a,r7
      0000BE 03               [12]  556 	rr	a
      0000BF 03               [12]  557 	rr	a
      0000C0 54 C0            [12]  558 	anl	a,#0xc0
      0000C2 FF               [12]  559 	mov	r7,a
      0000C3 E5 08            [12]  560 	mov	a,_Disp_1602_str_PARM_2
      0000C5 14               [12]  561 	dec	a
      0000C6 2F               [12]  562 	add	a,r7
                                    563 ;	./src/i2c/lcd.c:71: WR_Cmd(0x80 + addr);                    //写地址命令
      0000C7 24 80            [12]  564 	add	a,#0x80
      0000C9 F5 82            [12]  565 	mov	dpl,a
      0000CB 12 00 7A         [24]  566 	lcall	_WR_Cmd
                                    567 ;	./src/i2c/lcd.c:73: while (*str) //判断 str 字符串是否已结束
      0000CE AD 09            [24]  568 	mov	r5,_Disp_1602_str_PARM_3
      0000D0 AE 0A            [24]  569 	mov	r6,(_Disp_1602_str_PARM_3 + 1)
      0000D2 AF 0B            [24]  570 	mov	r7,(_Disp_1602_str_PARM_3 + 2)
      0000D4                        571 00101$:
      0000D4 8D 82            [24]  572 	mov	dpl,r5
      0000D6 8E 83            [24]  573 	mov	dph,r6
      0000D8 8F F0            [24]  574 	mov	b,r7
      0000DA 12 01 29         [24]  575 	lcall	__gptrget
      0000DD FC               [12]  576 	mov	r4,a
      0000DE 60 18            [24]  577 	jz	00104$
                                    578 ;	./src/i2c/lcd.c:75: WR_Dat(*str++); //将 str 字符串数据依次写入
      0000E0 8C 82            [24]  579 	mov	dpl,r4
      0000E2 0D               [12]  580 	inc	r5
      0000E3 BD 00 01         [24]  581 	cjne	r5,#0x00,00116$
      0000E6 0E               [12]  582 	inc	r6
      0000E7                        583 00116$:
      0000E7 C0 07            [24]  584 	push	ar7
      0000E9 C0 06            [24]  585 	push	ar6
      0000EB C0 05            [24]  586 	push	ar5
      0000ED 12 00 8E         [24]  587 	lcall	_WR_Dat
      0000F0 D0 05            [24]  588 	pop	ar5
      0000F2 D0 06            [24]  589 	pop	ar6
      0000F4 D0 07            [24]  590 	pop	ar7
      0000F6 80 DC            [24]  591 	sjmp	00101$
      0000F8                        592 00104$:
                                    593 ;	./src/i2c/lcd.c:77: }
      0000F8 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'main'
                                    597 ;------------------------------------------------------------
                                    598 ;	./src/i2c/lcd.c:79: void main(void)
                                    599 ;	-----------------------------------------
                                    600 ;	 function main
                                    601 ;	-----------------------------------------
      0000F9                        602 _main:
                                    603 ;	./src/i2c/lcd.c:81: P2 = 0x00; //关闭所有数码管
      0000F9 75 A0 00         [24]  604 	mov	_P2,#0x00
                                    605 ;	./src/i2c/lcd.c:82: P06 = 1;
                                    606 ;	assignBit
      0000FC D2 86            [12]  607 	setb	_P06
                                    608 ;	./src/i2c/lcd.c:83: P06 = 0;                            //锁存段
                                    609 ;	assignBit
      0000FE C2 86            [12]  610 	clr	_P06
                                    611 ;	./src/i2c/lcd.c:84: Init_1602();                        //1602 初始ZaoDianShui化
      000100 12 00 A2         [24]  612 	lcall	_Init_1602
                                    613 ;	./src/i2c/lcd.c:85: Disp_1602_str(1, 3, "ZhaiZhuZhu");  //第 1 行第 3 列开始显示"RongYi Mini-51"
      000103 75 09 49         [24]  614 	mov	_Disp_1602_str_PARM_3,#___str_0
      000106 75 0A 01         [24]  615 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_0 >> 8)
      000109 75 0B 80         [24]  616 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      00010C 75 08 03         [24]  617 	mov	_Disp_1602_str_PARM_2,#0x03
      00010F 75 82 01         [24]  618 	mov	dpl,#0x01
      000112 12 00 BA         [24]  619 	lcall	_Disp_1602_str
                                    620 ;	./src/i2c/lcd.c:86: Disp_1602_str(2, 3, "ZaoDianShui"); //第 2 行第 3 列开始显示"LCD1602 Test!"
      000115 75 09 54         [24]  621 	mov	_Disp_1602_str_PARM_3,#___str_1
      000118 75 0A 01         [24]  622 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_1 >> 8)
      00011B 75 0B 80         [24]  623 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      00011E 75 08 03         [24]  624 	mov	_Disp_1602_str_PARM_2,#0x03
      000121 75 82 02         [24]  625 	mov	dpl,#0x02
      000124 12 00 BA         [24]  626 	lcall	_Disp_1602_str
                                    627 ;	./src/i2c/lcd.c:87: while (1)
      000127                        628 00102$:
                                    629 ;	./src/i2c/lcd.c:89: }
      000127 80 FE            [24]  630 	sjmp	00102$
                                    631 	.area CSEG    (CODE)
                                    632 	.area CONST   (CODE)
                                    633 	.area CONST   (CODE)
      000149                        634 ___str_0:
      000149 5A 68 61 69 5A 68 75   635 	.ascii "ZhaiZhuZhu"
             5A 68 75
      000153 00                     636 	.db 0x00
                                    637 	.area CSEG    (CODE)
                                    638 	.area CONST   (CODE)
      000154                        639 ___str_1:
      000154 5A 61 6F 44 69 61 6E   640 	.ascii "ZaoDianShui"
             53 68 75 69
      00015F 00                     641 	.db 0x00
                                    642 	.area CSEG    (CODE)
                                    643 	.area XINIT   (CODE)
                                    644 	.area CABS    (ABS,CODE)
