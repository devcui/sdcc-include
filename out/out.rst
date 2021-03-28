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
                                     18 	.globl _DU
                                     19 	.globl _EN_1602
                                     20 	.globl _RW_1602
                                     21 	.globl _RS_1602
                                     22 	.globl _CP_RL2
                                     23 	.globl _C_T2
                                     24 	.globl _TR2
                                     25 	.globl _EXEN2
                                     26 	.globl _TCLK
                                     27 	.globl _RCLK
                                     28 	.globl _EXF2
                                     29 	.globl _TF2
                                     30 	.globl _T2
                                     31 	.globl _T2EX
                                     32 	.globl _RI
                                     33 	.globl _TI
                                     34 	.globl _RB8
                                     35 	.globl _TB8
                                     36 	.globl _REN
                                     37 	.globl _SM2
                                     38 	.globl _SM1
                                     39 	.globl _FE
                                     40 	.globl _SM0
                                     41 	.globl _RXD
                                     42 	.globl _TXD
                                     43 	.globl _INT0
                                     44 	.globl _INT1
                                     45 	.globl _T0
                                     46 	.globl _T1
                                     47 	.globl _WR
                                     48 	.globl _RD
                                     49 	.globl _PX0
                                     50 	.globl _PT0
                                     51 	.globl _PX1
                                     52 	.globl _PT1
                                     53 	.globl _PS
                                     54 	.globl _PT2
                                     55 	.globl _EX0
                                     56 	.globl _ET0
                                     57 	.globl _EX1
                                     58 	.globl _ET1
                                     59 	.globl _ES
                                     60 	.globl _ET2
                                     61 	.globl _EC
                                     62 	.globl _EA
                                     63 	.globl _IT0
                                     64 	.globl _IE0
                                     65 	.globl _IT1
                                     66 	.globl _IE1
                                     67 	.globl _TR0
                                     68 	.globl _TF0
                                     69 	.globl _TR1
                                     70 	.globl _TF1
                                     71 	.globl _P
                                     72 	.globl _OV
                                     73 	.globl _RS0
                                     74 	.globl _RS1
                                     75 	.globl _F0
                                     76 	.globl _AC
                                     77 	.globl _CY
                                     78 	.globl _P37
                                     79 	.globl _P36
                                     80 	.globl _P35
                                     81 	.globl _P34
                                     82 	.globl _P33
                                     83 	.globl _P32
                                     84 	.globl _P31
                                     85 	.globl _P30
                                     86 	.globl _P27
                                     87 	.globl _P26
                                     88 	.globl _P25
                                     89 	.globl _P24
                                     90 	.globl _P23
                                     91 	.globl _P22
                                     92 	.globl _P21
                                     93 	.globl _P20
                                     94 	.globl _P17
                                     95 	.globl _P16
                                     96 	.globl _P15
                                     97 	.globl _P14
                                     98 	.globl _P13
                                     99 	.globl _P12
                                    100 	.globl _P11
                                    101 	.globl _P10
                                    102 	.globl _P07
                                    103 	.globl _P06
                                    104 	.globl _P05
                                    105 	.globl _P04
                                    106 	.globl _P03
                                    107 	.globl _P02
                                    108 	.globl _P01
                                    109 	.globl _P00
                                    110 	.globl _P40
                                    111 	.globl _P41
                                    112 	.globl _P42
                                    113 	.globl _P43
                                    114 	.globl _P44
                                    115 	.globl _P45
                                    116 	.globl _P46
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _SADEN
                                    124 	.globl _IPH
                                    125 	.globl _SADDR
                                    126 	.globl _AUXR1
                                    127 	.globl _AUXR
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _IP
                                    131 	.globl _IE
                                    132 	.globl _TH1
                                    133 	.globl _TH0
                                    134 	.globl _TL1
                                    135 	.globl _TL0
                                    136 	.globl _TMOD
                                    137 	.globl _TCON
                                    138 	.globl _PCON
                                    139 	.globl _DPH
                                    140 	.globl _DPL
                                    141 	.globl _SP
                                    142 	.globl _B
                                    143 	.globl _ACC
                                    144 	.globl _PSW
                                    145 	.globl _P3
                                    146 	.globl _P2
                                    147 	.globl _P1
                                    148 	.globl _P0
                                    149 	.globl _ISP_CONTR
                                    150 	.globl _ISP_TRIG
                                    151 	.globl _ISP_CMD
                                    152 	.globl _ISP_ADDRL
                                    153 	.globl _ISP_ADDRH
                                    154 	.globl _ISP_DATA
                                    155 	.globl _WDT_CONTR
                                    156 	.globl _XICON
                                    157 	.globl _P4
                                    158 	.globl _Disp_1602_str_PARM_3
                                    159 	.globl _Disp_1602_str_PARM_2
                                    160 ;--------------------------------------------------------
                                    161 ; special function registers
                                    162 ;--------------------------------------------------------
                                    163 	.area RSEG    (ABS,DATA)
      000000                        164 	.org 0x0000
                           0000E8   165 _P4	=	0x00e8
                           0000C0   166 _XICON	=	0x00c0
                           0000E1   167 _WDT_CONTR	=	0x00e1
                           0000E2   168 _ISP_DATA	=	0x00e2
                           0000E3   169 _ISP_ADDRH	=	0x00e3
                           0000E4   170 _ISP_ADDRL	=	0x00e4
                           0000E5   171 _ISP_CMD	=	0x00e5
                           0000E6   172 _ISP_TRIG	=	0x00e6
                           0000E7   173 _ISP_CONTR	=	0x00e7
                           000080   174 _P0	=	0x0080
                           000090   175 _P1	=	0x0090
                           0000A0   176 _P2	=	0x00a0
                           0000B0   177 _P3	=	0x00b0
                           0000D0   178 _PSW	=	0x00d0
                           0000E0   179 _ACC	=	0x00e0
                           0000F0   180 _B	=	0x00f0
                           000081   181 _SP	=	0x0081
                           000082   182 _DPL	=	0x0082
                           000083   183 _DPH	=	0x0083
                           000087   184 _PCON	=	0x0087
                           000088   185 _TCON	=	0x0088
                           000089   186 _TMOD	=	0x0089
                           00008A   187 _TL0	=	0x008a
                           00008B   188 _TL1	=	0x008b
                           00008C   189 _TH0	=	0x008c
                           00008D   190 _TH1	=	0x008d
                           0000A8   191 _IE	=	0x00a8
                           0000B8   192 _IP	=	0x00b8
                           000098   193 _SCON	=	0x0098
                           000099   194 _SBUF	=	0x0099
                           00008E   195 _AUXR	=	0x008e
                           0000A2   196 _AUXR1	=	0x00a2
                           0000A9   197 _SADDR	=	0x00a9
                           0000B7   198 _IPH	=	0x00b7
                           0000B9   199 _SADEN	=	0x00b9
                           0000C8   200 _T2CON	=	0x00c8
                           0000C9   201 _T2MOD	=	0x00c9
                           0000CA   202 _RCAP2L	=	0x00ca
                           0000CB   203 _RCAP2H	=	0x00cb
                           0000CC   204 _TL2	=	0x00cc
                           0000CD   205 _TH2	=	0x00cd
                                    206 ;--------------------------------------------------------
                                    207 ; special function bits
                                    208 ;--------------------------------------------------------
                                    209 	.area RSEG    (ABS,DATA)
      000000                        210 	.org 0x0000
                           0000EE   211 _P46	=	0x00ee
                           0000ED   212 _P45	=	0x00ed
                           0000EC   213 _P44	=	0x00ec
                           0000EB   214 _P43	=	0x00eb
                           0000EA   215 _P42	=	0x00ea
                           0000E9   216 _P41	=	0x00e9
                           0000E8   217 _P40	=	0x00e8
                           000080   218 _P00	=	0x0080
                           000081   219 _P01	=	0x0081
                           000082   220 _P02	=	0x0082
                           000083   221 _P03	=	0x0083
                           000084   222 _P04	=	0x0084
                           000085   223 _P05	=	0x0085
                           000086   224 _P06	=	0x0086
                           000087   225 _P07	=	0x0087
                           000090   226 _P10	=	0x0090
                           000091   227 _P11	=	0x0091
                           000092   228 _P12	=	0x0092
                           000093   229 _P13	=	0x0093
                           000094   230 _P14	=	0x0094
                           000095   231 _P15	=	0x0095
                           000096   232 _P16	=	0x0096
                           000097   233 _P17	=	0x0097
                           0000A0   234 _P20	=	0x00a0
                           0000A1   235 _P21	=	0x00a1
                           0000A2   236 _P22	=	0x00a2
                           0000A3   237 _P23	=	0x00a3
                           0000A4   238 _P24	=	0x00a4
                           0000A5   239 _P25	=	0x00a5
                           0000A6   240 _P26	=	0x00a6
                           0000A7   241 _P27	=	0x00a7
                           0000B0   242 _P30	=	0x00b0
                           0000B1   243 _P31	=	0x00b1
                           0000B2   244 _P32	=	0x00b2
                           0000B3   245 _P33	=	0x00b3
                           0000B4   246 _P34	=	0x00b4
                           0000B5   247 _P35	=	0x00b5
                           0000B6   248 _P36	=	0x00b6
                           0000B7   249 _P37	=	0x00b7
                           0000D7   250 _CY	=	0x00d7
                           0000D6   251 _AC	=	0x00d6
                           0000D5   252 _F0	=	0x00d5
                           0000D4   253 _RS1	=	0x00d4
                           0000D3   254 _RS0	=	0x00d3
                           0000D2   255 _OV	=	0x00d2
                           0000D0   256 _P	=	0x00d0
                           00008F   257 _TF1	=	0x008f
                           00008E   258 _TR1	=	0x008e
                           00008D   259 _TF0	=	0x008d
                           00008C   260 _TR0	=	0x008c
                           00008B   261 _IE1	=	0x008b
                           00008A   262 _IT1	=	0x008a
                           000089   263 _IE0	=	0x0089
                           000088   264 _IT0	=	0x0088
                           0000AF   265 _EA	=	0x00af
                           0000AE   266 _EC	=	0x00ae
                           0000AD   267 _ET2	=	0x00ad
                           0000AC   268 _ES	=	0x00ac
                           0000AB   269 _ET1	=	0x00ab
                           0000AA   270 _EX1	=	0x00aa
                           0000A9   271 _ET0	=	0x00a9
                           0000A8   272 _EX0	=	0x00a8
                           0000BD   273 _PT2	=	0x00bd
                           0000BC   274 _PS	=	0x00bc
                           0000BB   275 _PT1	=	0x00bb
                           0000BA   276 _PX1	=	0x00ba
                           0000B9   277 _PT0	=	0x00b9
                           0000B8   278 _PX0	=	0x00b8
                           0000B7   279 _RD	=	0x00b7
                           0000B6   280 _WR	=	0x00b6
                           0000B5   281 _T1	=	0x00b5
                           0000B4   282 _T0	=	0x00b4
                           0000B3   283 _INT1	=	0x00b3
                           0000B2   284 _INT0	=	0x00b2
                           0000B1   285 _TXD	=	0x00b1
                           0000B0   286 _RXD	=	0x00b0
                           00009F   287 _SM0	=	0x009f
                           00009F   288 _FE	=	0x009f
                           00009E   289 _SM1	=	0x009e
                           00009D   290 _SM2	=	0x009d
                           00009C   291 _REN	=	0x009c
                           00009B   292 _TB8	=	0x009b
                           00009A   293 _RB8	=	0x009a
                           000099   294 _TI	=	0x0099
                           000098   295 _RI	=	0x0098
                           000091   296 _T2EX	=	0x0091
                           000090   297 _T2	=	0x0090
                           0000CF   298 _TF2	=	0x00cf
                           0000CE   299 _EXF2	=	0x00ce
                           0000CD   300 _RCLK	=	0x00cd
                           0000CC   301 _TCLK	=	0x00cc
                           0000CB   302 _EXEN2	=	0x00cb
                           0000CA   303 _TR2	=	0x00ca
                           0000C9   304 _C_T2	=	0x00c9
                           0000C8   305 _CP_RL2	=	0x00c8
                           0000B6   306 _RS_1602	=	0x00b6
                           0000B5   307 _RW_1602	=	0x00b5
                           0000B4   308 _EN_1602	=	0x00b4
                           000086   309 _DU	=	0x0086
                                    310 ;--------------------------------------------------------
                                    311 ; overlayable register banks
                                    312 ;--------------------------------------------------------
                                    313 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        314 	.ds 8
                                    315 ;--------------------------------------------------------
                                    316 ; internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area DSEG    (DATA)
      000008                        319 _Disp_1602_str_PARM_2:
      000008                        320 	.ds 1
      000009                        321 _Disp_1602_str_PARM_3:
      000009                        322 	.ds 3
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable items in internal ram 
                                    325 ;--------------------------------------------------------
                                    326 	.area	OSEG    (OVR,DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; Stack segment in internal ram 
                                    329 ;--------------------------------------------------------
                                    330 	.area	SSEG
      00000C                        331 __start__stack:
      00000C                        332 	.ds	1
                                    333 
                                    334 ;--------------------------------------------------------
                                    335 ; indirectly addressable internal ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area ISEG    (DATA)
                                    338 ;--------------------------------------------------------
                                    339 ; absolute internal ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area IABS    (ABS,DATA)
                                    342 	.area IABS    (ABS,DATA)
                                    343 ;--------------------------------------------------------
                                    344 ; bit data
                                    345 ;--------------------------------------------------------
                                    346 	.area BSEG    (BIT)
                                    347 ;--------------------------------------------------------
                                    348 ; paged external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area PSEG    (PAG,XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XSEG    (XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; absolute external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XABS    (ABS,XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; external initialized ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XISEG   (XDATA)
                                    363 	.area HOME    (CODE)
                                    364 	.area GSINIT0 (CODE)
                                    365 	.area GSINIT1 (CODE)
                                    366 	.area GSINIT2 (CODE)
                                    367 	.area GSINIT3 (CODE)
                                    368 	.area GSINIT4 (CODE)
                                    369 	.area GSINIT5 (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area CSEG    (CODE)
                                    373 ;--------------------------------------------------------
                                    374 ; interrupt vector 
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
      000000                        377 __interrupt_vect:
      000000 02 00 06         [24]  378 	ljmp	__sdcc_gsinit_startup
                                    379 ;--------------------------------------------------------
                                    380 ; global & static initialisations
                                    381 ;--------------------------------------------------------
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area GSINIT  (CODE)
                                    386 	.globl __sdcc_gsinit_startup
                                    387 	.globl __sdcc_program_startup
                                    388 	.globl __start__stack
                                    389 	.globl __mcs51_genXINIT
                                    390 	.globl __mcs51_genXRAMCLEAR
                                    391 	.globl __mcs51_genRAMCLEAR
                                    392 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  393 	ljmp	__sdcc_program_startup
                                    394 ;--------------------------------------------------------
                                    395 ; Home
                                    396 ;--------------------------------------------------------
                                    397 	.area HOME    (CODE)
                                    398 	.area HOME    (CODE)
      000003                        399 __sdcc_program_startup:
      000003 02 00 F6         [24]  400 	ljmp	_main
                                    401 ;	return from main will return to caller
                                    402 ;--------------------------------------------------------
                                    403 ; code
                                    404 ;--------------------------------------------------------
                                    405 	.area CSEG    (CODE)
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'RD_sta'
                                    408 ;------------------------------------------------------------
                                    409 ;sta                       Allocated to registers 
                                    410 ;------------------------------------------------------------
                                    411 ;	./src/i2c/lcd.c:18: unsigned char RD_sta() //读状态函数
                                    412 ;	-----------------------------------------
                                    413 ;	 function RD_sta
                                    414 ;	-----------------------------------------
      000062                        415 _RD_sta:
                           000007   416 	ar7 = 0x07
                           000006   417 	ar6 = 0x06
                           000005   418 	ar5 = 0x05
                           000004   419 	ar4 = 0x04
                           000003   420 	ar3 = 0x03
                           000002   421 	ar2 = 0x02
                           000001   422 	ar1 = 0x01
                           000000   423 	ar0 = 0x00
                                    424 ;	./src/i2c/lcd.c:21: RS_1602 = 0;
                                    425 ;	assignBit
      000062 C2 B6            [12]  426 	clr	_RS_1602
                                    427 ;	./src/i2c/lcd.c:22: RW_1602 = 1; //进入读 1602 状态模式
                                    428 ;	assignBit
      000064 D2 B5            [12]  429 	setb	_RW_1602
                                    430 ;	./src/i2c/lcd.c:23: EN_1602 = 1; //拉高使能信号
                                    431 ;	assignBit
      000066 D2 B4            [12]  432 	setb	_EN_1602
                                    433 ;	./src/i2c/lcd.c:24: sta = P2;    //将 1602 状态数据读取
      000068 85 A0 82         [24]  434 	mov	dpl,_P2
                                    435 ;	./src/i2c/lcd.c:25: EN_1602 = 0; //拉低使能，完成读操作
                                    436 ;	assignBit
      00006B C2 B4            [12]  437 	clr	_EN_1602
                                    438 ;	./src/i2c/lcd.c:26: return sta;  //将状态值返
                                    439 ;	./src/i2c/lcd.c:27: }
      00006D 22               [24]  440 	ret
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'Ready'
                                    443 ;------------------------------------------------------------
                                    444 ;	./src/i2c/lcd.c:29: void Ready() //空闲检测函数
                                    445 ;	-----------------------------------------
                                    446 ;	 function Ready
                                    447 ;	-----------------------------------------
      00006E                        448 _Ready:
                                    449 ;	./src/i2c/lcd.c:31: while (RD_sta() & 0x80)
      00006E                        450 00101$:
      00006E 12 00 62         [24]  451 	lcall	_RD_sta
      000071 E5 82            [12]  452 	mov	a,dpl
      000073 20 E7 F8         [24]  453 	jb	acc.7,00101$
                                    454 ;	./src/i2c/lcd.c:33: }
      000076 22               [24]  455 	ret
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'WR_Cmd'
                                    458 ;------------------------------------------------------------
                                    459 ;cmd                       Allocated to registers r7 
                                    460 ;------------------------------------------------------------
                                    461 ;	./src/i2c/lcd.c:35: void WR_Cmd(unsigned char cmd) //写指令函数
                                    462 ;	-----------------------------------------
                                    463 ;	 function WR_Cmd
                                    464 ;	-----------------------------------------
      000077                        465 _WR_Cmd:
      000077 AF 82            [24]  466 	mov	r7,dpl
                                    467 ;	./src/i2c/lcd.c:37: Ready(); //检测 1602 是否处于空闲状态
      000079 C0 07            [24]  468 	push	ar7
      00007B 12 00 6E         [24]  469 	lcall	_Ready
      00007E D0 07            [24]  470 	pop	ar7
                                    471 ;	./src/i2c/lcd.c:38: RS_1602 = 0;
                                    472 ;	assignBit
      000080 C2 B6            [12]  473 	clr	_RS_1602
                                    474 ;	./src/i2c/lcd.c:39: RW_1602 = 0; //进入写指令模式
                                    475 ;	assignBit
      000082 C2 B5            [12]  476 	clr	_RW_1602
                                    477 ;	./src/i2c/lcd.c:40: P2 = cmd; //将指令数据输出
      000084 8F A0            [24]  478 	mov	_P2,r7
                                    479 ;	./src/i2c/lcd.c:41: EN_1602 = 1; //拉高使能信号
                                    480 ;	assignBit
      000086 D2 B4            [12]  481 	setb	_EN_1602
                                    482 ;	./src/i2c/lcd.c:42: EN_1602 = 0; //拉低使能，完成写操作
                                    483 ;	assignBit
      000088 C2 B4            [12]  484 	clr	_EN_1602
                                    485 ;	./src/i2c/lcd.c:43: }
      00008A 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'WR_Dat'
                                    489 ;------------------------------------------------------------
                                    490 ;dat                       Allocated to registers r7 
                                    491 ;------------------------------------------------------------
                                    492 ;	./src/i2c/lcd.c:45: void WR_Dat(unsigned char dat) //写数据函数
                                    493 ;	-----------------------------------------
                                    494 ;	 function WR_Dat
                                    495 ;	-----------------------------------------
      00008B                        496 _WR_Dat:
      00008B AF 82            [24]  497 	mov	r7,dpl
                                    498 ;	./src/i2c/lcd.c:47: Ready(); //检测 1602 是否处于空闲状态
      00008D C0 07            [24]  499 	push	ar7
      00008F 12 00 6E         [24]  500 	lcall	_Ready
      000092 D0 07            [24]  501 	pop	ar7
                                    502 ;	./src/i2c/lcd.c:48: RS_1602 = 1;
                                    503 ;	assignBit
      000094 D2 B6            [12]  504 	setb	_RS_1602
                                    505 ;	./src/i2c/lcd.c:49: RW_1602 = 0; //进入写数据模式
                                    506 ;	assignBit
      000096 C2 B5            [12]  507 	clr	_RW_1602
                                    508 ;	./src/i2c/lcd.c:50: P2 = dat; //将数据输出
      000098 8F A0            [24]  509 	mov	_P2,r7
                                    510 ;	./src/i2c/lcd.c:51: EN_1602 = 1; //拉高使能信号
                                    511 ;	assignBit
      00009A D2 B4            [12]  512 	setb	_EN_1602
                                    513 ;	./src/i2c/lcd.c:52: EN_1602 = 0; //拉低使能，完成写操作
                                    514 ;	assignBit
      00009C C2 B4            [12]  515 	clr	_EN_1602
                                    516 ;	./src/i2c/lcd.c:53: }
      00009E 22               [24]  517 	ret
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'Init_1602'
                                    520 ;------------------------------------------------------------
                                    521 ;	./src/i2c/lcd.c:55: void Init_1602() //1602 初始化函
                                    522 ;	-----------------------------------------
                                    523 ;	 function Init_1602
                                    524 ;	-----------------------------------------
      00009F                        525 _Init_1602:
                                    526 ;	./src/i2c/lcd.c:57: WR_Cmd(0x38); //设置 16x2 显示，5x7 点阵，8 位数据接口
      00009F 75 82 38         [24]  527 	mov	dpl,#0x38
      0000A2 12 00 77         [24]  528 	lcall	_WR_Cmd
                                    529 ;	./src/i2c/lcd.c:58: WR_Cmd(0x0C); //开显示，关闭光标
      0000A5 75 82 0C         [24]  530 	mov	dpl,#0x0c
      0000A8 12 00 77         [24]  531 	lcall	_WR_Cmd
                                    532 ;	./src/i2c/lcd.c:59: WR_Cmd(0x06); //读或写完一个字符后，地址指针、光标均加 1
      0000AB 75 82 06         [24]  533 	mov	dpl,#0x06
      0000AE 12 00 77         [24]  534 	lcall	_WR_Cmd
                                    535 ;	./src/i2c/lcd.c:60: WR_Cmd(0x01); //数据指针清零、所示显示清零
      0000B1 75 82 01         [24]  536 	mov	dpl,#0x01
                                    537 ;	./src/i2c/lcd.c:61: }
      0000B4 02 00 77         [24]  538 	ljmp	_WR_Cmd
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'Disp_1602_str'
                                    541 ;------------------------------------------------------------
                                    542 ;column                    Allocated with name '_Disp_1602_str_PARM_2'
                                    543 ;str                       Allocated with name '_Disp_1602_str_PARM_3'
                                    544 ;row                       Allocated to registers r7 
                                    545 ;addr                      Allocated to registers r7 
                                    546 ;------------------------------------------------------------
                                    547 ;	./src/i2c/lcd.c:63: void Disp_1602_str(unsigned char row, unsigned char column, char *str)
                                    548 ;	-----------------------------------------
                                    549 ;	 function Disp_1602_str
                                    550 ;	-----------------------------------------
      0000B7                        551 _Disp_1602_str:
      0000B7 AF 82            [24]  552 	mov	r7,dpl
                                    553 ;	./src/i2c/lcd.c:67: addr = (row - 1) * 0x40 + (column - 1); //组合成地址
      0000B9 1F               [12]  554 	dec	r7
      0000BA EF               [12]  555 	mov	a,r7
      0000BB 03               [12]  556 	rr	a
      0000BC 03               [12]  557 	rr	a
      0000BD 54 C0            [12]  558 	anl	a,#0xc0
      0000BF FF               [12]  559 	mov	r7,a
      0000C0 E5 08            [12]  560 	mov	a,_Disp_1602_str_PARM_2
      0000C2 14               [12]  561 	dec	a
      0000C3 2F               [12]  562 	add	a,r7
                                    563 ;	./src/i2c/lcd.c:68: WR_Cmd(0x80 + addr);                    //写地址命令
      0000C4 24 80            [12]  564 	add	a,#0x80
      0000C6 F5 82            [12]  565 	mov	dpl,a
      0000C8 12 00 77         [24]  566 	lcall	_WR_Cmd
                                    567 ;	./src/i2c/lcd.c:70: while (*str) //判断 str 字符串是否已结束
      0000CB AD 09            [24]  568 	mov	r5,_Disp_1602_str_PARM_3
      0000CD AE 0A            [24]  569 	mov	r6,(_Disp_1602_str_PARM_3 + 1)
      0000CF AF 0B            [24]  570 	mov	r7,(_Disp_1602_str_PARM_3 + 2)
      0000D1                        571 00101$:
      0000D1 8D 82            [24]  572 	mov	dpl,r5
      0000D3 8E 83            [24]  573 	mov	dph,r6
      0000D5 8F F0            [24]  574 	mov	b,r7
      0000D7 12 01 26         [24]  575 	lcall	__gptrget
      0000DA FC               [12]  576 	mov	r4,a
      0000DB 60 18            [24]  577 	jz	00104$
                                    578 ;	./src/i2c/lcd.c:72: WR_Dat(*str++); //将 str 字符串数据依次写入
      0000DD 8C 82            [24]  579 	mov	dpl,r4
      0000DF 0D               [12]  580 	inc	r5
      0000E0 BD 00 01         [24]  581 	cjne	r5,#0x00,00116$
      0000E3 0E               [12]  582 	inc	r6
      0000E4                        583 00116$:
      0000E4 C0 07            [24]  584 	push	ar7
      0000E6 C0 06            [24]  585 	push	ar6
      0000E8 C0 05            [24]  586 	push	ar5
      0000EA 12 00 8B         [24]  587 	lcall	_WR_Dat
      0000ED D0 05            [24]  588 	pop	ar5
      0000EF D0 06            [24]  589 	pop	ar6
      0000F1 D0 07            [24]  590 	pop	ar7
      0000F3 80 DC            [24]  591 	sjmp	00101$
      0000F5                        592 00104$:
                                    593 ;	./src/i2c/lcd.c:74: }
      0000F5 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'main'
                                    597 ;------------------------------------------------------------
                                    598 ;	./src/i2c/lcd.c:76: void main(void)
                                    599 ;	-----------------------------------------
                                    600 ;	 function main
                                    601 ;	-----------------------------------------
      0000F6                        602 _main:
                                    603 ;	./src/i2c/lcd.c:78: P2 = 0x00; //关闭所有数码管
      0000F6 75 A0 00         [24]  604 	mov	_P2,#0x00
                                    605 ;	./src/i2c/lcd.c:79: DU = 1;
                                    606 ;	assignBit
      0000F9 D2 86            [12]  607 	setb	_DU
                                    608 ;	./src/i2c/lcd.c:80: DU = 0; //锁存段
                                    609 ;	assignBit
      0000FB C2 86            [12]  610 	clr	_DU
                                    611 ;	./src/i2c/lcd.c:81: Init_1602(); //1602 初始化
      0000FD 12 00 9F         [24]  612 	lcall	_Init_1602
                                    613 ;	./src/i2c/lcd.c:82: Disp_1602_str(1, 3, "ZhaiZhuZhu"); //第 1 行第 3 列开始显示"RongYi Mini-51"
      000100 75 09 46         [24]  614 	mov	_Disp_1602_str_PARM_3,#___str_0
      000103 75 0A 01         [24]  615 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_0 >> 8)
      000106 75 0B 80         [24]  616 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      000109 75 08 03         [24]  617 	mov	_Disp_1602_str_PARM_2,#0x03
      00010C 75 82 01         [24]  618 	mov	dpl,#0x01
      00010F 12 00 B7         [24]  619 	lcall	_Disp_1602_str
                                    620 ;	./src/i2c/lcd.c:83: Disp_1602_str(2, 3, "ZaoDianShui");    //第 2 行第 3 列开始显示"LCD1602 Test!"
      000112 75 09 51         [24]  621 	mov	_Disp_1602_str_PARM_3,#___str_1
      000115 75 0A 01         [24]  622 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_1 >> 8)
      000118 75 0B 80         [24]  623 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      00011B 75 08 03         [24]  624 	mov	_Disp_1602_str_PARM_2,#0x03
      00011E 75 82 02         [24]  625 	mov	dpl,#0x02
      000121 12 00 B7         [24]  626 	lcall	_Disp_1602_str
                                    627 ;	./src/i2c/lcd.c:84: while (1)
      000124                        628 00102$:
                                    629 ;	./src/i2c/lcd.c:86: }
      000124 80 FE            [24]  630 	sjmp	00102$
                                    631 	.area CSEG    (CODE)
                                    632 	.area CONST   (CODE)
                                    633 	.area CONST   (CODE)
      000146                        634 ___str_0:
      000146 5A 68 61 69 5A 68 75   635 	.ascii "ZhaiZhuZhu"
             5A 68 75
      000150 00                     636 	.db 0x00
                                    637 	.area CSEG    (CODE)
                                    638 	.area CONST   (CODE)
      000151                        639 ___str_1:
      000151 5A 61 6F 44 69 61 6E   640 	.ascii "ZaoDianShui"
             53 68 75 69
      00015C 00                     641 	.db 0x00
                                    642 	.area CSEG    (CODE)
                                    643 	.area XINIT   (CODE)
                                    644 	.area CABS    (ABS,CODE)
