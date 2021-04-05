                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module infrared
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Int1
                                     12 	.globl _T_Count
                                     13 	.globl _IR_out
                                     14 	.globl _LED1
                                     15 	.globl _CP_RL2
                                     16 	.globl _C_T2
                                     17 	.globl _TR2
                                     18 	.globl _EXEN2
                                     19 	.globl _TCLK
                                     20 	.globl _RCLK
                                     21 	.globl _EXF2
                                     22 	.globl _TF2
                                     23 	.globl _T2
                                     24 	.globl _T2EX
                                     25 	.globl _RI
                                     26 	.globl _TI
                                     27 	.globl _RB8
                                     28 	.globl _TB8
                                     29 	.globl _REN
                                     30 	.globl _SM2
                                     31 	.globl _SM1
                                     32 	.globl _FE
                                     33 	.globl _SM0
                                     34 	.globl _RXD
                                     35 	.globl _TXD
                                     36 	.globl _INT0
                                     37 	.globl _INT1
                                     38 	.globl _T0
                                     39 	.globl _T1
                                     40 	.globl _WR
                                     41 	.globl _RD
                                     42 	.globl _PX0
                                     43 	.globl _PT0
                                     44 	.globl _PX1
                                     45 	.globl _PT1
                                     46 	.globl _PS
                                     47 	.globl _PT2
                                     48 	.globl _EX0
                                     49 	.globl _ET0
                                     50 	.globl _EX1
                                     51 	.globl _ET1
                                     52 	.globl _ES
                                     53 	.globl _ET2
                                     54 	.globl _EC
                                     55 	.globl _EA
                                     56 	.globl _IT0
                                     57 	.globl _IE0
                                     58 	.globl _IT1
                                     59 	.globl _IE1
                                     60 	.globl _TR0
                                     61 	.globl _TF0
                                     62 	.globl _TR1
                                     63 	.globl _TF1
                                     64 	.globl _P
                                     65 	.globl _OV
                                     66 	.globl _RS0
                                     67 	.globl _RS1
                                     68 	.globl _F0
                                     69 	.globl _AC
                                     70 	.globl _CY
                                     71 	.globl _P37
                                     72 	.globl _P36
                                     73 	.globl _P35
                                     74 	.globl _P34
                                     75 	.globl _P33
                                     76 	.globl _P32
                                     77 	.globl _P31
                                     78 	.globl _P30
                                     79 	.globl _P27
                                     80 	.globl _P26
                                     81 	.globl _P25
                                     82 	.globl _P24
                                     83 	.globl _P23
                                     84 	.globl _P22
                                     85 	.globl _P21
                                     86 	.globl _P20
                                     87 	.globl _P17
                                     88 	.globl _P16
                                     89 	.globl _P15
                                     90 	.globl _P14
                                     91 	.globl _P13
                                     92 	.globl _P12
                                     93 	.globl _P11
                                     94 	.globl _P10
                                     95 	.globl _P07
                                     96 	.globl _P06
                                     97 	.globl _P05
                                     98 	.globl _P04
                                     99 	.globl _P03
                                    100 	.globl _P02
                                    101 	.globl _P01
                                    102 	.globl _P00
                                    103 	.globl _P40
                                    104 	.globl _P41
                                    105 	.globl _P42
                                    106 	.globl _P43
                                    107 	.globl _P44
                                    108 	.globl _P45
                                    109 	.globl _P46
                                    110 	.globl _TH2
                                    111 	.globl _TL2
                                    112 	.globl _RCAP2H
                                    113 	.globl _RCAP2L
                                    114 	.globl _T2MOD
                                    115 	.globl _T2CON
                                    116 	.globl _SADEN
                                    117 	.globl _IPH
                                    118 	.globl _SADDR
                                    119 	.globl _AUXR1
                                    120 	.globl _AUXR
                                    121 	.globl _SBUF
                                    122 	.globl _SCON
                                    123 	.globl _IP
                                    124 	.globl _IE
                                    125 	.globl _TH1
                                    126 	.globl _TH0
                                    127 	.globl _TL1
                                    128 	.globl _TL0
                                    129 	.globl _TMOD
                                    130 	.globl _TCON
                                    131 	.globl _PCON
                                    132 	.globl _DPH
                                    133 	.globl _DPL
                                    134 	.globl _SP
                                    135 	.globl _B
                                    136 	.globl _ACC
                                    137 	.globl _PSW
                                    138 	.globl _P3
                                    139 	.globl _P2
                                    140 	.globl _P1
                                    141 	.globl _P0
                                    142 	.globl _ISP_CONTR
                                    143 	.globl _ISP_TRIG
                                    144 	.globl _ISP_CMD
                                    145 	.globl _ISP_ADDRL
                                    146 	.globl _ISP_ADDRH
                                    147 	.globl _ISP_DATA
                                    148 	.globl _WDT_CONTR
                                    149 	.globl _XICON
                                    150 	.globl _P4
                                    151 	.globl _Data_IR
                                    152 	.globl _Flag_IR
                                    153 	.globl _InitIR
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
                           000091   300 _LED1	=	0x0091
                           0000B3   301 _IR_out	=	0x00b3
                                    302 ;--------------------------------------------------------
                                    303 ; overlayable register banks
                                    304 ;--------------------------------------------------------
                                    305 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        306 	.ds 8
                                    307 ;--------------------------------------------------------
                                    308 ; overlayable bit register bank
                                    309 ;--------------------------------------------------------
                                    310 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        311 bits:
      000020                        312 	.ds 1
                           008000   313 	b0 = bits[0]
                           008100   314 	b1 = bits[1]
                           008200   315 	b2 = bits[2]
                           008300   316 	b3 = bits[3]
                           008400   317 	b4 = bits[4]
                           008500   318 	b5 = bits[5]
                           008600   319 	b6 = bits[6]
                           008700   320 	b7 = bits[7]
                                    321 ;--------------------------------------------------------
                                    322 ; internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area DSEG    (DATA)
      00000F                        325 _Flag_IR::
      00000F                        326 	.ds 1
      000010                        327 _Data_IR::
      000010                        328 	.ds 4
                                    329 ;--------------------------------------------------------
                                    330 ; overlayable items in internal ram 
                                    331 ;--------------------------------------------------------
                                    332 	.area	OSEG    (OVR,DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; indirectly addressable internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area ISEG    (DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; absolute internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area IABS    (ABS,DATA)
                                    341 	.area IABS    (ABS,DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; bit data
                                    344 ;--------------------------------------------------------
                                    345 	.area BSEG    (BIT)
                                    346 ;--------------------------------------------------------
                                    347 ; paged external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area PSEG    (PAG,XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XSEG    (XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; absolute external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XABS    (ABS,XDATA)
                                    358 ;--------------------------------------------------------
                                    359 ; external initialized ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area XISEG   (XDATA)
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT0 (CODE)
                                    364 	.area GSINIT1 (CODE)
                                    365 	.area GSINIT2 (CODE)
                                    366 	.area GSINIT3 (CODE)
                                    367 	.area GSINIT4 (CODE)
                                    368 	.area GSINIT5 (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 	.area GSFINAL (CODE)
                                    371 	.area CSEG    (CODE)
                                    372 ;--------------------------------------------------------
                                    373 ; global & static initialisations
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 ;	./src/ir/include/infrared.c:34: unsigned char Flag_IR = 0;
      000066 75 0F 00         [24]  380 	mov	_Flag_IR,#0x00
                                    381 ;--------------------------------------------------------
                                    382 ; Home
                                    383 ;--------------------------------------------------------
                                    384 	.area HOME    (CODE)
                                    385 	.area HOME    (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; code
                                    388 ;--------------------------------------------------------
                                    389 	.area CSEG    (CODE)
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'InitIR'
                                    392 ;------------------------------------------------------------
                                    393 ;	./src/ir/include/infrared.c:39: void InitIR()
                                    394 ;	-----------------------------------------
                                    395 ;	 function InitIR
                                    396 ;	-----------------------------------------
      0002D3                        397 _InitIR:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
                                    406 ;	./src/ir/include/infrared.c:43: IR_out = 1;
                                    407 ;	assignBit
      0002D3 D2 B3            [12]  408 	setb	_IR_out
                                    409 ;	./src/ir/include/infrared.c:47: TMOD &= 0xF0;
      0002D5 53 89 F0         [24]  410 	anl	_TMOD,#0xf0
                                    411 ;	./src/ir/include/infrared.c:51: TMOD |= 0x01;
      0002D8 43 89 01         [24]  412 	orl	_TMOD,#0x01
                                    413 ;	./src/ir/include/infrared.c:53: TR0 = 1;
                                    414 ;	assignBit
      0002DB D2 8C            [12]  415 	setb	_TR0
                                    416 ;	./src/ir/include/infrared.c:55: ET0 = 0;
                                    417 ;	assignBit
      0002DD C2 A9            [12]  418 	clr	_ET0
                                    419 ;	./src/ir/include/infrared.c:59: IT1 = 1;
                                    420 ;	assignBit
      0002DF D2 8A            [12]  421 	setb	_IT1
                                    422 ;	./src/ir/include/infrared.c:61: EX1 = 1;
                                    423 ;	assignBit
      0002E1 D2 AA            [12]  424 	setb	_EX1
                                    425 ;	./src/ir/include/infrared.c:63: EA = 1;
                                    426 ;	assignBit
      0002E3 D2 AF            [12]  427 	setb	_EA
                                    428 ;	./src/ir/include/infrared.c:64: }
      0002E5 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'T_Count'
                                    432 ;------------------------------------------------------------
                                    433 ;flag                      Allocated to registers r6 r7 
                                    434 ;------------------------------------------------------------
                                    435 ;	./src/ir/include/infrared.c:66: unsigned int T_Count(unsigned int flag)
                                    436 ;	-----------------------------------------
                                    437 ;	 function T_Count
                                    438 ;	-----------------------------------------
      0002E6                        439 _T_Count:
      0002E6 AE 82            [24]  440 	mov	r6,dpl
      0002E8 AF 83            [24]  441 	mov	r7,dph
                                    442 ;	./src/ir/include/infrared.c:69: TH0 = 0;
      0002EA 75 8C 00         [24]  443 	mov	_TH0,#0x00
                                    444 ;	./src/ir/include/infrared.c:70: TL0 = 0;
      0002ED 75 8A 00         [24]  445 	mov	_TL0,#0x00
                                    446 ;	./src/ir/include/infrared.c:72: TR0 = 1;
                                    447 ;	assignBit
      0002F0 D2 8C            [12]  448 	setb	_TR0
                                    449 ;	./src/ir/include/infrared.c:75: while (IR_out == flag)
      0002F2                        450 00103$:
      0002F2 A2 B3            [12]  451 	mov	c,_IR_out
      0002F4 E4               [12]  452 	clr	a
      0002F5 33               [12]  453 	rlc	a
      0002F6 7D 00            [12]  454 	mov	r5,#0x00
      0002F8 B5 06 0A         [24]  455 	cjne	a,ar6,00105$
      0002FB ED               [12]  456 	mov	a,r5
      0002FC B5 07 06         [24]  457 	cjne	a,ar7,00105$
                                    458 ;	./src/ir/include/infrared.c:79: if (TH0 > (Time_16ms >> 8))
      0002FF E5 8C            [12]  459 	mov	a,_TH0
      000301 24 C1            [12]  460 	add	a,#0xff - 0x3e
      000303 50 ED            [24]  461 	jnc	00103$
                                    462 ;	./src/ir/include/infrared.c:81: break;
      000305                        463 00105$:
                                    464 ;	./src/ir/include/infrared.c:85: TR0 = 0;
                                    465 ;	assignBit
      000305 C2 8C            [12]  466 	clr	_TR0
                                    467 ;	./src/ir/include/infrared.c:88: return (TH0 * 256 + TL0);
      000307 AF 8C            [24]  468 	mov	r7,_TH0
      000309 7E 00            [12]  469 	mov	r6,#0x00
      00030B AC 8A            [24]  470 	mov	r4,_TL0
      00030D 7D 00            [12]  471 	mov	r5,#0x00
      00030F EC               [12]  472 	mov	a,r4
      000310 2E               [12]  473 	add	a,r6
      000311 F5 82            [12]  474 	mov	dpl,a
      000313 ED               [12]  475 	mov	a,r5
      000314 3F               [12]  476 	addc	a,r7
      000315 F5 83            [12]  477 	mov	dph,a
                                    478 ;	./src/ir/include/infrared.c:89: }
      000317 22               [24]  479 	ret
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'Int1'
                                    482 ;------------------------------------------------------------
                                    483 ;i                         Allocated to registers r6 r7 
                                    484 ;T_Low                     Allocated to registers r4 r5 
                                    485 ;T_High                    Allocated to registers r2 r3 
                                    486 ;------------------------------------------------------------
                                    487 ;	./src/ir/include/infrared.c:92: void Int1() __interrupt(2)
                                    488 ;	-----------------------------------------
                                    489 ;	 function Int1
                                    490 ;	-----------------------------------------
      000318                        491 _Int1:
      000318 C0 20            [24]  492 	push	bits
      00031A C0 E0            [24]  493 	push	acc
      00031C C0 F0            [24]  494 	push	b
      00031E C0 82            [24]  495 	push	dpl
      000320 C0 83            [24]  496 	push	dph
      000322 C0 07            [24]  497 	push	(0+7)
      000324 C0 06            [24]  498 	push	(0+6)
      000326 C0 05            [24]  499 	push	(0+5)
      000328 C0 04            [24]  500 	push	(0+4)
      00032A C0 03            [24]  501 	push	(0+3)
      00032C C0 02            [24]  502 	push	(0+2)
      00032E C0 01            [24]  503 	push	(0+1)
      000330 C0 00            [24]  504 	push	(0+0)
      000332 C0 D0            [24]  505 	push	psw
      000334 75 D0 00         [24]  506 	mov	psw,#0x00
                                    507 ;	./src/ir/include/infrared.c:99: T_Low = T_Count(LOW_IR);
      000337 90 00 00         [24]  508 	mov	dptr,#0x0000
      00033A 12 02 E6         [24]  509 	lcall	_T_Count
      00033D AE 82            [24]  510 	mov	r6,dpl
      00033F AF 83            [24]  511 	mov	r7,dph
                                    512 ;	./src/ir/include/infrared.c:101: T_High = T_Count(HIGH_IR);
      000341 90 00 01         [24]  513 	mov	dptr,#0x0001
      000344 C0 07            [24]  514 	push	ar7
      000346 C0 06            [24]  515 	push	ar6
      000348 12 02 E6         [24]  516 	lcall	_T_Count
      00034B AC 82            [24]  517 	mov	r4,dpl
      00034D AD 83            [24]  518 	mov	r5,dph
      00034F D0 06            [24]  519 	pop	ar6
      000351 D0 07            [24]  520 	pop	ar7
                                    521 ;	./src/ir/include/infrared.c:105: if (T_Low < Min_9ms || T_Low > Max_9ms || T_High < Min_4_5ms || T_High > MAX_4_5ms)
      000353 C3               [12]  522 	clr	c
      000354 EE               [12]  523 	mov	a,r6
      000355 94 40            [12]  524 	subb	a,#0x40
      000357 EF               [12]  525 	mov	a,r7
      000358 94 1F            [12]  526 	subb	a,#0x1f
      00035A 40 18            [24]  527 	jc	00101$
      00035C 74 10            [12]  528 	mov	a,#0x10
      00035E 9E               [12]  529 	subb	a,r6
      00035F 74 27            [12]  530 	mov	a,#0x27
      000361 9F               [12]  531 	subb	a,r7
      000362 40 10            [24]  532 	jc	00101$
      000364 EC               [12]  533 	mov	a,r4
      000365 94 AC            [12]  534 	subb	a,#0xac
      000367 ED               [12]  535 	mov	a,r5
      000368 94 0D            [12]  536 	subb	a,#0x0d
      00036A 40 08            [24]  537 	jc	00101$
      00036C 74 88            [12]  538 	mov	a,#0x88
      00036E 9C               [12]  539 	subb	a,r4
      00036F 74 13            [12]  540 	mov	a,#0x13
      000371 9D               [12]  541 	subb	a,r5
      000372 50 05            [24]  542 	jnc	00125$
      000374                        543 00101$:
                                    544 ;	./src/ir/include/infrared.c:108: IE1 = 0;
                                    545 ;	assignBit
      000374 C2 8B            [12]  546 	clr	_IE1
                                    547 ;	./src/ir/include/infrared.c:109: return;
      000376 02 03 FA         [24]  548 	ljmp	00116$
                                    549 ;	./src/ir/include/infrared.c:116: for (i = 0; i < 32; i++)
      000379                        550 00125$:
      000379 7E 00            [12]  551 	mov	r6,#0x00
      00037B 7F 00            [12]  552 	mov	r7,#0x00
      00037D                        553 00114$:
                                    554 ;	./src/ir/include/infrared.c:119: T_Low = T_Count(LOW_IR);
      00037D 90 00 00         [24]  555 	mov	dptr,#0x0000
      000380 C0 07            [24]  556 	push	ar7
      000382 C0 06            [24]  557 	push	ar6
      000384 12 02 E6         [24]  558 	lcall	_T_Count
      000387 AC 82            [24]  559 	mov	r4,dpl
      000389 AD 83            [24]  560 	mov	r5,dph
                                    561 ;	./src/ir/include/infrared.c:121: T_High = T_Count(HIGH_IR);
      00038B 90 00 01         [24]  562 	mov	dptr,#0x0001
      00038E C0 05            [24]  563 	push	ar5
      000390 C0 04            [24]  564 	push	ar4
      000392 12 02 E6         [24]  565 	lcall	_T_Count
      000395 AA 82            [24]  566 	mov	r2,dpl
      000397 AB 83            [24]  567 	mov	r3,dph
      000399 D0 04            [24]  568 	pop	ar4
      00039B D0 05            [24]  569 	pop	ar5
      00039D D0 06            [24]  570 	pop	ar6
      00039F D0 07            [24]  571 	pop	ar7
                                    572 ;	./src/ir/include/infrared.c:123: if (T_Low < Min_560us || T_Low > Max_560us || T_High < Min_560us || T_High > Max_1680us)
      0003A1 C3               [12]  573 	clr	c
      0003A2 EC               [12]  574 	mov	a,r4
      0003A3 94 2C            [12]  575 	subb	a,#0x2c
      0003A5 ED               [12]  576 	mov	a,r5
      0003A6 94 01            [12]  577 	subb	a,#0x01
      0003A8 40 18            [24]  578 	jc	00106$
      0003AA 74 BC            [12]  579 	mov	a,#0xbc
      0003AC 9C               [12]  580 	subb	a,r4
      0003AD 74 02            [12]  581 	mov	a,#0x02
      0003AF 9D               [12]  582 	subb	a,r5
      0003B0 40 10            [24]  583 	jc	00106$
      0003B2 EA               [12]  584 	mov	a,r2
      0003B3 94 2C            [12]  585 	subb	a,#0x2c
      0003B5 EB               [12]  586 	mov	a,r3
      0003B6 94 01            [12]  587 	subb	a,#0x01
      0003B8 40 08            [24]  588 	jc	00106$
      0003BA 74 14            [12]  589 	mov	a,#0x14
      0003BC 9A               [12]  590 	subb	a,r2
      0003BD 74 05            [12]  591 	mov	a,#0x05
      0003BF 9B               [12]  592 	subb	a,r3
      0003C0 50 04            [24]  593 	jnc	00107$
      0003C2                        594 00106$:
                                    595 ;	./src/ir/include/infrared.c:126: IE1 = 0;
                                    596 ;	assignBit
      0003C2 C2 8B            [12]  597 	clr	_IE1
                                    598 ;	./src/ir/include/infrared.c:127: return;
      0003C4 80 34            [24]  599 	sjmp	00116$
      0003C6                        600 00107$:
                                    601 ;	./src/ir/include/infrared.c:130: Data_IR >>= 1;
      0003C6 E5 13            [12]  602 	mov	a,(_Data_IR + 3)
      0003C8 C3               [12]  603 	clr	c
      0003C9 13               [12]  604 	rrc	a
      0003CA F5 13            [12]  605 	mov	(_Data_IR + 3),a
      0003CC E5 12            [12]  606 	mov	a,(_Data_IR + 2)
      0003CE 13               [12]  607 	rrc	a
      0003CF F5 12            [12]  608 	mov	(_Data_IR + 2),a
      0003D1 E5 11            [12]  609 	mov	a,(_Data_IR + 1)
      0003D3 13               [12]  610 	rrc	a
      0003D4 F5 11            [12]  611 	mov	(_Data_IR + 1),a
      0003D6 E5 10            [12]  612 	mov	a,_Data_IR
      0003D8 13               [12]  613 	rrc	a
      0003D9 F5 10            [12]  614 	mov	_Data_IR,a
                                    615 ;	./src/ir/include/infrared.c:131: if (T_High > Min_1680us)
      0003DB C3               [12]  616 	clr	c
      0003DC 74 08            [12]  617 	mov	a,#0x08
      0003DE 9A               [12]  618 	subb	a,r2
      0003DF 74 07            [12]  619 	mov	a,#0x07
      0003E1 9B               [12]  620 	subb	a,r3
      0003E2 50 03            [24]  621 	jnc	00115$
                                    622 ;	./src/ir/include/infrared.c:134: Data_IR |= 0x80000000;
      0003E4 43 13 80         [24]  623 	orl	(_Data_IR + 3),#0x80
      0003E7                        624 00115$:
                                    625 ;	./src/ir/include/infrared.c:116: for (i = 0; i < 32; i++)
      0003E7 0E               [12]  626 	inc	r6
      0003E8 BE 00 01         [24]  627 	cjne	r6,#0x00,00172$
      0003EB 0F               [12]  628 	inc	r7
      0003EC                        629 00172$:
      0003EC C3               [12]  630 	clr	c
      0003ED EE               [12]  631 	mov	a,r6
      0003EE 94 20            [12]  632 	subb	a,#0x20
      0003F0 EF               [12]  633 	mov	a,r7
      0003F1 94 00            [12]  634 	subb	a,#0x00
      0003F3 40 88            [24]  635 	jc	00114$
                                    636 ;	./src/ir/include/infrared.c:138: Flag_IR = 1;
      0003F5 75 0F 01         [24]  637 	mov	_Flag_IR,#0x01
                                    638 ;	./src/ir/include/infrared.c:140: IE1 = 0;
                                    639 ;	assignBit
      0003F8 C2 8B            [12]  640 	clr	_IE1
      0003FA                        641 00116$:
                                    642 ;	./src/ir/include/infrared.c:141: }
      0003FA D0 D0            [24]  643 	pop	psw
      0003FC D0 00            [24]  644 	pop	(0+0)
      0003FE D0 01            [24]  645 	pop	(0+1)
      000400 D0 02            [24]  646 	pop	(0+2)
      000402 D0 03            [24]  647 	pop	(0+3)
      000404 D0 04            [24]  648 	pop	(0+4)
      000406 D0 05            [24]  649 	pop	(0+5)
      000408 D0 06            [24]  650 	pop	(0+6)
      00040A D0 07            [24]  651 	pop	(0+7)
      00040C D0 83            [24]  652 	pop	dph
      00040E D0 82            [24]  653 	pop	dpl
      000410 D0 F0            [24]  654 	pop	b
      000412 D0 E0            [24]  655 	pop	acc
      000414 D0 20            [24]  656 	pop	bits
      000416 32               [24]  657 	reti
                                    658 	.area CSEG    (CODE)
                                    659 	.area CONST   (CODE)
                                    660 	.area XINIT   (CODE)
                                    661 	.area CABS    (ABS,CODE)
