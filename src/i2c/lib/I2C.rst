                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module I2C
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SDA_I2C
                                     12 	.globl _SCL_I2C
                                     13 	.globl _CP_RL2
                                     14 	.globl _C_T2
                                     15 	.globl _TR2
                                     16 	.globl _EXEN2
                                     17 	.globl _TCLK
                                     18 	.globl _RCLK
                                     19 	.globl _EXF2
                                     20 	.globl _TF2
                                     21 	.globl _T2
                                     22 	.globl _T2EX
                                     23 	.globl _RI
                                     24 	.globl _TI
                                     25 	.globl _RB8
                                     26 	.globl _TB8
                                     27 	.globl _REN
                                     28 	.globl _SM2
                                     29 	.globl _SM1
                                     30 	.globl _FE
                                     31 	.globl _SM0
                                     32 	.globl _RXD
                                     33 	.globl _TXD
                                     34 	.globl _INT0
                                     35 	.globl _INT1
                                     36 	.globl _T0
                                     37 	.globl _T1
                                     38 	.globl _WR
                                     39 	.globl _RD
                                     40 	.globl _PX0
                                     41 	.globl _PT0
                                     42 	.globl _PX1
                                     43 	.globl _PT1
                                     44 	.globl _PS
                                     45 	.globl _PT2
                                     46 	.globl _EX0
                                     47 	.globl _ET0
                                     48 	.globl _EX1
                                     49 	.globl _ET1
                                     50 	.globl _ES
                                     51 	.globl _ET2
                                     52 	.globl _EC
                                     53 	.globl _EA
                                     54 	.globl _IT0
                                     55 	.globl _IE0
                                     56 	.globl _IT1
                                     57 	.globl _IE1
                                     58 	.globl _TR0
                                     59 	.globl _TF0
                                     60 	.globl _TR1
                                     61 	.globl _TF1
                                     62 	.globl _P
                                     63 	.globl _OV
                                     64 	.globl _RS0
                                     65 	.globl _RS1
                                     66 	.globl _F0
                                     67 	.globl _AC
                                     68 	.globl _CY
                                     69 	.globl _P37
                                     70 	.globl _P36
                                     71 	.globl _P35
                                     72 	.globl _P34
                                     73 	.globl _P33
                                     74 	.globl _P32
                                     75 	.globl _P31
                                     76 	.globl _P30
                                     77 	.globl _P27
                                     78 	.globl _P26
                                     79 	.globl _P25
                                     80 	.globl _P24
                                     81 	.globl _P23
                                     82 	.globl _P22
                                     83 	.globl _P21
                                     84 	.globl _P20
                                     85 	.globl _P17
                                     86 	.globl _P16
                                     87 	.globl _P15
                                     88 	.globl _P14
                                     89 	.globl _P13
                                     90 	.globl _P12
                                     91 	.globl _P11
                                     92 	.globl _P10
                                     93 	.globl _P07
                                     94 	.globl _P06
                                     95 	.globl _P05
                                     96 	.globl _P04
                                     97 	.globl _P03
                                     98 	.globl _P02
                                     99 	.globl _P01
                                    100 	.globl _P00
                                    101 	.globl _P40
                                    102 	.globl _P41
                                    103 	.globl _P42
                                    104 	.globl _P43
                                    105 	.globl _P44
                                    106 	.globl _P45
                                    107 	.globl _P46
                                    108 	.globl _TH2
                                    109 	.globl _TL2
                                    110 	.globl _RCAP2H
                                    111 	.globl _RCAP2L
                                    112 	.globl _T2MOD
                                    113 	.globl _T2CON
                                    114 	.globl _SADEN
                                    115 	.globl _IPH
                                    116 	.globl _SADDR
                                    117 	.globl _AUXR1
                                    118 	.globl _AUXR
                                    119 	.globl _SBUF
                                    120 	.globl _SCON
                                    121 	.globl _IP
                                    122 	.globl _IE
                                    123 	.globl _TH1
                                    124 	.globl _TH0
                                    125 	.globl _TL1
                                    126 	.globl _TL0
                                    127 	.globl _TMOD
                                    128 	.globl _TCON
                                    129 	.globl _PCON
                                    130 	.globl _DPH
                                    131 	.globl _DPL
                                    132 	.globl _SP
                                    133 	.globl _B
                                    134 	.globl _ACC
                                    135 	.globl _PSW
                                    136 	.globl _P3
                                    137 	.globl _P2
                                    138 	.globl _P1
                                    139 	.globl _P0
                                    140 	.globl _ISP_CONTR
                                    141 	.globl _ISP_TRIG
                                    142 	.globl _ISP_CMD
                                    143 	.globl _ISP_ADDRL
                                    144 	.globl _ISP_ADDRH
                                    145 	.globl _ISP_DATA
                                    146 	.globl _WDT_CONTR
                                    147 	.globl _XICON
                                    148 	.globl _P4
                                    149 	.globl _Delay_I2C
                                    150 	.globl _Start_I2C
                                    151 	.globl _Stop_I2C
                                    152 	.globl _Wr_I2C
                                    153 	.globl _RdACK_I2C
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           0000E8   159 _P4	=	0x00e8
                           0000C0   160 _XICON	=	0x00c0
                           0000E1   161 _WDT_CONTR	=	0x00e1
                           0000E2   162 _ISP_DATA	=	0x00e2
                           0000E3   163 _ISP_ADDRH	=	0x00e3
                           0000E4   164 _ISP_ADDRL	=	0x00e4
                           0000E5   165 _ISP_CMD	=	0x00e5
                           0000E6   166 _ISP_TRIG	=	0x00e6
                           0000E7   167 _ISP_CONTR	=	0x00e7
                           000080   168 _P0	=	0x0080
                           000090   169 _P1	=	0x0090
                           0000A0   170 _P2	=	0x00a0
                           0000B0   171 _P3	=	0x00b0
                           0000D0   172 _PSW	=	0x00d0
                           0000E0   173 _ACC	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                           000081   175 _SP	=	0x0081
                           000082   176 _DPL	=	0x0082
                           000083   177 _DPH	=	0x0083
                           000087   178 _PCON	=	0x0087
                           000088   179 _TCON	=	0x0088
                           000089   180 _TMOD	=	0x0089
                           00008A   181 _TL0	=	0x008a
                           00008B   182 _TL1	=	0x008b
                           00008C   183 _TH0	=	0x008c
                           00008D   184 _TH1	=	0x008d
                           0000A8   185 _IE	=	0x00a8
                           0000B8   186 _IP	=	0x00b8
                           000098   187 _SCON	=	0x0098
                           000099   188 _SBUF	=	0x0099
                           00008E   189 _AUXR	=	0x008e
                           0000A2   190 _AUXR1	=	0x00a2
                           0000A9   191 _SADDR	=	0x00a9
                           0000B7   192 _IPH	=	0x00b7
                           0000B9   193 _SADEN	=	0x00b9
                           0000C8   194 _T2CON	=	0x00c8
                           0000C9   195 _T2MOD	=	0x00c9
                           0000CA   196 _RCAP2L	=	0x00ca
                           0000CB   197 _RCAP2H	=	0x00cb
                           0000CC   198 _TL2	=	0x00cc
                           0000CD   199 _TH2	=	0x00cd
                                    200 ;--------------------------------------------------------
                                    201 ; special function bits
                                    202 ;--------------------------------------------------------
                                    203 	.area RSEG    (ABS,DATA)
      000000                        204 	.org 0x0000
                           0000EE   205 _P46	=	0x00ee
                           0000ED   206 _P45	=	0x00ed
                           0000EC   207 _P44	=	0x00ec
                           0000EB   208 _P43	=	0x00eb
                           0000EA   209 _P42	=	0x00ea
                           0000E9   210 _P41	=	0x00e9
                           0000E8   211 _P40	=	0x00e8
                           000080   212 _P00	=	0x0080
                           000081   213 _P01	=	0x0081
                           000082   214 _P02	=	0x0082
                           000083   215 _P03	=	0x0083
                           000084   216 _P04	=	0x0084
                           000085   217 _P05	=	0x0085
                           000086   218 _P06	=	0x0086
                           000087   219 _P07	=	0x0087
                           000090   220 _P10	=	0x0090
                           000091   221 _P11	=	0x0091
                           000092   222 _P12	=	0x0092
                           000093   223 _P13	=	0x0093
                           000094   224 _P14	=	0x0094
                           000095   225 _P15	=	0x0095
                           000096   226 _P16	=	0x0096
                           000097   227 _P17	=	0x0097
                           0000A0   228 _P20	=	0x00a0
                           0000A1   229 _P21	=	0x00a1
                           0000A2   230 _P22	=	0x00a2
                           0000A3   231 _P23	=	0x00a3
                           0000A4   232 _P24	=	0x00a4
                           0000A5   233 _P25	=	0x00a5
                           0000A6   234 _P26	=	0x00a6
                           0000A7   235 _P27	=	0x00a7
                           0000B0   236 _P30	=	0x00b0
                           0000B1   237 _P31	=	0x00b1
                           0000B2   238 _P32	=	0x00b2
                           0000B3   239 _P33	=	0x00b3
                           0000B4   240 _P34	=	0x00b4
                           0000B5   241 _P35	=	0x00b5
                           0000B6   242 _P36	=	0x00b6
                           0000B7   243 _P37	=	0x00b7
                           0000D7   244 _CY	=	0x00d7
                           0000D6   245 _AC	=	0x00d6
                           0000D5   246 _F0	=	0x00d5
                           0000D4   247 _RS1	=	0x00d4
                           0000D3   248 _RS0	=	0x00d3
                           0000D2   249 _OV	=	0x00d2
                           0000D0   250 _P	=	0x00d0
                           00008F   251 _TF1	=	0x008f
                           00008E   252 _TR1	=	0x008e
                           00008D   253 _TF0	=	0x008d
                           00008C   254 _TR0	=	0x008c
                           00008B   255 _IE1	=	0x008b
                           00008A   256 _IT1	=	0x008a
                           000089   257 _IE0	=	0x0089
                           000088   258 _IT0	=	0x0088
                           0000AF   259 _EA	=	0x00af
                           0000AE   260 _EC	=	0x00ae
                           0000AD   261 _ET2	=	0x00ad
                           0000AC   262 _ES	=	0x00ac
                           0000AB   263 _ET1	=	0x00ab
                           0000AA   264 _EX1	=	0x00aa
                           0000A9   265 _ET0	=	0x00a9
                           0000A8   266 _EX0	=	0x00a8
                           0000BD   267 _PT2	=	0x00bd
                           0000BC   268 _PS	=	0x00bc
                           0000BB   269 _PT1	=	0x00bb
                           0000BA   270 _PX1	=	0x00ba
                           0000B9   271 _PT0	=	0x00b9
                           0000B8   272 _PX0	=	0x00b8
                           0000B7   273 _RD	=	0x00b7
                           0000B6   274 _WR	=	0x00b6
                           0000B5   275 _T1	=	0x00b5
                           0000B4   276 _T0	=	0x00b4
                           0000B3   277 _INT1	=	0x00b3
                           0000B2   278 _INT0	=	0x00b2
                           0000B1   279 _TXD	=	0x00b1
                           0000B0   280 _RXD	=	0x00b0
                           00009F   281 _SM0	=	0x009f
                           00009F   282 _FE	=	0x009f
                           00009E   283 _SM1	=	0x009e
                           00009D   284 _SM2	=	0x009d
                           00009C   285 _REN	=	0x009c
                           00009B   286 _TB8	=	0x009b
                           00009A   287 _RB8	=	0x009a
                           000099   288 _TI	=	0x0099
                           000098   289 _RI	=	0x0098
                           000091   290 _T2EX	=	0x0091
                           000090   291 _T2	=	0x0090
                           0000CF   292 _TF2	=	0x00cf
                           0000CE   293 _EXF2	=	0x00ce
                           0000CD   294 _RCLK	=	0x00cd
                           0000CC   295 _TCLK	=	0x00cc
                           0000CB   296 _EXEN2	=	0x00cb
                           0000CA   297 _TR2	=	0x00ca
                           0000C9   298 _C_T2	=	0x00c9
                           0000C8   299 _CP_RL2	=	0x00c8
                           000081   300 _SCL_I2C	=	0x0081
                           000082   301 _SDA_I2C	=	0x0082
                                    302 ;--------------------------------------------------------
                                    303 ; overlayable register banks
                                    304 ;--------------------------------------------------------
                                    305 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        306 	.ds 8
                                    307 ;--------------------------------------------------------
                                    308 ; internal ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area DSEG    (DATA)
                                    311 ;--------------------------------------------------------
                                    312 ; overlayable items in internal ram 
                                    313 ;--------------------------------------------------------
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area IABS    (ABS,DATA)
                                    322 	.area IABS    (ABS,DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; bit data
                                    325 ;--------------------------------------------------------
                                    326 	.area BSEG    (BIT)
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT0 (CODE)
                                    345 	.area GSINIT1 (CODE)
                                    346 	.area GSINIT2 (CODE)
                                    347 	.area GSINIT3 (CODE)
                                    348 	.area GSINIT4 (CODE)
                                    349 	.area GSINIT5 (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area CSEG    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; global & static initialisations
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; code
                                    367 ;--------------------------------------------------------
                                    368 	.area CSEG    (CODE)
                                    369 ;------------------------------------------------------------
                                    370 ;Allocation info for local variables in function 'Delay_I2C'
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/i2c/include/I2C.c:19: void Delay_I2C(void)
                                    373 ;	-----------------------------------------
                                    374 ;	 function Delay_I2C
                                    375 ;	-----------------------------------------
      000238                        376 _Delay_I2C:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
                                    385 ;	./src/i2c/include/I2C.c:21: NOP();
      000238 00               [12]  386 	NOP	
                                    387 ;	./src/i2c/include/I2C.c:22: NOP();
      000239 00               [12]  388 	NOP	
                                    389 ;	./src/i2c/include/I2C.c:23: NOP();
      00023A 00               [12]  390 	NOP	
                                    391 ;	./src/i2c/include/I2C.c:24: NOP();
      00023B 00               [12]  392 	NOP	
                                    393 ;	./src/i2c/include/I2C.c:25: }
      00023C 22               [24]  394 	ret
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'Start_I2C'
                                    397 ;------------------------------------------------------------
                                    398 ;	./src/i2c/include/I2C.c:27: void Start_I2C(void)
                                    399 ;	-----------------------------------------
                                    400 ;	 function Start_I2C
                                    401 ;	-----------------------------------------
      00023D                        402 _Start_I2C:
                                    403 ;	./src/i2c/include/I2C.c:30: SCL_I2C = 0;
                                    404 ;	assignBit
      00023D C2 81            [12]  405 	clr	_SCL_I2C
                                    406 ;	./src/i2c/include/I2C.c:31: SDA_I2C = 1;
                                    407 ;	assignBit
      00023F D2 82            [12]  408 	setb	_SDA_I2C
                                    409 ;	./src/i2c/include/I2C.c:32: Delay_I2C();
      000241 12 02 38         [24]  410 	lcall	_Delay_I2C
                                    411 ;	./src/i2c/include/I2C.c:33: SCL_I2C = 1;
                                    412 ;	assignBit
      000244 D2 81            [12]  413 	setb	_SCL_I2C
                                    414 ;	./src/i2c/include/I2C.c:34: Delay_I2C();
      000246 12 02 38         [24]  415 	lcall	_Delay_I2C
                                    416 ;	./src/i2c/include/I2C.c:36: SDA_I2C = 0;
                                    417 ;	assignBit
      000249 C2 82            [12]  418 	clr	_SDA_I2C
                                    419 ;	./src/i2c/include/I2C.c:37: Delay_I2C();
      00024B 12 02 38         [24]  420 	lcall	_Delay_I2C
                                    421 ;	./src/i2c/include/I2C.c:39: SCL_I2C = 0;
                                    422 ;	assignBit
      00024E C2 81            [12]  423 	clr	_SCL_I2C
                                    424 ;	./src/i2c/include/I2C.c:40: }
      000250 22               [24]  425 	ret
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'Stop_I2C'
                                    428 ;------------------------------------------------------------
                                    429 ;	./src/i2c/include/I2C.c:42: void Stop_I2C(void)
                                    430 ;	-----------------------------------------
                                    431 ;	 function Stop_I2C
                                    432 ;	-----------------------------------------
      000251                        433 _Stop_I2C:
                                    434 ;	./src/i2c/include/I2C.c:45: SCL_I2C = 0;
                                    435 ;	assignBit
      000251 C2 81            [12]  436 	clr	_SCL_I2C
                                    437 ;	./src/i2c/include/I2C.c:46: SDA_I2C = 0;
                                    438 ;	assignBit
      000253 C2 82            [12]  439 	clr	_SDA_I2C
                                    440 ;	./src/i2c/include/I2C.c:47: Delay_I2C();
      000255 12 02 38         [24]  441 	lcall	_Delay_I2C
                                    442 ;	./src/i2c/include/I2C.c:49: SCL_I2C = 1;
                                    443 ;	assignBit
      000258 D2 81            [12]  444 	setb	_SCL_I2C
                                    445 ;	./src/i2c/include/I2C.c:50: Delay_I2C();
      00025A 12 02 38         [24]  446 	lcall	_Delay_I2C
                                    447 ;	./src/i2c/include/I2C.c:52: SDA_I2C = 1;
                                    448 ;	assignBit
      00025D D2 82            [12]  449 	setb	_SDA_I2C
                                    450 ;	./src/i2c/include/I2C.c:53: Delay_I2C();
      00025F 12 02 38         [24]  451 	lcall	_Delay_I2C
                                    452 ;	./src/i2c/include/I2C.c:54: SCL_I2C = 0;
                                    453 ;	assignBit
      000262 C2 81            [12]  454 	clr	_SCL_I2C
                                    455 ;	./src/i2c/include/I2C.c:55: }
      000264 22               [24]  456 	ret
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'Wr_I2C'
                                    459 ;------------------------------------------------------------
                                    460 ;dat                       Allocated to registers r7 
                                    461 ;ack                       Allocated to registers r7 
                                    462 ;mask                      Allocated to registers r6 
                                    463 ;------------------------------------------------------------
                                    464 ;	./src/i2c/include/I2C.c:57: unsigned char Wr_I2C(unsigned char dat)
                                    465 ;	-----------------------------------------
                                    466 ;	 function Wr_I2C
                                    467 ;	-----------------------------------------
      000265                        468 _Wr_I2C:
      000265 AF 82            [24]  469 	mov	r7,dpl
                                    470 ;	./src/i2c/include/I2C.c:69: for (mask = 0x80; mask != 0; mask >>= 1)
      000267 7E 80            [12]  471 	mov	r6,#0x80
      000269                        472 00105$:
                                    473 ;	./src/i2c/include/I2C.c:76: if ((mask & dat) == 0)
      000269 EF               [12]  474 	mov	a,r7
      00026A 5E               [12]  475 	anl	a,r6
      00026B 70 04            [24]  476 	jnz	00102$
                                    477 ;	./src/i2c/include/I2C.c:78: SDA_I2C = 0;
                                    478 ;	assignBit
      00026D C2 82            [12]  479 	clr	_SDA_I2C
      00026F 80 02            [24]  480 	sjmp	00103$
      000271                        481 00102$:
                                    482 ;	./src/i2c/include/I2C.c:82: SDA_I2C = 1;
                                    483 ;	assignBit
      000271 D2 82            [12]  484 	setb	_SDA_I2C
      000273                        485 00103$:
                                    486 ;	./src/i2c/include/I2C.c:85: Delay_I2C();
      000273 C0 07            [24]  487 	push	ar7
      000275 C0 06            [24]  488 	push	ar6
      000277 12 02 38         [24]  489 	lcall	_Delay_I2C
                                    490 ;	./src/i2c/include/I2C.c:87: SCL_I2C = 1;
                                    491 ;	assignBit
      00027A D2 81            [12]  492 	setb	_SCL_I2C
                                    493 ;	./src/i2c/include/I2C.c:89: Delay_I2C();
      00027C 12 02 38         [24]  494 	lcall	_Delay_I2C
      00027F D0 06            [24]  495 	pop	ar6
      000281 D0 07            [24]  496 	pop	ar7
                                    497 ;	./src/i2c/include/I2C.c:92: SCL_I2C = 0;
                                    498 ;	assignBit
      000283 C2 81            [12]  499 	clr	_SCL_I2C
                                    500 ;	./src/i2c/include/I2C.c:69: for (mask = 0x80; mask != 0; mask >>= 1)
      000285 EE               [12]  501 	mov	a,r6
      000286 C3               [12]  502 	clr	c
      000287 13               [12]  503 	rrc	a
      000288 FE               [12]  504 	mov	r6,a
      000289 70 DE            [24]  505 	jnz	00105$
                                    506 ;	./src/i2c/include/I2C.c:95: SDA_I2C = 1;
                                    507 ;	assignBit
      00028B D2 82            [12]  508 	setb	_SDA_I2C
                                    509 ;	./src/i2c/include/I2C.c:96: Delay_I2C();
      00028D 12 02 38         [24]  510 	lcall	_Delay_I2C
                                    511 ;	./src/i2c/include/I2C.c:98: SCL_I2C = 1;
                                    512 ;	assignBit
      000290 D2 81            [12]  513 	setb	_SCL_I2C
                                    514 ;	./src/i2c/include/I2C.c:100: ack = SDA_I2C;
      000292 A2 82            [12]  515 	mov	c,_SDA_I2C
      000294 E4               [12]  516 	clr	a
      000295 33               [12]  517 	rlc	a
      000296 FF               [12]  518 	mov	r7,a
                                    519 ;	./src/i2c/include/I2C.c:101: Delay_I2C();
      000297 C0 07            [24]  520 	push	ar7
      000299 12 02 38         [24]  521 	lcall	_Delay_I2C
      00029C D0 07            [24]  522 	pop	ar7
                                    523 ;	./src/i2c/include/I2C.c:103: SCL_I2C = 0;
                                    524 ;	assignBit
      00029E C2 81            [12]  525 	clr	_SCL_I2C
                                    526 ;	./src/i2c/include/I2C.c:104: return ack;
      0002A0 8F 82            [24]  527 	mov	dpl,r7
                                    528 ;	./src/i2c/include/I2C.c:105: }
      0002A2 22               [24]  529 	ret
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'RdACK_I2C'
                                    532 ;------------------------------------------------------------
                                    533 ;ack                       Allocated to registers r7 
                                    534 ;mask                      Allocated to registers r5 
                                    535 ;dat                       Allocated to registers r6 
                                    536 ;------------------------------------------------------------
                                    537 ;	./src/i2c/include/I2C.c:109: unsigned char RdACK_I2C(unsigned char ack)
                                    538 ;	-----------------------------------------
                                    539 ;	 function RdACK_I2C
                                    540 ;	-----------------------------------------
      0002A3                        541 _RdACK_I2C:
      0002A3 AF 82            [24]  542 	mov	r7,dpl
                                    543 ;	./src/i2c/include/I2C.c:112: unsigned char dat = 0;
      0002A5 7E 00            [12]  544 	mov	r6,#0x00
                                    545 ;	./src/i2c/include/I2C.c:114: SDA_I2C = 1;
                                    546 ;	assignBit
      0002A7 D2 82            [12]  547 	setb	_SDA_I2C
                                    548 ;	./src/i2c/include/I2C.c:115: for (mask = 0x80; mask != 0; mask >>= 1)
      0002A9 7D 80            [12]  549 	mov	r5,#0x80
      0002AB                        550 00105$:
                                    551 ;	./src/i2c/include/I2C.c:118: Delay_I2C();
      0002AB C0 07            [24]  552 	push	ar7
      0002AD C0 06            [24]  553 	push	ar6
      0002AF C0 05            [24]  554 	push	ar5
      0002B1 12 02 38         [24]  555 	lcall	_Delay_I2C
      0002B4 D0 05            [24]  556 	pop	ar5
      0002B6 D0 06            [24]  557 	pop	ar6
      0002B8 D0 07            [24]  558 	pop	ar7
                                    559 ;	./src/i2c/include/I2C.c:120: SCL_I2C = 1;
                                    560 ;	assignBit
      0002BA D2 81            [12]  561 	setb	_SCL_I2C
                                    562 ;	./src/i2c/include/I2C.c:121: if (SDA_I2C == 0)
      0002BC 20 82 07         [24]  563 	jb	_SDA_I2C,00102$
                                    564 ;	./src/i2c/include/I2C.c:130: dat &= ~mask;
      0002BF ED               [12]  565 	mov	a,r5
      0002C0 F4               [12]  566 	cpl	a
      0002C1 FC               [12]  567 	mov	r4,a
      0002C2 52 06            [12]  568 	anl	ar6,a
      0002C4 80 03            [24]  569 	sjmp	00103$
      0002C6                        570 00102$:
                                    571 ;	./src/i2c/include/I2C.c:141: dat |= mask;
      0002C6 ED               [12]  572 	mov	a,r5
      0002C7 42 06            [12]  573 	orl	ar6,a
      0002C9                        574 00103$:
                                    575 ;	./src/i2c/include/I2C.c:144: Delay_I2C();
      0002C9 C0 07            [24]  576 	push	ar7
      0002CB C0 06            [24]  577 	push	ar6
      0002CD C0 05            [24]  578 	push	ar5
      0002CF 12 02 38         [24]  579 	lcall	_Delay_I2C
      0002D2 D0 05            [24]  580 	pop	ar5
      0002D4 D0 06            [24]  581 	pop	ar6
      0002D6 D0 07            [24]  582 	pop	ar7
                                    583 ;	./src/i2c/include/I2C.c:146: SCL_I2C = 0;
                                    584 ;	assignBit
      0002D8 C2 81            [12]  585 	clr	_SCL_I2C
                                    586 ;	./src/i2c/include/I2C.c:115: for (mask = 0x80; mask != 0; mask >>= 1)
      0002DA ED               [12]  587 	mov	a,r5
      0002DB C3               [12]  588 	clr	c
      0002DC 13               [12]  589 	rrc	a
      0002DD FD               [12]  590 	mov	r5,a
      0002DE 70 CB            [24]  591 	jnz	00105$
                                    592 ;	./src/i2c/include/I2C.c:149: SDA_I2C = ack;
                                    593 ;	assignBit
      0002E0 EF               [12]  594 	mov	a,r7
      0002E1 24 FF            [12]  595 	add	a,#0xff
      0002E3 92 82            [24]  596 	mov	_SDA_I2C,c
                                    597 ;	./src/i2c/include/I2C.c:151: Delay_I2C();
      0002E5 C0 06            [24]  598 	push	ar6
      0002E7 12 02 38         [24]  599 	lcall	_Delay_I2C
                                    600 ;	./src/i2c/include/I2C.c:153: SCL_I2C = 1;
                                    601 ;	assignBit
      0002EA D2 81            [12]  602 	setb	_SCL_I2C
                                    603 ;	./src/i2c/include/I2C.c:155: Delay_I2C();
      0002EC 12 02 38         [24]  604 	lcall	_Delay_I2C
      0002EF D0 06            [24]  605 	pop	ar6
                                    606 ;	./src/i2c/include/I2C.c:157: SCL_I2C = 0;
                                    607 ;	assignBit
      0002F1 C2 81            [12]  608 	clr	_SCL_I2C
                                    609 ;	./src/i2c/include/I2C.c:158: return dat;
      0002F3 8E 82            [24]  610 	mov	dpl,r6
                                    611 ;	./src/i2c/include/I2C.c:159: }
      0002F5 22               [24]  612 	ret
                                    613 	.area CSEG    (CODE)
                                    614 	.area CONST   (CODE)
                                    615 	.area XINIT   (CODE)
                                    616 	.area CABS    (ABS,CODE)
