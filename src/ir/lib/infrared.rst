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
                                     11 	.globl _IR_out
                                     12 	.globl _LED1
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
                                    149 	.globl _Data_IR
                                    150 	.globl _Flag_IR
                                    151 	.globl _InitIR
                                    152 	.globl _T_Count
                                    153 	.globl _WaitRed
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
                                    308 ; internal ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area DSEG    (DATA)
      00000F                        311 _Flag_IR::
      00000F                        312 	.ds 1
      000010                        313 _Data_IR::
      000010                        314 	.ds 4
                                    315 ;--------------------------------------------------------
                                    316 ; overlayable items in internal ram 
                                    317 ;--------------------------------------------------------
                                    318 	.area	OSEG    (OVR,DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; indirectly addressable internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area ISEG    (DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; absolute internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area IABS    (ABS,DATA)
                                    327 	.area IABS    (ABS,DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; bit data
                                    330 ;--------------------------------------------------------
                                    331 	.area BSEG    (BIT)
                                    332 ;--------------------------------------------------------
                                    333 ; paged external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area PSEG    (PAG,XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XSEG    (XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; absolute external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XABS    (ABS,XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; external initialized ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XISEG   (XDATA)
                                    348 	.area HOME    (CODE)
                                    349 	.area GSINIT0 (CODE)
                                    350 	.area GSINIT1 (CODE)
                                    351 	.area GSINIT2 (CODE)
                                    352 	.area GSINIT3 (CODE)
                                    353 	.area GSINIT4 (CODE)
                                    354 	.area GSINIT5 (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area CSEG    (CODE)
                                    358 ;--------------------------------------------------------
                                    359 ; global & static initialisations
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 ;	./src/ir/include/infrared.c:20: unsigned char Flag_IR = 0;
      000079 75 0F 00         [24]  366 	mov	_Flag_IR,#0x00
                                    367 ;--------------------------------------------------------
                                    368 ; Home
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
                                    371 	.area HOME    (CODE)
                                    372 ;--------------------------------------------------------
                                    373 ; code
                                    374 ;--------------------------------------------------------
                                    375 	.area CSEG    (CODE)
                                    376 ;------------------------------------------------------------
                                    377 ;Allocation info for local variables in function 'InitIR'
                                    378 ;------------------------------------------------------------
                                    379 ;	./src/ir/include/infrared.c:25: void InitIR()
                                    380 ;	-----------------------------------------
                                    381 ;	 function InitIR
                                    382 ;	-----------------------------------------
      000330                        383 _InitIR:
                           000007   384 	ar7 = 0x07
                           000006   385 	ar6 = 0x06
                           000005   386 	ar5 = 0x05
                           000004   387 	ar4 = 0x04
                           000003   388 	ar3 = 0x03
                           000002   389 	ar2 = 0x02
                           000001   390 	ar1 = 0x01
                           000000   391 	ar0 = 0x00
                                    392 ;	./src/ir/include/infrared.c:29: IR_out = 1;
                                    393 ;	assignBit
      000330 D2 B3            [12]  394 	setb	_IR_out
                                    395 ;	./src/ir/include/infrared.c:33: TMOD &= 0xF0;
      000332 53 89 F0         [24]  396 	anl	_TMOD,#0xf0
                                    397 ;	./src/ir/include/infrared.c:37: TMOD |= 0x01;
      000335 43 89 01         [24]  398 	orl	_TMOD,#0x01
                                    399 ;	./src/ir/include/infrared.c:39: TR0 = 0;
                                    400 ;	assignBit
      000338 C2 8C            [12]  401 	clr	_TR0
                                    402 ;	./src/ir/include/infrared.c:41: ET0 = 0;
                                    403 ;	assignBit
      00033A C2 A9            [12]  404 	clr	_ET0
                                    405 ;	./src/ir/include/infrared.c:44: TL0 = 12;
      00033C 75 8A 0C         [24]  406 	mov	_TL0,#0x0c
                                    407 ;	./src/ir/include/infrared.c:45: TH0 = 34;
      00033F 75 8C 22         [24]  408 	mov	_TH0,#0x22
                                    409 ;	./src/ir/include/infrared.c:49: IT1 = 1;
                                    410 ;	assignBit
      000342 D2 8A            [12]  411 	setb	_IT1
                                    412 ;	./src/ir/include/infrared.c:51: EX1 = 1;
                                    413 ;	assignBit
      000344 D2 AA            [12]  414 	setb	_EX1
                                    415 ;	./src/ir/include/infrared.c:53: EA = 1;
                                    416 ;	assignBit
      000346 D2 AF            [12]  417 	setb	_EA
                                    418 ;	./src/ir/include/infrared.c:54: }
      000348 22               [24]  419 	ret
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'T_Count'
                                    422 ;------------------------------------------------------------
                                    423 ;flag                      Allocated to registers r6 r7 
                                    424 ;------------------------------------------------------------
                                    425 ;	./src/ir/include/infrared.c:56: unsigned int T_Count(unsigned int flag)
                                    426 ;	-----------------------------------------
                                    427 ;	 function T_Count
                                    428 ;	-----------------------------------------
      000349                        429 _T_Count:
      000349 AE 82            [24]  430 	mov	r6,dpl
      00034B AF 83            [24]  431 	mov	r7,dph
                                    432 ;	./src/ir/include/infrared.c:59: TH0 = 0;
      00034D 75 8C 00         [24]  433 	mov	_TH0,#0x00
                                    434 ;	./src/ir/include/infrared.c:60: TL0 = 0;
      000350 75 8A 00         [24]  435 	mov	_TL0,#0x00
                                    436 ;	./src/ir/include/infrared.c:62: TR0 = 1;
                                    437 ;	assignBit
      000353 D2 8C            [12]  438 	setb	_TR0
                                    439 ;	./src/ir/include/infrared.c:65: while (IR_out == flag)
      000355                        440 00103$:
      000355 A2 B3            [12]  441 	mov	c,_IR_out
      000357 E4               [12]  442 	clr	a
      000358 33               [12]  443 	rlc	a
      000359 7D 00            [12]  444 	mov	r5,#0x00
      00035B B5 06 0A         [24]  445 	cjne	a,ar6,00105$
      00035E ED               [12]  446 	mov	a,r5
      00035F B5 07 06         [24]  447 	cjne	a,ar7,00105$
                                    448 ;	./src/ir/include/infrared.c:69: if (TH0 > (Time_16ms >> 8))
      000362 E5 8C            [12]  449 	mov	a,_TH0
      000364 24 C1            [12]  450 	add	a,#0xff - 0x3e
      000366 50 ED            [24]  451 	jnc	00103$
                                    452 ;	./src/ir/include/infrared.c:71: break;
      000368                        453 00105$:
                                    454 ;	./src/ir/include/infrared.c:75: TR0 = 0;
                                    455 ;	assignBit
      000368 C2 8C            [12]  456 	clr	_TR0
                                    457 ;	./src/ir/include/infrared.c:78: return (TH0 * 256 + TL0);
      00036A AF 8C            [24]  458 	mov	r7,_TH0
      00036C 7E 00            [12]  459 	mov	r6,#0x00
      00036E AC 8A            [24]  460 	mov	r4,_TL0
      000370 7D 00            [12]  461 	mov	r5,#0x00
      000372 EC               [12]  462 	mov	a,r4
      000373 2E               [12]  463 	add	a,r6
      000374 F5 82            [12]  464 	mov	dpl,a
      000376 ED               [12]  465 	mov	a,r5
      000377 3F               [12]  466 	addc	a,r7
      000378 F5 83            [12]  467 	mov	dph,a
                                    468 ;	./src/ir/include/infrared.c:79: }
      00037A 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'WaitRed'
                                    472 ;------------------------------------------------------------
                                    473 ;i                         Allocated to registers r6 r7 
                                    474 ;T_Low                     Allocated to registers r4 r5 
                                    475 ;T_High                    Allocated to registers r2 r3 
                                    476 ;------------------------------------------------------------
                                    477 ;	./src/ir/include/infrared.c:81: void WaitRed()
                                    478 ;	-----------------------------------------
                                    479 ;	 function WaitRed
                                    480 ;	-----------------------------------------
      00037B                        481 _WaitRed:
                                    482 ;	./src/ir/include/infrared.c:88: T_Low = T_Count(LOW_IR);
      00037B 90 00 00         [24]  483 	mov	dptr,#0x0000
      00037E 12 03 49         [24]  484 	lcall	_T_Count
      000381 AE 82            [24]  485 	mov	r6,dpl
      000383 AF 83            [24]  486 	mov	r7,dph
                                    487 ;	./src/ir/include/infrared.c:90: T_High = T_Count(HIGH_IR);
      000385 90 00 01         [24]  488 	mov	dptr,#0x0001
      000388 C0 07            [24]  489 	push	ar7
      00038A C0 06            [24]  490 	push	ar6
      00038C 12 03 49         [24]  491 	lcall	_T_Count
      00038F AC 82            [24]  492 	mov	r4,dpl
      000391 AD 83            [24]  493 	mov	r5,dph
      000393 D0 06            [24]  494 	pop	ar6
      000395 D0 07            [24]  495 	pop	ar7
                                    496 ;	./src/ir/include/infrared.c:94: if (T_Low < Min_9ms || T_Low > Max_9ms || T_High < Min_4_5ms || T_High > Max_4_5ms)
      000397 C3               [12]  497 	clr	c
      000398 EE               [12]  498 	mov	a,r6
      000399 94 40            [12]  499 	subb	a,#0x40
      00039B EF               [12]  500 	mov	a,r7
      00039C 94 1F            [12]  501 	subb	a,#0x1f
      00039E 40 18            [24]  502 	jc	00101$
      0003A0 74 10            [12]  503 	mov	a,#0x10
      0003A2 9E               [12]  504 	subb	a,r6
      0003A3 74 27            [12]  505 	mov	a,#0x27
      0003A5 9F               [12]  506 	subb	a,r7
      0003A6 40 10            [24]  507 	jc	00101$
      0003A8 EC               [12]  508 	mov	a,r4
      0003A9 94 AC            [12]  509 	subb	a,#0xac
      0003AB ED               [12]  510 	mov	a,r5
      0003AC 94 0D            [12]  511 	subb	a,#0x0d
      0003AE 40 08            [24]  512 	jc	00101$
      0003B0 74 88            [12]  513 	mov	a,#0x88
      0003B2 9C               [12]  514 	subb	a,r4
      0003B3 74 13            [12]  515 	mov	a,#0x13
      0003B5 9D               [12]  516 	subb	a,r5
      0003B6 50 03            [24]  517 	jnc	00125$
      0003B8                        518 00101$:
                                    519 ;	./src/ir/include/infrared.c:97: IE1 = 0;
                                    520 ;	assignBit
      0003B8 C2 8B            [12]  521 	clr	_IE1
                                    522 ;	./src/ir/include/infrared.c:98: return;
      0003BA 22               [24]  523 	ret
                                    524 ;	./src/ir/include/infrared.c:105: for (i = 0; i < 32; i++)
      0003BB                        525 00125$:
      0003BB 7E 00            [12]  526 	mov	r6,#0x00
      0003BD 7F 00            [12]  527 	mov	r7,#0x00
      0003BF                        528 00114$:
                                    529 ;	./src/ir/include/infrared.c:108: T_Low = T_Count(LOW_IR);
      0003BF 90 00 00         [24]  530 	mov	dptr,#0x0000
      0003C2 C0 07            [24]  531 	push	ar7
      0003C4 C0 06            [24]  532 	push	ar6
      0003C6 12 03 49         [24]  533 	lcall	_T_Count
      0003C9 AC 82            [24]  534 	mov	r4,dpl
      0003CB AD 83            [24]  535 	mov	r5,dph
                                    536 ;	./src/ir/include/infrared.c:110: T_High = T_Count(HIGH_IR);
      0003CD 90 00 01         [24]  537 	mov	dptr,#0x0001
      0003D0 C0 05            [24]  538 	push	ar5
      0003D2 C0 04            [24]  539 	push	ar4
      0003D4 12 03 49         [24]  540 	lcall	_T_Count
      0003D7 AA 82            [24]  541 	mov	r2,dpl
      0003D9 AB 83            [24]  542 	mov	r3,dph
      0003DB D0 04            [24]  543 	pop	ar4
      0003DD D0 05            [24]  544 	pop	ar5
      0003DF D0 06            [24]  545 	pop	ar6
      0003E1 D0 07            [24]  546 	pop	ar7
                                    547 ;	./src/ir/include/infrared.c:112: if (T_Low < Min_560us || T_Low > Max_560us || T_High < Min_560us || T_High > Max_1680us)
      0003E3 C3               [12]  548 	clr	c
      0003E4 EC               [12]  549 	mov	a,r4
      0003E5 94 2C            [12]  550 	subb	a,#0x2c
      0003E7 ED               [12]  551 	mov	a,r5
      0003E8 94 01            [12]  552 	subb	a,#0x01
      0003EA 40 18            [24]  553 	jc	00106$
      0003EC 74 BC            [12]  554 	mov	a,#0xbc
      0003EE 9C               [12]  555 	subb	a,r4
      0003EF 74 02            [12]  556 	mov	a,#0x02
      0003F1 9D               [12]  557 	subb	a,r5
      0003F2 40 10            [24]  558 	jc	00106$
      0003F4 EA               [12]  559 	mov	a,r2
      0003F5 94 2C            [12]  560 	subb	a,#0x2c
      0003F7 EB               [12]  561 	mov	a,r3
      0003F8 94 01            [12]  562 	subb	a,#0x01
      0003FA 40 08            [24]  563 	jc	00106$
      0003FC 74 08            [12]  564 	mov	a,#0x08
      0003FE 9A               [12]  565 	subb	a,r2
      0003FF 74 07            [12]  566 	mov	a,#0x07
      000401 9B               [12]  567 	subb	a,r3
      000402 50 03            [24]  568 	jnc	00107$
      000404                        569 00106$:
                                    570 ;	./src/ir/include/infrared.c:115: IE1 = 0;
                                    571 ;	assignBit
      000404 C2 8B            [12]  572 	clr	_IE1
                                    573 ;	./src/ir/include/infrared.c:116: return;
      000406 22               [24]  574 	ret
      000407                        575 00107$:
                                    576 ;	./src/ir/include/infrared.c:119: Data_IR >>= 1;
      000407 E5 13            [12]  577 	mov	a,(_Data_IR + 3)
      000409 C3               [12]  578 	clr	c
      00040A 13               [12]  579 	rrc	a
      00040B F5 13            [12]  580 	mov	(_Data_IR + 3),a
      00040D E5 12            [12]  581 	mov	a,(_Data_IR + 2)
      00040F 13               [12]  582 	rrc	a
      000410 F5 12            [12]  583 	mov	(_Data_IR + 2),a
      000412 E5 11            [12]  584 	mov	a,(_Data_IR + 1)
      000414 13               [12]  585 	rrc	a
      000415 F5 11            [12]  586 	mov	(_Data_IR + 1),a
      000417 E5 10            [12]  587 	mov	a,_Data_IR
      000419 13               [12]  588 	rrc	a
      00041A F5 10            [12]  589 	mov	_Data_IR,a
                                    590 ;	./src/ir/include/infrared.c:120: if (T_High > Min_1680us)
      00041C C3               [12]  591 	clr	c
      00041D 74 14            [12]  592 	mov	a,#0x14
      00041F 9A               [12]  593 	subb	a,r2
      000420 74 05            [12]  594 	mov	a,#0x05
      000422 9B               [12]  595 	subb	a,r3
      000423 50 03            [24]  596 	jnc	00115$
                                    597 ;	./src/ir/include/infrared.c:123: Data_IR |= 0x80000000;
      000425 43 13 80         [24]  598 	orl	(_Data_IR + 3),#0x80
      000428                        599 00115$:
                                    600 ;	./src/ir/include/infrared.c:105: for (i = 0; i < 32; i++)
      000428 0E               [12]  601 	inc	r6
      000429 BE 00 01         [24]  602 	cjne	r6,#0x00,00172$
      00042C 0F               [12]  603 	inc	r7
      00042D                        604 00172$:
      00042D C3               [12]  605 	clr	c
      00042E EE               [12]  606 	mov	a,r6
      00042F 94 20            [12]  607 	subb	a,#0x20
      000431 EF               [12]  608 	mov	a,r7
      000432 94 00            [12]  609 	subb	a,#0x00
      000434 40 89            [24]  610 	jc	00114$
                                    611 ;	./src/ir/include/infrared.c:127: Flag_IR = 1;
      000436 75 0F 01         [24]  612 	mov	_Flag_IR,#0x01
                                    613 ;	./src/ir/include/infrared.c:129: IE1 = 0;
                                    614 ;	assignBit
      000439 C2 8B            [12]  615 	clr	_IE1
                                    616 ;	./src/ir/include/infrared.c:130: }
      00043B 22               [24]  617 	ret
                                    618 	.area CSEG    (CODE)
                                    619 	.area CONST   (CODE)
                                    620 	.area XINIT   (CODE)
                                    621 	.area CABS    (ABS,CODE)
