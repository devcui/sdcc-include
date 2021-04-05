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
                                     11 	.globl _wait2
                                     12 	.globl _main
                                     13 	.globl _WaitRed
                                     14 	.globl _InitIR
                                     15 	.globl _Disp_1602_str
                                     16 	.globl _Init_1602
                                     17 	.globl _CP_RL2
                                     18 	.globl _C_T2
                                     19 	.globl _TR2
                                     20 	.globl _EXEN2
                                     21 	.globl _TCLK
                                     22 	.globl _RCLK
                                     23 	.globl _EXF2
                                     24 	.globl _TF2
                                     25 	.globl _T2
                                     26 	.globl _T2EX
                                     27 	.globl _RI
                                     28 	.globl _TI
                                     29 	.globl _RB8
                                     30 	.globl _TB8
                                     31 	.globl _REN
                                     32 	.globl _SM2
                                     33 	.globl _SM1
                                     34 	.globl _FE
                                     35 	.globl _SM0
                                     36 	.globl _RXD
                                     37 	.globl _TXD
                                     38 	.globl _INT0
                                     39 	.globl _INT1
                                     40 	.globl _T0
                                     41 	.globl _T1
                                     42 	.globl _WR
                                     43 	.globl _RD
                                     44 	.globl _PX0
                                     45 	.globl _PT0
                                     46 	.globl _PX1
                                     47 	.globl _PT1
                                     48 	.globl _PS
                                     49 	.globl _PT2
                                     50 	.globl _EX0
                                     51 	.globl _ET0
                                     52 	.globl _EX1
                                     53 	.globl _ET1
                                     54 	.globl _ES
                                     55 	.globl _ET2
                                     56 	.globl _EC
                                     57 	.globl _EA
                                     58 	.globl _IT0
                                     59 	.globl _IE0
                                     60 	.globl _IT1
                                     61 	.globl _IE1
                                     62 	.globl _TR0
                                     63 	.globl _TF0
                                     64 	.globl _TR1
                                     65 	.globl _TF1
                                     66 	.globl _P
                                     67 	.globl _OV
                                     68 	.globl _RS0
                                     69 	.globl _RS1
                                     70 	.globl _F0
                                     71 	.globl _AC
                                     72 	.globl _CY
                                     73 	.globl _P37
                                     74 	.globl _P36
                                     75 	.globl _P35
                                     76 	.globl _P34
                                     77 	.globl _P33
                                     78 	.globl _P32
                                     79 	.globl _P31
                                     80 	.globl _P30
                                     81 	.globl _P27
                                     82 	.globl _P26
                                     83 	.globl _P25
                                     84 	.globl _P24
                                     85 	.globl _P23
                                     86 	.globl _P22
                                     87 	.globl _P21
                                     88 	.globl _P20
                                     89 	.globl _P17
                                     90 	.globl _P16
                                     91 	.globl _P15
                                     92 	.globl _P14
                                     93 	.globl _P13
                                     94 	.globl _P12
                                     95 	.globl _P11
                                     96 	.globl _P10
                                     97 	.globl _P07
                                     98 	.globl _P06
                                     99 	.globl _P05
                                    100 	.globl _P04
                                    101 	.globl _P03
                                    102 	.globl _P02
                                    103 	.globl _P01
                                    104 	.globl _P00
                                    105 	.globl _P40
                                    106 	.globl _P41
                                    107 	.globl _P42
                                    108 	.globl _P43
                                    109 	.globl _P44
                                    110 	.globl _P45
                                    111 	.globl _P46
                                    112 	.globl _TH2
                                    113 	.globl _TL2
                                    114 	.globl _RCAP2H
                                    115 	.globl _RCAP2L
                                    116 	.globl _T2MOD
                                    117 	.globl _T2CON
                                    118 	.globl _SADEN
                                    119 	.globl _IPH
                                    120 	.globl _SADDR
                                    121 	.globl _AUXR1
                                    122 	.globl _AUXR
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _IP
                                    126 	.globl _IE
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _B
                                    138 	.globl _ACC
                                    139 	.globl _PSW
                                    140 	.globl _P3
                                    141 	.globl _P2
                                    142 	.globl _P1
                                    143 	.globl _P0
                                    144 	.globl _ISP_CONTR
                                    145 	.globl _ISP_TRIG
                                    146 	.globl _ISP_CMD
                                    147 	.globl _ISP_ADDRL
                                    148 	.globl _ISP_ADDRH
                                    149 	.globl _ISP_DATA
                                    150 	.globl _WDT_CONTR
                                    151 	.globl _XICON
                                    152 	.globl _P4
                                    153 	.globl _Key_Str
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
                                    300 ;--------------------------------------------------------
                                    301 ; overlayable register banks
                                    302 ;--------------------------------------------------------
                                    303 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        304 	.ds 8
                                    305 ;--------------------------------------------------------
                                    306 ; overlayable bit register bank
                                    307 ;--------------------------------------------------------
                                    308 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        309 bits:
      000020                        310 	.ds 1
                           008000   311 	b0 = bits[0]
                           008100   312 	b1 = bits[1]
                           008200   313 	b2 = bits[2]
                           008300   314 	b3 = bits[3]
                           008400   315 	b4 = bits[4]
                           008500   316 	b5 = bits[5]
                           008600   317 	b6 = bits[6]
                           008700   318 	b7 = bits[7]
                                    319 ;--------------------------------------------------------
                                    320 ; internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area DSEG    (DATA)
      000008                        323 _Key_Str::
      000008                        324 	.ds 3
                                    325 ;--------------------------------------------------------
                                    326 ; overlayable items in internal ram 
                                    327 ;--------------------------------------------------------
                                    328 ;--------------------------------------------------------
                                    329 ; Stack segment in internal ram 
                                    330 ;--------------------------------------------------------
                                    331 	.area	SSEG
      000021                        332 __start__stack:
      000021                        333 	.ds	1
                                    334 
                                    335 ;--------------------------------------------------------
                                    336 ; indirectly addressable internal ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area ISEG    (DATA)
                                    339 ;--------------------------------------------------------
                                    340 ; absolute internal ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area IABS    (ABS,DATA)
                                    343 	.area IABS    (ABS,DATA)
                                    344 ;--------------------------------------------------------
                                    345 ; bit data
                                    346 ;--------------------------------------------------------
                                    347 	.area BSEG    (BIT)
                                    348 ;--------------------------------------------------------
                                    349 ; paged external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area PSEG    (PAG,XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XSEG    (XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; absolute external ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XABS    (ABS,XDATA)
                                    360 ;--------------------------------------------------------
                                    361 ; external initialized ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area XISEG   (XDATA)
                                    364 	.area HOME    (CODE)
                                    365 	.area GSINIT0 (CODE)
                                    366 	.area GSINIT1 (CODE)
                                    367 	.area GSINIT2 (CODE)
                                    368 	.area GSINIT3 (CODE)
                                    369 	.area GSINIT4 (CODE)
                                    370 	.area GSINIT5 (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 	.area GSFINAL (CODE)
                                    373 	.area CSEG    (CODE)
                                    374 ;--------------------------------------------------------
                                    375 ; interrupt vector 
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
      000000                        378 __interrupt_vect:
      000000 02 00 19         [24]  379 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  380 	reti
      000004                        381 	.ds	7
      00000B 32               [24]  382 	reti
      00000C                        383 	.ds	7
      000013 02 02 51         [24]  384 	ljmp	_wait2
                                    385 ;--------------------------------------------------------
                                    386 ; global & static initialisations
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area GSINIT  (CODE)
                                    392 	.globl __sdcc_gsinit_startup
                                    393 	.globl __sdcc_program_startup
                                    394 	.globl __start__stack
                                    395 	.globl __mcs51_genXINIT
                                    396 	.globl __mcs51_genXRAMCLEAR
                                    397 	.globl __mcs51_genRAMCLEAR
                                    398 ;	./src/ir/main.c:16: unsigned char *Key_Str = 0;
      000072 E4               [12]  399 	clr	a
      000073 F5 08            [12]  400 	mov	_Key_Str,a
      000075 F5 09            [12]  401 	mov	(_Key_Str + 1),a
                                    402 ;	1-genFromRTrack replaced	mov	(_Key_Str + 2),#0x00
      000077 F5 0A            [12]  403 	mov	(_Key_Str + 2),a
                                    404 	.area GSFINAL (CODE)
      00007C 02 00 16         [24]  405 	ljmp	__sdcc_program_startup
                                    406 ;--------------------------------------------------------
                                    407 ; Home
                                    408 ;--------------------------------------------------------
                                    409 	.area HOME    (CODE)
                                    410 	.area HOME    (CODE)
      000016                        411 __sdcc_program_startup:
      000016 02 00 7F         [24]  412 	ljmp	_main
                                    413 ;	return from main will return to caller
                                    414 ;--------------------------------------------------------
                                    415 ; code
                                    416 ;--------------------------------------------------------
                                    417 	.area CSEG    (CODE)
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'main'
                                    420 ;------------------------------------------------------------
                                    421 ;Key                       Allocated to registers r7 
                                    422 ;------------------------------------------------------------
                                    423 ;	./src/ir/main.c:18: void main()
                                    424 ;	-----------------------------------------
                                    425 ;	 function main
                                    426 ;	-----------------------------------------
      00007F                        427 _main:
                           000007   428 	ar7 = 0x07
                           000006   429 	ar6 = 0x06
                           000005   430 	ar5 = 0x05
                           000004   431 	ar4 = 0x04
                           000003   432 	ar3 = 0x03
                           000002   433 	ar2 = 0x02
                           000001   434 	ar1 = 0x01
                           000000   435 	ar0 = 0x00
                                    436 ;	./src/ir/main.c:20: P10 = 1;
                                    437 ;	assignBit
      00007F D2 90            [12]  438 	setb	_P10
                                    439 ;	./src/ir/main.c:22: Init_1602();
      000081 12 02 D9         [24]  440 	lcall	_Init_1602
                                    441 ;	./src/ir/main.c:23: InitIR();
      000084 12 03 30         [24]  442 	lcall	_InitIR
                                    443 ;	./src/ir/main.c:24: Disp_1602_str(1, 2, "Nebula-Pi IR");
      000087 75 0C 5C         [24]  444 	mov	_Disp_1602_str_PARM_3,#___str_0
      00008A 75 0D 04         [24]  445 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_0 >> 8)
      00008D 75 0E 80         [24]  446 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      000090 75 0B 02         [24]  447 	mov	_Disp_1602_str_PARM_2,#0x02
      000093 75 82 01         [24]  448 	mov	dpl,#0x01
      000096 12 02 F1         [24]  449 	lcall	_Disp_1602_str
                                    450 ;	./src/ir/main.c:25: Disp_1602_str(2, 1, "KEY: ");
      000099 75 0C 69         [24]  451 	mov	_Disp_1602_str_PARM_3,#___str_1
      00009C 75 0D 04         [24]  452 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_1 >> 8)
      00009F 75 0E 80         [24]  453 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      0000A2 75 0B 01         [24]  454 	mov	_Disp_1602_str_PARM_2,#0x01
      0000A5 75 82 02         [24]  455 	mov	dpl,#0x02
      0000A8 12 02 F1         [24]  456 	lcall	_Disp_1602_str
                                    457 ;	./src/ir/main.c:26: while (1)
      0000AB                        458 00127$:
                                    459 ;	./src/ir/main.c:29: if (Flag_IR)
      0000AB E5 0F            [12]  460 	mov	a,_Flag_IR
      0000AD 60 FC            [24]  461 	jz	00127$
                                    462 ;	./src/ir/main.c:32: Flag_IR = 0;
      0000AF 75 0F 00         [24]  463 	mov	_Flag_IR,#0x00
                                    464 ;	./src/ir/main.c:35: Key = (unsigned char)(Data_IR >> 16);
      0000B2 AF 12            [24]  465 	mov	r7,(_Data_IR + 2)
                                    466 ;	./src/ir/main.c:36: switch (Key)
      0000B4 BF 07 03         [24]  467 	cjne	r7,#0x07,00224$
      0000B7 02 01 77         [24]  468 	ljmp	00107$
      0000BA                        469 00224$:
      0000BA BF 08 03         [24]  470 	cjne	r7,#0x08,00225$
      0000BD 02 01 DF         [24]  471 	ljmp	00116$
      0000C0                        472 00225$:
      0000C0 BF 09 03         [24]  473 	cjne	r7,#0x09,00226$
      0000C3 02 01 8F         [24]  474 	ljmp	00109$
      0000C6                        475 00226$:
      0000C6 BF 0C 03         [24]  476 	cjne	r7,#0x0c,00227$
      0000C9 02 01 BE         [24]  477 	ljmp	00113$
      0000CC                        478 00227$:
      0000CC BF 0D 03         [24]  479 	cjne	r7,#0x0d,00228$
      0000CF 02 01 B3         [24]  480 	ljmp	00112$
      0000D2                        481 00228$:
      0000D2 BF 15 03         [24]  482 	cjne	r7,#0x15,00229$
      0000D5 02 01 83         [24]  483 	ljmp	00108$
      0000D8                        484 00229$:
      0000D8 BF 16 03         [24]  485 	cjne	r7,#0x16,00230$
      0000DB 02 01 9B         [24]  486 	ljmp	00110$
      0000DE                        487 00230$:
      0000DE BF 18 03         [24]  488 	cjne	r7,#0x18,00231$
      0000E1 02 01 C9         [24]  489 	ljmp	00114$
      0000E4                        490 00231$:
      0000E4 BF 19 03         [24]  491 	cjne	r7,#0x19,00232$
      0000E7 02 01 A7         [24]  492 	ljmp	00111$
      0000EA                        493 00232$:
      0000EA BF 1C 03         [24]  494 	cjne	r7,#0x1c,00233$
      0000ED 02 01 EA         [24]  495 	ljmp	00117$
      0000F0                        496 00233$:
      0000F0 BF 40 02         [24]  497 	cjne	r7,#0x40,00234$
      0000F3 80 6A            [24]  498 	sjmp	00105$
      0000F5                        499 00234$:
      0000F5 BF 42 03         [24]  500 	cjne	r7,#0x42,00235$
      0000F8 02 02 00         [24]  501 	ljmp	00119$
      0000FB                        502 00235$:
      0000FB BF 43 02         [24]  503 	cjne	r7,#0x43,00236$
      0000FE 80 6B            [24]  504 	sjmp	00106$
      000100                        505 00236$:
      000100 BF 44 02         [24]  506 	cjne	r7,#0x44,00237$
      000103 80 4E            [24]  507 	sjmp	00104$
      000105                        508 00237$:
      000105 BF 45 02         [24]  509 	cjne	r7,#0x45,00238$
      000108 80 25            [24]  510 	sjmp	00101$
      00010A                        511 00238$:
      00010A BF 46 02         [24]  512 	cjne	r7,#0x46,00239$
      00010D 80 2C            [24]  513 	sjmp	00102$
      00010F                        514 00239$:
      00010F BF 47 02         [24]  515 	cjne	r7,#0x47,00240$
      000112 80 33            [24]  516 	sjmp	00103$
      000114                        517 00240$:
      000114 BF 4A 03         [24]  518 	cjne	r7,#0x4a,00241$
      000117 02 02 16         [24]  519 	ljmp	00121$
      00011A                        520 00241$:
      00011A BF 52 03         [24]  521 	cjne	r7,#0x52,00242$
      00011D 02 02 0B         [24]  522 	ljmp	00120$
      000120                        523 00242$:
      000120 BF 5A 03         [24]  524 	cjne	r7,#0x5a,00243$
      000123 02 01 F5         [24]  525 	ljmp	00118$
      000126                        526 00243$:
      000126 BF 5E 03         [24]  527 	cjne	r7,#0x5e,00244$
      000129 02 01 D4         [24]  528 	ljmp	00115$
      00012C                        529 00244$:
      00012C 02 02 21         [24]  530 	ljmp	00122$
                                    531 ;	./src/ir/main.c:38: case 69:
      00012F                        532 00101$:
                                    533 ;	./src/ir/main.c:39: Key_Str = "CH-";
      00012F 75 08 6F         [24]  534 	mov	_Key_Str,#___str_2
      000132 75 09 04         [24]  535 	mov	(_Key_Str + 1),#(___str_2 >> 8)
      000135 75 0A 80         [24]  536 	mov	(_Key_Str + 2),#0x80
                                    537 ;	./src/ir/main.c:40: break;
      000138 02 02 2A         [24]  538 	ljmp	00123$
                                    539 ;	./src/ir/main.c:41: case 70:
      00013B                        540 00102$:
                                    541 ;	./src/ir/main.c:42: Key_Str = "CH";
      00013B 75 08 73         [24]  542 	mov	_Key_Str,#___str_3
      00013E 75 09 04         [24]  543 	mov	(_Key_Str + 1),#(___str_3 >> 8)
      000141 75 0A 80         [24]  544 	mov	(_Key_Str + 2),#0x80
                                    545 ;	./src/ir/main.c:43: break;
      000144 02 02 2A         [24]  546 	ljmp	00123$
                                    547 ;	./src/ir/main.c:44: case 71:
      000147                        548 00103$:
                                    549 ;	./src/ir/main.c:45: Key_Str = "CH+";
      000147 75 08 76         [24]  550 	mov	_Key_Str,#___str_4
      00014A 75 09 04         [24]  551 	mov	(_Key_Str + 1),#(___str_4 >> 8)
      00014D 75 0A 80         [24]  552 	mov	(_Key_Str + 2),#0x80
                                    553 ;	./src/ir/main.c:46: break;
      000150 02 02 2A         [24]  554 	ljmp	00123$
                                    555 ;	./src/ir/main.c:47: case 68:
      000153                        556 00104$:
                                    557 ;	./src/ir/main.c:48: Key_Str = "PREV";
      000153 75 08 7A         [24]  558 	mov	_Key_Str,#___str_5
      000156 75 09 04         [24]  559 	mov	(_Key_Str + 1),#(___str_5 >> 8)
      000159 75 0A 80         [24]  560 	mov	(_Key_Str + 2),#0x80
                                    561 ;	./src/ir/main.c:49: break;
      00015C 02 02 2A         [24]  562 	ljmp	00123$
                                    563 ;	./src/ir/main.c:50: case 64:
      00015F                        564 00105$:
                                    565 ;	./src/ir/main.c:51: Key_Str = "NEXT";
      00015F 75 08 7F         [24]  566 	mov	_Key_Str,#___str_6
      000162 75 09 04         [24]  567 	mov	(_Key_Str + 1),#(___str_6 >> 8)
      000165 75 0A 80         [24]  568 	mov	(_Key_Str + 2),#0x80
                                    569 ;	./src/ir/main.c:52: break;
      000168 02 02 2A         [24]  570 	ljmp	00123$
                                    571 ;	./src/ir/main.c:53: case 67:
      00016B                        572 00106$:
                                    573 ;	./src/ir/main.c:54: Key_Str = "PLAY/PAUSE";
      00016B 75 08 84         [24]  574 	mov	_Key_Str,#___str_7
      00016E 75 09 04         [24]  575 	mov	(_Key_Str + 1),#(___str_7 >> 8)
      000171 75 0A 80         [24]  576 	mov	(_Key_Str + 2),#0x80
                                    577 ;	./src/ir/main.c:55: break;
      000174 02 02 2A         [24]  578 	ljmp	00123$
                                    579 ;	./src/ir/main.c:56: case 7:
      000177                        580 00107$:
                                    581 ;	./src/ir/main.c:57: Key_Str = "-";
      000177 75 08 8F         [24]  582 	mov	_Key_Str,#___str_8
      00017A 75 09 04         [24]  583 	mov	(_Key_Str + 1),#(___str_8 >> 8)
      00017D 75 0A 80         [24]  584 	mov	(_Key_Str + 2),#0x80
                                    585 ;	./src/ir/main.c:58: break;
      000180 02 02 2A         [24]  586 	ljmp	00123$
                                    587 ;	./src/ir/main.c:59: case 21:
      000183                        588 00108$:
                                    589 ;	./src/ir/main.c:60: Key_Str = "+";
      000183 75 08 91         [24]  590 	mov	_Key_Str,#___str_9
      000186 75 09 04         [24]  591 	mov	(_Key_Str + 1),#(___str_9 >> 8)
      000189 75 0A 80         [24]  592 	mov	(_Key_Str + 2),#0x80
                                    593 ;	./src/ir/main.c:61: break;
      00018C 02 02 2A         [24]  594 	ljmp	00123$
                                    595 ;	./src/ir/main.c:62: case 9:
      00018F                        596 00109$:
                                    597 ;	./src/ir/main.c:63: Key_Str = "EQ";
      00018F 75 08 93         [24]  598 	mov	_Key_Str,#___str_10
      000192 75 09 04         [24]  599 	mov	(_Key_Str + 1),#(___str_10 >> 8)
      000195 75 0A 80         [24]  600 	mov	(_Key_Str + 2),#0x80
                                    601 ;	./src/ir/main.c:64: break;
      000198 02 02 2A         [24]  602 	ljmp	00123$
                                    603 ;	./src/ir/main.c:65: case 22:
      00019B                        604 00110$:
                                    605 ;	./src/ir/main.c:66: Key_Str = "0";
      00019B 75 08 96         [24]  606 	mov	_Key_Str,#___str_11
      00019E 75 09 04         [24]  607 	mov	(_Key_Str + 1),#(___str_11 >> 8)
      0001A1 75 0A 80         [24]  608 	mov	(_Key_Str + 2),#0x80
                                    609 ;	./src/ir/main.c:67: break;
      0001A4 02 02 2A         [24]  610 	ljmp	00123$
                                    611 ;	./src/ir/main.c:68: case 25:
      0001A7                        612 00111$:
                                    613 ;	./src/ir/main.c:69: Key_Str = "100+";
      0001A7 75 08 98         [24]  614 	mov	_Key_Str,#___str_12
      0001AA 75 09 04         [24]  615 	mov	(_Key_Str + 1),#(___str_12 >> 8)
      0001AD 75 0A 80         [24]  616 	mov	(_Key_Str + 2),#0x80
                                    617 ;	./src/ir/main.c:70: break;
      0001B0 02 02 2A         [24]  618 	ljmp	00123$
                                    619 ;	./src/ir/main.c:71: case 13:
      0001B3                        620 00112$:
                                    621 ;	./src/ir/main.c:72: Key_Str = "200+";
      0001B3 75 08 9D         [24]  622 	mov	_Key_Str,#___str_13
      0001B6 75 09 04         [24]  623 	mov	(_Key_Str + 1),#(___str_13 >> 8)
      0001B9 75 0A 80         [24]  624 	mov	(_Key_Str + 2),#0x80
                                    625 ;	./src/ir/main.c:73: break;
                                    626 ;	./src/ir/main.c:74: case 12:
      0001BC 80 6C            [24]  627 	sjmp	00123$
      0001BE                        628 00113$:
                                    629 ;	./src/ir/main.c:75: Key_Str = "1";
      0001BE 75 08 A2         [24]  630 	mov	_Key_Str,#___str_14
      0001C1 75 09 04         [24]  631 	mov	(_Key_Str + 1),#(___str_14 >> 8)
      0001C4 75 0A 80         [24]  632 	mov	(_Key_Str + 2),#0x80
                                    633 ;	./src/ir/main.c:76: break;
                                    634 ;	./src/ir/main.c:77: case 24:
      0001C7 80 61            [24]  635 	sjmp	00123$
      0001C9                        636 00114$:
                                    637 ;	./src/ir/main.c:78: Key_Str = "2";
      0001C9 75 08 A4         [24]  638 	mov	_Key_Str,#___str_15
      0001CC 75 09 04         [24]  639 	mov	(_Key_Str + 1),#(___str_15 >> 8)
      0001CF 75 0A 80         [24]  640 	mov	(_Key_Str + 2),#0x80
                                    641 ;	./src/ir/main.c:79: break;
                                    642 ;	./src/ir/main.c:80: case 94:
      0001D2 80 56            [24]  643 	sjmp	00123$
      0001D4                        644 00115$:
                                    645 ;	./src/ir/main.c:81: Key_Str = "3";
      0001D4 75 08 A6         [24]  646 	mov	_Key_Str,#___str_16
      0001D7 75 09 04         [24]  647 	mov	(_Key_Str + 1),#(___str_16 >> 8)
      0001DA 75 0A 80         [24]  648 	mov	(_Key_Str + 2),#0x80
                                    649 ;	./src/ir/main.c:82: break;
                                    650 ;	./src/ir/main.c:83: case 8:
      0001DD 80 4B            [24]  651 	sjmp	00123$
      0001DF                        652 00116$:
                                    653 ;	./src/ir/main.c:84: Key_Str = "4";
      0001DF 75 08 A8         [24]  654 	mov	_Key_Str,#___str_17
      0001E2 75 09 04         [24]  655 	mov	(_Key_Str + 1),#(___str_17 >> 8)
      0001E5 75 0A 80         [24]  656 	mov	(_Key_Str + 2),#0x80
                                    657 ;	./src/ir/main.c:85: break;
                                    658 ;	./src/ir/main.c:86: case 28:
      0001E8 80 40            [24]  659 	sjmp	00123$
      0001EA                        660 00117$:
                                    661 ;	./src/ir/main.c:87: Key_Str = "5";
      0001EA 75 08 AA         [24]  662 	mov	_Key_Str,#___str_18
      0001ED 75 09 04         [24]  663 	mov	(_Key_Str + 1),#(___str_18 >> 8)
      0001F0 75 0A 80         [24]  664 	mov	(_Key_Str + 2),#0x80
                                    665 ;	./src/ir/main.c:88: break;
                                    666 ;	./src/ir/main.c:89: case 90:
      0001F3 80 35            [24]  667 	sjmp	00123$
      0001F5                        668 00118$:
                                    669 ;	./src/ir/main.c:90: Key_Str = "6";
      0001F5 75 08 AC         [24]  670 	mov	_Key_Str,#___str_19
      0001F8 75 09 04         [24]  671 	mov	(_Key_Str + 1),#(___str_19 >> 8)
      0001FB 75 0A 80         [24]  672 	mov	(_Key_Str + 2),#0x80
                                    673 ;	./src/ir/main.c:91: break;
                                    674 ;	./src/ir/main.c:92: case 66:
      0001FE 80 2A            [24]  675 	sjmp	00123$
      000200                        676 00119$:
                                    677 ;	./src/ir/main.c:93: Key_Str = "7";
      000200 75 08 AE         [24]  678 	mov	_Key_Str,#___str_20
      000203 75 09 04         [24]  679 	mov	(_Key_Str + 1),#(___str_20 >> 8)
      000206 75 0A 80         [24]  680 	mov	(_Key_Str + 2),#0x80
                                    681 ;	./src/ir/main.c:94: break;
                                    682 ;	./src/ir/main.c:95: case 82:
      000209 80 1F            [24]  683 	sjmp	00123$
      00020B                        684 00120$:
                                    685 ;	./src/ir/main.c:96: Key_Str = "8";
      00020B 75 08 B0         [24]  686 	mov	_Key_Str,#___str_21
      00020E 75 09 04         [24]  687 	mov	(_Key_Str + 1),#(___str_21 >> 8)
      000211 75 0A 80         [24]  688 	mov	(_Key_Str + 2),#0x80
                                    689 ;	./src/ir/main.c:97: break;
                                    690 ;	./src/ir/main.c:98: case 74:
      000214 80 14            [24]  691 	sjmp	00123$
      000216                        692 00121$:
                                    693 ;	./src/ir/main.c:99: Key_Str = "9";
      000216 75 08 B2         [24]  694 	mov	_Key_Str,#___str_22
      000219 75 09 04         [24]  695 	mov	(_Key_Str + 1),#(___str_22 >> 8)
      00021C 75 0A 80         [24]  696 	mov	(_Key_Str + 2),#0x80
                                    697 ;	./src/ir/main.c:100: break;
                                    698 ;	./src/ir/main.c:101: default:
      00021F 80 09            [24]  699 	sjmp	00123$
      000221                        700 00122$:
                                    701 ;	./src/ir/main.c:102: Key_Str = "error!";
      000221 75 08 B4         [24]  702 	mov	_Key_Str,#___str_23
      000224 75 09 04         [24]  703 	mov	(_Key_Str + 1),#(___str_23 >> 8)
      000227 75 0A 80         [24]  704 	mov	(_Key_Str + 2),#0x80
                                    705 ;	./src/ir/main.c:103: }
      00022A                        706 00123$:
                                    707 ;	./src/ir/main.c:104: Disp_1602_str(2,5,"             ");
      00022A 75 0C BB         [24]  708 	mov	_Disp_1602_str_PARM_3,#___str_24
      00022D 75 0D 04         [24]  709 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_24 >> 8)
      000230 75 0E 80         [24]  710 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      000233 75 0B 05         [24]  711 	mov	_Disp_1602_str_PARM_2,#0x05
      000236 75 82 02         [24]  712 	mov	dpl,#0x02
      000239 12 02 F1         [24]  713 	lcall	_Disp_1602_str
                                    714 ;	./src/ir/main.c:105: Disp_1602_str(2, 5, Key_Str);
      00023C 75 0B 05         [24]  715 	mov	_Disp_1602_str_PARM_2,#0x05
      00023F 85 08 0C         [24]  716 	mov	_Disp_1602_str_PARM_3,_Key_Str
      000242 85 09 0D         [24]  717 	mov	(_Disp_1602_str_PARM_3 + 1),(_Key_Str + 1)
      000245 85 0A 0E         [24]  718 	mov	(_Disp_1602_str_PARM_3 + 2),(_Key_Str + 2)
      000248 75 82 02         [24]  719 	mov	dpl,#0x02
      00024B 12 02 F1         [24]  720 	lcall	_Disp_1602_str
                                    721 ;	./src/ir/main.c:108: }
      00024E 02 00 AB         [24]  722 	ljmp	00127$
                                    723 ;------------------------------------------------------------
                                    724 ;Allocation info for local variables in function 'wait2'
                                    725 ;------------------------------------------------------------
                                    726 ;	./src/ir/main.c:110: void wait2() __interrupt(2)
                                    727 ;	-----------------------------------------
                                    728 ;	 function wait2
                                    729 ;	-----------------------------------------
      000251                        730 _wait2:
      000251 C0 20            [24]  731 	push	bits
      000253 C0 E0            [24]  732 	push	acc
      000255 C0 F0            [24]  733 	push	b
      000257 C0 82            [24]  734 	push	dpl
      000259 C0 83            [24]  735 	push	dph
      00025B C0 07            [24]  736 	push	(0+7)
      00025D C0 06            [24]  737 	push	(0+6)
      00025F C0 05            [24]  738 	push	(0+5)
      000261 C0 04            [24]  739 	push	(0+4)
      000263 C0 03            [24]  740 	push	(0+3)
      000265 C0 02            [24]  741 	push	(0+2)
      000267 C0 01            [24]  742 	push	(0+1)
      000269 C0 00            [24]  743 	push	(0+0)
      00026B C0 D0            [24]  744 	push	psw
      00026D 75 D0 00         [24]  745 	mov	psw,#0x00
                                    746 ;	./src/ir/main.c:112: if (P10 == 0)
      000270 20 90 04         [24]  747 	jb	_P10,00102$
                                    748 ;	./src/ir/main.c:114: P10 = 1;
                                    749 ;	assignBit
      000273 D2 90            [12]  750 	setb	_P10
      000275 80 02            [24]  751 	sjmp	00103$
      000277                        752 00102$:
                                    753 ;	./src/ir/main.c:118: P10 = 0;
                                    754 ;	assignBit
      000277 C2 90            [12]  755 	clr	_P10
      000279                        756 00103$:
                                    757 ;	./src/ir/main.c:120: WaitRed();
      000279 12 03 7B         [24]  758 	lcall	_WaitRed
                                    759 ;	./src/ir/main.c:121: }
      00027C D0 D0            [24]  760 	pop	psw
      00027E D0 00            [24]  761 	pop	(0+0)
      000280 D0 01            [24]  762 	pop	(0+1)
      000282 D0 02            [24]  763 	pop	(0+2)
      000284 D0 03            [24]  764 	pop	(0+3)
      000286 D0 04            [24]  765 	pop	(0+4)
      000288 D0 05            [24]  766 	pop	(0+5)
      00028A D0 06            [24]  767 	pop	(0+6)
      00028C D0 07            [24]  768 	pop	(0+7)
      00028E D0 83            [24]  769 	pop	dph
      000290 D0 82            [24]  770 	pop	dpl
      000292 D0 F0            [24]  771 	pop	b
      000294 D0 E0            [24]  772 	pop	acc
      000296 D0 20            [24]  773 	pop	bits
      000298 32               [24]  774 	reti
                                    775 	.area CSEG    (CODE)
                                    776 	.area CONST   (CODE)
                                    777 	.area CONST   (CODE)
      00045C                        778 ___str_0:
      00045C 4E 65 62 75 6C 61 2D   779 	.ascii "Nebula-Pi IR"
             50 69 20 49 52
      000468 00                     780 	.db 0x00
                                    781 	.area CSEG    (CODE)
                                    782 	.area CONST   (CODE)
      000469                        783 ___str_1:
      000469 4B 45 59 3A 20         784 	.ascii "KEY: "
      00046E 00                     785 	.db 0x00
                                    786 	.area CSEG    (CODE)
                                    787 	.area CONST   (CODE)
      00046F                        788 ___str_2:
      00046F 43 48 2D               789 	.ascii "CH-"
      000472 00                     790 	.db 0x00
                                    791 	.area CSEG    (CODE)
                                    792 	.area CONST   (CODE)
      000473                        793 ___str_3:
      000473 43 48                  794 	.ascii "CH"
      000475 00                     795 	.db 0x00
                                    796 	.area CSEG    (CODE)
                                    797 	.area CONST   (CODE)
      000476                        798 ___str_4:
      000476 43 48 2B               799 	.ascii "CH+"
      000479 00                     800 	.db 0x00
                                    801 	.area CSEG    (CODE)
                                    802 	.area CONST   (CODE)
      00047A                        803 ___str_5:
      00047A 50 52 45 56            804 	.ascii "PREV"
      00047E 00                     805 	.db 0x00
                                    806 	.area CSEG    (CODE)
                                    807 	.area CONST   (CODE)
      00047F                        808 ___str_6:
      00047F 4E 45 58 54            809 	.ascii "NEXT"
      000483 00                     810 	.db 0x00
                                    811 	.area CSEG    (CODE)
                                    812 	.area CONST   (CODE)
      000484                        813 ___str_7:
      000484 50 4C 41 59 2F 50 41   814 	.ascii "PLAY/PAUSE"
             55 53 45
      00048E 00                     815 	.db 0x00
                                    816 	.area CSEG    (CODE)
                                    817 	.area CONST   (CODE)
      00048F                        818 ___str_8:
      00048F 2D                     819 	.ascii "-"
      000490 00                     820 	.db 0x00
                                    821 	.area CSEG    (CODE)
                                    822 	.area CONST   (CODE)
      000491                        823 ___str_9:
      000491 2B                     824 	.ascii "+"
      000492 00                     825 	.db 0x00
                                    826 	.area CSEG    (CODE)
                                    827 	.area CONST   (CODE)
      000493                        828 ___str_10:
      000493 45 51                  829 	.ascii "EQ"
      000495 00                     830 	.db 0x00
                                    831 	.area CSEG    (CODE)
                                    832 	.area CONST   (CODE)
      000496                        833 ___str_11:
      000496 30                     834 	.ascii "0"
      000497 00                     835 	.db 0x00
                                    836 	.area CSEG    (CODE)
                                    837 	.area CONST   (CODE)
      000498                        838 ___str_12:
      000498 31 30 30 2B            839 	.ascii "100+"
      00049C 00                     840 	.db 0x00
                                    841 	.area CSEG    (CODE)
                                    842 	.area CONST   (CODE)
      00049D                        843 ___str_13:
      00049D 32 30 30 2B            844 	.ascii "200+"
      0004A1 00                     845 	.db 0x00
                                    846 	.area CSEG    (CODE)
                                    847 	.area CONST   (CODE)
      0004A2                        848 ___str_14:
      0004A2 31                     849 	.ascii "1"
      0004A3 00                     850 	.db 0x00
                                    851 	.area CSEG    (CODE)
                                    852 	.area CONST   (CODE)
      0004A4                        853 ___str_15:
      0004A4 32                     854 	.ascii "2"
      0004A5 00                     855 	.db 0x00
                                    856 	.area CSEG    (CODE)
                                    857 	.area CONST   (CODE)
      0004A6                        858 ___str_16:
      0004A6 33                     859 	.ascii "3"
      0004A7 00                     860 	.db 0x00
                                    861 	.area CSEG    (CODE)
                                    862 	.area CONST   (CODE)
      0004A8                        863 ___str_17:
      0004A8 34                     864 	.ascii "4"
      0004A9 00                     865 	.db 0x00
                                    866 	.area CSEG    (CODE)
                                    867 	.area CONST   (CODE)
      0004AA                        868 ___str_18:
      0004AA 35                     869 	.ascii "5"
      0004AB 00                     870 	.db 0x00
                                    871 	.area CSEG    (CODE)
                                    872 	.area CONST   (CODE)
      0004AC                        873 ___str_19:
      0004AC 36                     874 	.ascii "6"
      0004AD 00                     875 	.db 0x00
                                    876 	.area CSEG    (CODE)
                                    877 	.area CONST   (CODE)
      0004AE                        878 ___str_20:
      0004AE 37                     879 	.ascii "7"
      0004AF 00                     880 	.db 0x00
                                    881 	.area CSEG    (CODE)
                                    882 	.area CONST   (CODE)
      0004B0                        883 ___str_21:
      0004B0 38                     884 	.ascii "8"
      0004B1 00                     885 	.db 0x00
                                    886 	.area CSEG    (CODE)
                                    887 	.area CONST   (CODE)
      0004B2                        888 ___str_22:
      0004B2 39                     889 	.ascii "9"
      0004B3 00                     890 	.db 0x00
                                    891 	.area CSEG    (CODE)
                                    892 	.area CONST   (CODE)
      0004B4                        893 ___str_23:
      0004B4 65 72 72 6F 72 21      894 	.ascii "error!"
      0004BA 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
      0004BB                        898 ___str_24:
      0004BB 20 20 20 20 20 20 20   899 	.ascii "             "
             20 20 20 20 20 20
      0004C8 00                     900 	.db 0x00
                                    901 	.area CSEG    (CODE)
                                    902 	.area XINIT   (CODE)
                                    903 	.area CABS    (ABS,CODE)
