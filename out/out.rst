                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0
                                     12 	.globl _main
                                     13 	.globl _DU
                                     14 	.globl _CP_RL2
                                     15 	.globl _C_T2
                                     16 	.globl _TR2
                                     17 	.globl _EXEN2
                                     18 	.globl _TCLK
                                     19 	.globl _RCLK
                                     20 	.globl _EXF2
                                     21 	.globl _TF2
                                     22 	.globl _T2
                                     23 	.globl _T2EX
                                     24 	.globl _RI
                                     25 	.globl _TI
                                     26 	.globl _RB8
                                     27 	.globl _TB8
                                     28 	.globl _REN
                                     29 	.globl _SM2
                                     30 	.globl _SM1
                                     31 	.globl _FE
                                     32 	.globl _SM0
                                     33 	.globl _RXD
                                     34 	.globl _TXD
                                     35 	.globl _INT0
                                     36 	.globl _INT1
                                     37 	.globl _T0
                                     38 	.globl _T1
                                     39 	.globl _WR
                                     40 	.globl _RD
                                     41 	.globl _PX0
                                     42 	.globl _PT0
                                     43 	.globl _PX1
                                     44 	.globl _PT1
                                     45 	.globl _PS
                                     46 	.globl _PT2
                                     47 	.globl _EX0
                                     48 	.globl _ET0
                                     49 	.globl _EX1
                                     50 	.globl _ET1
                                     51 	.globl _ES
                                     52 	.globl _ET2
                                     53 	.globl _EC
                                     54 	.globl _EA
                                     55 	.globl _IT0
                                     56 	.globl _IE0
                                     57 	.globl _IT1
                                     58 	.globl _IE1
                                     59 	.globl _TR0
                                     60 	.globl _TF0
                                     61 	.globl _TR1
                                     62 	.globl _TF1
                                     63 	.globl _P
                                     64 	.globl _OV
                                     65 	.globl _RS0
                                     66 	.globl _RS1
                                     67 	.globl _F0
                                     68 	.globl _AC
                                     69 	.globl _CY
                                     70 	.globl _P37
                                     71 	.globl _P36
                                     72 	.globl _P35
                                     73 	.globl _P34
                                     74 	.globl _P33
                                     75 	.globl _P32
                                     76 	.globl _P31
                                     77 	.globl _P30
                                     78 	.globl _P27
                                     79 	.globl _P26
                                     80 	.globl _P25
                                     81 	.globl _P24
                                     82 	.globl _P23
                                     83 	.globl _P22
                                     84 	.globl _P21
                                     85 	.globl _P20
                                     86 	.globl _P17
                                     87 	.globl _P16
                                     88 	.globl _P15
                                     89 	.globl _P14
                                     90 	.globl _P13
                                     91 	.globl _P12
                                     92 	.globl _P11
                                     93 	.globl _P10
                                     94 	.globl _P07
                                     95 	.globl _P06
                                     96 	.globl _P05
                                     97 	.globl _P04
                                     98 	.globl _P03
                                     99 	.globl _P02
                                    100 	.globl _P01
                                    101 	.globl _P00
                                    102 	.globl _P40
                                    103 	.globl _P41
                                    104 	.globl _P42
                                    105 	.globl _P43
                                    106 	.globl _P44
                                    107 	.globl _P45
                                    108 	.globl _P46
                                    109 	.globl _TH2
                                    110 	.globl _TL2
                                    111 	.globl _RCAP2H
                                    112 	.globl _RCAP2L
                                    113 	.globl _T2MOD
                                    114 	.globl _T2CON
                                    115 	.globl _SADEN
                                    116 	.globl _IPH
                                    117 	.globl _SADDR
                                    118 	.globl _AUXR1
                                    119 	.globl _AUXR
                                    120 	.globl _SBUF
                                    121 	.globl _SCON
                                    122 	.globl _IP
                                    123 	.globl _IE
                                    124 	.globl _TH1
                                    125 	.globl _TH0
                                    126 	.globl _TL1
                                    127 	.globl _TL0
                                    128 	.globl _TMOD
                                    129 	.globl _TCON
                                    130 	.globl _PCON
                                    131 	.globl _DPH
                                    132 	.globl _DPL
                                    133 	.globl _SP
                                    134 	.globl _B
                                    135 	.globl _ACC
                                    136 	.globl _PSW
                                    137 	.globl _P3
                                    138 	.globl _P2
                                    139 	.globl _P1
                                    140 	.globl _P0
                                    141 	.globl _ISP_CONTR
                                    142 	.globl _ISP_TRIG
                                    143 	.globl _ISP_CMD
                                    144 	.globl _ISP_ADDRL
                                    145 	.globl _ISP_ADDRH
                                    146 	.globl _ISP_DATA
                                    147 	.globl _WDT_CONTR
                                    148 	.globl _XICON
                                    149 	.globl _P4
                                    150 	.globl _beats
                                    151 	.globl _angle
                                    152 	.globl _codeMotor
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           0000E8   158 _P4	=	0x00e8
                           0000C0   159 _XICON	=	0x00c0
                           0000E1   160 _WDT_CONTR	=	0x00e1
                           0000E2   161 _ISP_DATA	=	0x00e2
                           0000E3   162 _ISP_ADDRH	=	0x00e3
                           0000E4   163 _ISP_ADDRL	=	0x00e4
                           0000E5   164 _ISP_CMD	=	0x00e5
                           0000E6   165 _ISP_TRIG	=	0x00e6
                           0000E7   166 _ISP_CONTR	=	0x00e7
                           000080   167 _P0	=	0x0080
                           000090   168 _P1	=	0x0090
                           0000A0   169 _P2	=	0x00a0
                           0000B0   170 _P3	=	0x00b0
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                           000081   174 _SP	=	0x0081
                           000082   175 _DPL	=	0x0082
                           000083   176 _DPH	=	0x0083
                           000087   177 _PCON	=	0x0087
                           000088   178 _TCON	=	0x0088
                           000089   179 _TMOD	=	0x0089
                           00008A   180 _TL0	=	0x008a
                           00008B   181 _TL1	=	0x008b
                           00008C   182 _TH0	=	0x008c
                           00008D   183 _TH1	=	0x008d
                           0000A8   184 _IE	=	0x00a8
                           0000B8   185 _IP	=	0x00b8
                           000098   186 _SCON	=	0x0098
                           000099   187 _SBUF	=	0x0099
                           00008E   188 _AUXR	=	0x008e
                           0000A2   189 _AUXR1	=	0x00a2
                           0000A9   190 _SADDR	=	0x00a9
                           0000B7   191 _IPH	=	0x00b7
                           0000B9   192 _SADEN	=	0x00b9
                           0000C8   193 _T2CON	=	0x00c8
                           0000C9   194 _T2MOD	=	0x00c9
                           0000CA   195 _RCAP2L	=	0x00ca
                           0000CB   196 _RCAP2H	=	0x00cb
                           0000CC   197 _TL2	=	0x00cc
                           0000CD   198 _TH2	=	0x00cd
                                    199 ;--------------------------------------------------------
                                    200 ; special function bits
                                    201 ;--------------------------------------------------------
                                    202 	.area RSEG    (ABS,DATA)
      000000                        203 	.org 0x0000
                           0000EE   204 _P46	=	0x00ee
                           0000ED   205 _P45	=	0x00ed
                           0000EC   206 _P44	=	0x00ec
                           0000EB   207 _P43	=	0x00eb
                           0000EA   208 _P42	=	0x00ea
                           0000E9   209 _P41	=	0x00e9
                           0000E8   210 _P40	=	0x00e8
                           000080   211 _P00	=	0x0080
                           000081   212 _P01	=	0x0081
                           000082   213 _P02	=	0x0082
                           000083   214 _P03	=	0x0083
                           000084   215 _P04	=	0x0084
                           000085   216 _P05	=	0x0085
                           000086   217 _P06	=	0x0086
                           000087   218 _P07	=	0x0087
                           000090   219 _P10	=	0x0090
                           000091   220 _P11	=	0x0091
                           000092   221 _P12	=	0x0092
                           000093   222 _P13	=	0x0093
                           000094   223 _P14	=	0x0094
                           000095   224 _P15	=	0x0095
                           000096   225 _P16	=	0x0096
                           000097   226 _P17	=	0x0097
                           0000A0   227 _P20	=	0x00a0
                           0000A1   228 _P21	=	0x00a1
                           0000A2   229 _P22	=	0x00a2
                           0000A3   230 _P23	=	0x00a3
                           0000A4   231 _P24	=	0x00a4
                           0000A5   232 _P25	=	0x00a5
                           0000A6   233 _P26	=	0x00a6
                           0000A7   234 _P27	=	0x00a7
                           0000B0   235 _P30	=	0x00b0
                           0000B1   236 _P31	=	0x00b1
                           0000B2   237 _P32	=	0x00b2
                           0000B3   238 _P33	=	0x00b3
                           0000B4   239 _P34	=	0x00b4
                           0000B5   240 _P35	=	0x00b5
                           0000B6   241 _P36	=	0x00b6
                           0000B7   242 _P37	=	0x00b7
                           0000D7   243 _CY	=	0x00d7
                           0000D6   244 _AC	=	0x00d6
                           0000D5   245 _F0	=	0x00d5
                           0000D4   246 _RS1	=	0x00d4
                           0000D3   247 _RS0	=	0x00d3
                           0000D2   248 _OV	=	0x00d2
                           0000D0   249 _P	=	0x00d0
                           00008F   250 _TF1	=	0x008f
                           00008E   251 _TR1	=	0x008e
                           00008D   252 _TF0	=	0x008d
                           00008C   253 _TR0	=	0x008c
                           00008B   254 _IE1	=	0x008b
                           00008A   255 _IT1	=	0x008a
                           000089   256 _IE0	=	0x0089
                           000088   257 _IT0	=	0x0088
                           0000AF   258 _EA	=	0x00af
                           0000AE   259 _EC	=	0x00ae
                           0000AD   260 _ET2	=	0x00ad
                           0000AC   261 _ES	=	0x00ac
                           0000AB   262 _ET1	=	0x00ab
                           0000AA   263 _EX1	=	0x00aa
                           0000A9   264 _ET0	=	0x00a9
                           0000A8   265 _EX0	=	0x00a8
                           0000BD   266 _PT2	=	0x00bd
                           0000BC   267 _PS	=	0x00bc
                           0000BB   268 _PT1	=	0x00bb
                           0000BA   269 _PX1	=	0x00ba
                           0000B9   270 _PT0	=	0x00b9
                           0000B8   271 _PX0	=	0x00b8
                           0000B7   272 _RD	=	0x00b7
                           0000B6   273 _WR	=	0x00b6
                           0000B5   274 _T1	=	0x00b5
                           0000B4   275 _T0	=	0x00b4
                           0000B3   276 _INT1	=	0x00b3
                           0000B2   277 _INT0	=	0x00b2
                           0000B1   278 _TXD	=	0x00b1
                           0000B0   279 _RXD	=	0x00b0
                           00009F   280 _SM0	=	0x009f
                           00009F   281 _FE	=	0x009f
                           00009E   282 _SM1	=	0x009e
                           00009D   283 _SM2	=	0x009d
                           00009C   284 _REN	=	0x009c
                           00009B   285 _TB8	=	0x009b
                           00009A   286 _RB8	=	0x009a
                           000099   287 _TI	=	0x0099
                           000098   288 _RI	=	0x0098
                           000091   289 _T2EX	=	0x0091
                           000090   290 _T2	=	0x0090
                           0000CF   291 _TF2	=	0x00cf
                           0000CE   292 _EXF2	=	0x00ce
                           0000CD   293 _RCLK	=	0x00cd
                           0000CC   294 _TCLK	=	0x00cc
                           0000CB   295 _EXEN2	=	0x00cb
                           0000CA   296 _TR2	=	0x00ca
                           0000C9   297 _C_T2	=	0x00c9
                           0000C8   298 _CP_RL2	=	0x00c8
                           000086   299 _DU	=	0x0086
                                    300 ;--------------------------------------------------------
                                    301 ; overlayable register banks
                                    302 ;--------------------------------------------------------
                                    303 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        304 	.ds 8
                                    305 ;--------------------------------------------------------
                                    306 ; internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area DSEG    (DATA)
      000008                        309 _codeMotor::
      000008                        310 	.ds 8
      000010                        311 _angle::
      000010                        312 	.ds 4
      000014                        313 _beats::
      000014                        314 	.ds 4
      000018                        315 _timer0_index_65536_2:
      000018                        316 	.ds 1
                                    317 ;--------------------------------------------------------
                                    318 ; overlayable items in internal ram 
                                    319 ;--------------------------------------------------------
                                    320 ;--------------------------------------------------------
                                    321 ; Stack segment in internal ram 
                                    322 ;--------------------------------------------------------
                                    323 	.area	SSEG
      00001D                        324 __start__stack:
      00001D                        325 	.ds	1
                                    326 
                                    327 ;--------------------------------------------------------
                                    328 ; indirectly addressable internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area ISEG    (DATA)
                                    331 ;--------------------------------------------------------
                                    332 ; absolute internal ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area IABS    (ABS,DATA)
                                    335 	.area IABS    (ABS,DATA)
                                    336 ;--------------------------------------------------------
                                    337 ; bit data
                                    338 ;--------------------------------------------------------
                                    339 	.area BSEG    (BIT)
                                    340 ;--------------------------------------------------------
                                    341 ; paged external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area PSEG    (PAG,XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; external ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XSEG    (XDATA)
                                    348 ;--------------------------------------------------------
                                    349 ; absolute external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XABS    (ABS,XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; external initialized ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XISEG   (XDATA)
                                    356 	.area HOME    (CODE)
                                    357 	.area GSINIT0 (CODE)
                                    358 	.area GSINIT1 (CODE)
                                    359 	.area GSINIT2 (CODE)
                                    360 	.area GSINIT3 (CODE)
                                    361 	.area GSINIT4 (CODE)
                                    362 	.area GSINIT5 (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area CSEG    (CODE)
                                    366 ;--------------------------------------------------------
                                    367 ; interrupt vector 
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
      000000                        370 __interrupt_vect:
      000000 02 00 11         [24]  371 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  372 	reti
      000004                        373 	.ds	7
      00000B 02 00 F2         [24]  374 	ljmp	_timer0
                                    375 ;--------------------------------------------------------
                                    376 ; global & static initialisations
                                    377 ;--------------------------------------------------------
                                    378 	.area HOME    (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.area GSFINAL (CODE)
                                    381 	.area GSINIT  (CODE)
                                    382 	.globl __sdcc_gsinit_startup
                                    383 	.globl __sdcc_program_startup
                                    384 	.globl __start__stack
                                    385 	.globl __mcs51_genXINIT
                                    386 	.globl __mcs51_genXRAMCLEAR
                                    387 	.globl __mcs51_genRAMCLEAR
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'timer0'
                                    390 ;------------------------------------------------------------
                                    391 ;index                     Allocated with name '_timer0_index_65536_2'
                                    392 ;------------------------------------------------------------
                                    393 ;	./src/step/main.c:43: static unsigned char index = 0;
      00006A 75 18 00         [24]  394 	mov	_timer0_index_65536_2,#0x00
                                    395 ;	./src/step/main.c:15: unsigned char codeMotor[8] = {0xDF, 0xCF, 0xEF, 0x5F, 0x7F, 0x3F, 0xBF, 0x9F};
      00006D 75 08 DF         [24]  396 	mov	_codeMotor,#0xdf
      000070 75 09 CF         [24]  397 	mov	(_codeMotor + 0x0001),#0xcf
      000073 75 0A EF         [24]  398 	mov	(_codeMotor + 0x0002),#0xef
      000076 75 0B 5F         [24]  399 	mov	(_codeMotor + 0x0003),#0x5f
      000079 75 0C 7F         [24]  400 	mov	(_codeMotor + 0x0004),#0x7f
      00007C 75 0D 3F         [24]  401 	mov	(_codeMotor + 0x0005),#0x3f
      00007F 75 0E BF         [24]  402 	mov	(_codeMotor + 0x0006),#0xbf
      000082 75 0F 9F         [24]  403 	mov	(_codeMotor + 0x0007),#0x9f
                                    404 ;	./src/step/main.c:18: unsigned long angle = 180;
      000085 75 10 B4         [24]  405 	mov	_angle,#0xb4
      000088 E4               [12]  406 	clr	a
      000089 F5 11            [12]  407 	mov	(_angle + 1),a
      00008B F5 12            [12]  408 	mov	(_angle + 2),a
      00008D F5 13            [12]  409 	mov	(_angle + 3),a
                                    410 ;	./src/step/main.c:19: unsigned long beats = 0;
      00008F F5 14            [12]  411 	mov	_beats,a
      000091 F5 15            [12]  412 	mov	(_beats + 1),a
      000093 F5 16            [12]  413 	mov	(_beats + 2),a
      000095 F5 17            [12]  414 	mov	(_beats + 3),a
                                    415 	.area GSFINAL (CODE)
      000097 02 00 0E         [24]  416 	ljmp	__sdcc_program_startup
                                    417 ;--------------------------------------------------------
                                    418 ; Home
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area HOME    (CODE)
      00000E                        422 __sdcc_program_startup:
      00000E 02 00 9A         [24]  423 	ljmp	_main
                                    424 ;	return from main will return to caller
                                    425 ;--------------------------------------------------------
                                    426 ; code
                                    427 ;--------------------------------------------------------
                                    428 	.area CSEG    (CODE)
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'main'
                                    431 ;------------------------------------------------------------
                                    432 ;	./src/step/main.c:22: void main()
                                    433 ;	-----------------------------------------
                                    434 ;	 function main
                                    435 ;	-----------------------------------------
      00009A                        436 _main:
                           000007   437 	ar7 = 0x07
                           000006   438 	ar6 = 0x06
                           000005   439 	ar5 = 0x05
                           000004   440 	ar4 = 0x04
                           000003   441 	ar3 = 0x03
                           000002   442 	ar2 = 0x02
                           000001   443 	ar1 = 0x01
                           000000   444 	ar0 = 0x00
                                    445 ;	./src/step/main.c:24: P2 = 0x00;
      00009A 75 A0 00         [24]  446 	mov	_P2,#0x00
                                    447 ;	./src/step/main.c:25: DU = 1;
                                    448 ;	assignBit
      00009D D2 86            [12]  449 	setb	_DU
                                    450 ;	./src/step/main.c:26: DU = 0;
                                    451 ;	assignBit
      00009F C2 86            [12]  452 	clr	_DU
                                    453 ;	./src/step/main.c:28: beats = (angle * 4096) / 360;
      0000A1 AE 11            [24]  454 	mov	r6,(_angle + 1)
      0000A3 E5 12            [12]  455 	mov	a,(_angle + 2)
      0000A5 C4               [12]  456 	swap	a
      0000A6 54 F0            [12]  457 	anl	a,#0xf0
      0000A8 CE               [12]  458 	xch	a,r6
      0000A9 C4               [12]  459 	swap	a
      0000AA CE               [12]  460 	xch	a,r6
      0000AB 6E               [12]  461 	xrl	a,r6
      0000AC CE               [12]  462 	xch	a,r6
      0000AD 54 F0            [12]  463 	anl	a,#0xf0
      0000AF CE               [12]  464 	xch	a,r6
      0000B0 6E               [12]  465 	xrl	a,r6
      0000B1 FF               [12]  466 	mov	r7,a
      0000B2 E5 10            [12]  467 	mov	a,_angle
      0000B4 C4               [12]  468 	swap	a
      0000B5 54 0F            [12]  469 	anl	a,#0x0f
      0000B7 4E               [12]  470 	orl	a,r6
      0000B8 FE               [12]  471 	mov	r6,a
      0000B9 E5 10            [12]  472 	mov	a,_angle
      0000BB C4               [12]  473 	swap	a
      0000BC 54 F0            [12]  474 	anl	a,#0xf0
      0000BE FD               [12]  475 	mov	r5,a
      0000BF 7C 00            [12]  476 	mov	r4,#0x00
      0000C1 75 19 68         [24]  477 	mov	__divulong_PARM_2,#0x68
      0000C4 75 1A 01         [24]  478 	mov	(__divulong_PARM_2 + 1),#0x01
      0000C7 E4               [12]  479 	clr	a
      0000C8 F5 1B            [12]  480 	mov	(__divulong_PARM_2 + 2),a
      0000CA F5 1C            [12]  481 	mov	(__divulong_PARM_2 + 3),a
      0000CC 8C 82            [24]  482 	mov	dpl,r4
      0000CE 8D 83            [24]  483 	mov	dph,r5
      0000D0 8E F0            [24]  484 	mov	b,r6
      0000D2 EF               [12]  485 	mov	a,r7
      0000D3 12 01 37         [24]  486 	lcall	__divulong
      0000D6 85 82 14         [24]  487 	mov	_beats,dpl
      0000D9 85 83 15         [24]  488 	mov	(_beats + 1),dph
      0000DC 85 F0 16         [24]  489 	mov	(_beats + 2),b
      0000DF F5 17            [12]  490 	mov	(_beats + 3),a
                                    491 ;	./src/step/main.c:30: TMOD = 0x01;
      0000E1 75 89 01         [24]  492 	mov	_TMOD,#0x01
                                    493 ;	./src/step/main.c:31: TL0 = T_2ms;
      0000E4 75 8A CD         [24]  494 	mov	_TL0,#0xcd
                                    495 ;	./src/step/main.c:32: TH0 = T_2ms >> 8;
      0000E7 75 8C F8         [24]  496 	mov	_TH0,#0xf8
                                    497 ;	./src/step/main.c:34: TR0 = 1;
                                    498 ;	assignBit
      0000EA D2 8C            [12]  499 	setb	_TR0
                                    500 ;	./src/step/main.c:35: ET0 = 1;
                                    501 ;	assignBit
      0000EC D2 A9            [12]  502 	setb	_ET0
                                    503 ;	./src/step/main.c:36: EA = 1;
                                    504 ;	assignBit
      0000EE D2 AF            [12]  505 	setb	_EA
                                    506 ;	./src/step/main.c:37: while (1)
      0000F0                        507 00102$:
                                    508 ;	./src/step/main.c:39: }
      0000F0 80 FE            [24]  509 	sjmp	00102$
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'timer0'
                                    512 ;------------------------------------------------------------
                                    513 ;index                     Allocated with name '_timer0_index_65536_2'
                                    514 ;------------------------------------------------------------
                                    515 ;	./src/step/main.c:41: void timer0() __interrupt(1)
                                    516 ;	-----------------------------------------
                                    517 ;	 function timer0
                                    518 ;	-----------------------------------------
      0000F2                        519 _timer0:
      0000F2 C0 E0            [24]  520 	push	acc
      0000F4 C0 01            [24]  521 	push	ar1
      0000F6 C0 D0            [24]  522 	push	psw
      0000F8 75 D0 00         [24]  523 	mov	psw,#0x00
                                    524 ;	./src/step/main.c:44: TL0 = T_2ms;
      0000FB 75 8A CD         [24]  525 	mov	_TL0,#0xcd
                                    526 ;	./src/step/main.c:45: TH0 = T_2ms >> 8;
      0000FE 75 8C F8         [24]  527 	mov	_TH0,#0xf8
                                    528 ;	./src/step/main.c:46: if (beats != 0)
      000101 E5 14            [12]  529 	mov	a,_beats
      000103 45 15            [12]  530 	orl	a,(_beats + 1)
      000105 45 16            [12]  531 	orl	a,(_beats + 2)
      000107 45 17            [12]  532 	orl	a,(_beats + 3)
      000109 60 25            [24]  533 	jz	00105$
                                    534 ;	./src/step/main.c:48: P2 = codeMotor[index];
      00010B E5 18            [12]  535 	mov	a,_timer0_index_65536_2
      00010D 24 08            [12]  536 	add	a,#_codeMotor
      00010F F9               [12]  537 	mov	r1,a
      000110 87 A0            [24]  538 	mov	_P2,@r1
                                    539 ;	./src/step/main.c:49: index++;
      000112 05 18            [12]  540 	inc	_timer0_index_65536_2
                                    541 ;	./src/step/main.c:50: if (index >= 8)
      000114 74 F8            [12]  542 	mov	a,#0x100 - 0x08
      000116 25 18            [12]  543 	add	a,_timer0_index_65536_2
      000118 50 03            [24]  544 	jnc	00102$
                                    545 ;	./src/step/main.c:52: index = 0;
      00011A 75 18 00         [24]  546 	mov	_timer0_index_65536_2,#0x00
      00011D                        547 00102$:
                                    548 ;	./src/step/main.c:54: beats --;
      00011D 15 14            [12]  549 	dec	_beats
      00011F 74 FF            [12]  550 	mov	a,#0xff
      000121 B5 14 0C         [24]  551 	cjne	a,_beats,00117$
      000124 15 15            [12]  552 	dec	(_beats + 1)
      000126 B5 15 07         [24]  553 	cjne	a,(_beats + 1),00117$
      000129 15 16            [12]  554 	dec	(_beats + 2)
      00012B B5 16 02         [24]  555 	cjne	a,(_beats + 2),00117$
      00012E 15 17            [12]  556 	dec	(_beats + 3)
      000130                        557 00117$:
      000130                        558 00105$:
                                    559 ;	./src/step/main.c:56: }
      000130 D0 D0            [24]  560 	pop	psw
      000132 D0 01            [24]  561 	pop	ar1
      000134 D0 E0            [24]  562 	pop	acc
      000136 32               [24]  563 	reti
                                    564 ;	eliminated unneeded push/pop ar0
                                    565 ;	eliminated unneeded push/pop dpl
                                    566 ;	eliminated unneeded push/pop dph
                                    567 ;	eliminated unneeded push/pop b
                                    568 	.area CSEG    (CODE)
                                    569 	.area CONST   (CODE)
                                    570 	.area XINIT   (CODE)
                                    571 	.area CABS    (ABS,CODE)
