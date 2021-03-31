                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module temperature
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0
                                     12 	.globl _main
                                     13 	.globl _GetT_18B20
                                     14 	.globl _Disp_1602_str
                                     15 	.globl _Init_1602
                                     16 	.globl _CP_RL2
                                     17 	.globl _C_T2
                                     18 	.globl _TR2
                                     19 	.globl _EXEN2
                                     20 	.globl _TCLK
                                     21 	.globl _RCLK
                                     22 	.globl _EXF2
                                     23 	.globl _TF2
                                     24 	.globl _T2
                                     25 	.globl _T2EX
                                     26 	.globl _RI
                                     27 	.globl _TI
                                     28 	.globl _RB8
                                     29 	.globl _TB8
                                     30 	.globl _REN
                                     31 	.globl _SM2
                                     32 	.globl _SM1
                                     33 	.globl _FE
                                     34 	.globl _SM0
                                     35 	.globl _RXD
                                     36 	.globl _TXD
                                     37 	.globl _INT0
                                     38 	.globl _INT1
                                     39 	.globl _T0
                                     40 	.globl _T1
                                     41 	.globl _WR
                                     42 	.globl _RD
                                     43 	.globl _PX0
                                     44 	.globl _PT0
                                     45 	.globl _PX1
                                     46 	.globl _PT1
                                     47 	.globl _PS
                                     48 	.globl _PT2
                                     49 	.globl _EX0
                                     50 	.globl _ET0
                                     51 	.globl _EX1
                                     52 	.globl _ET1
                                     53 	.globl _ES
                                     54 	.globl _ET2
                                     55 	.globl _EC
                                     56 	.globl _EA
                                     57 	.globl _IT0
                                     58 	.globl _IE0
                                     59 	.globl _IT1
                                     60 	.globl _IE1
                                     61 	.globl _TR0
                                     62 	.globl _TF0
                                     63 	.globl _TR1
                                     64 	.globl _TF1
                                     65 	.globl _P
                                     66 	.globl _OV
                                     67 	.globl _RS0
                                     68 	.globl _RS1
                                     69 	.globl _F0
                                     70 	.globl _AC
                                     71 	.globl _CY
                                     72 	.globl _P37
                                     73 	.globl _P36
                                     74 	.globl _P35
                                     75 	.globl _P34
                                     76 	.globl _P33
                                     77 	.globl _P32
                                     78 	.globl _P31
                                     79 	.globl _P30
                                     80 	.globl _P27
                                     81 	.globl _P26
                                     82 	.globl _P25
                                     83 	.globl _P24
                                     84 	.globl _P23
                                     85 	.globl _P22
                                     86 	.globl _P21
                                     87 	.globl _P20
                                     88 	.globl _P17
                                     89 	.globl _P16
                                     90 	.globl _P15
                                     91 	.globl _P14
                                     92 	.globl _P13
                                     93 	.globl _P12
                                     94 	.globl _P11
                                     95 	.globl _P10
                                     96 	.globl _P07
                                     97 	.globl _P06
                                     98 	.globl _P05
                                     99 	.globl _P04
                                    100 	.globl _P03
                                    101 	.globl _P02
                                    102 	.globl _P01
                                    103 	.globl _P00
                                    104 	.globl _P40
                                    105 	.globl _P41
                                    106 	.globl _P42
                                    107 	.globl _P43
                                    108 	.globl _P44
                                    109 	.globl _P45
                                    110 	.globl _P46
                                    111 	.globl _TH2
                                    112 	.globl _TL2
                                    113 	.globl _RCAP2H
                                    114 	.globl _RCAP2L
                                    115 	.globl _T2MOD
                                    116 	.globl _T2CON
                                    117 	.globl _SADEN
                                    118 	.globl _IPH
                                    119 	.globl _SADDR
                                    120 	.globl _AUXR1
                                    121 	.globl _AUXR
                                    122 	.globl _SBUF
                                    123 	.globl _SCON
                                    124 	.globl _IP
                                    125 	.globl _IE
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _B
                                    137 	.globl _ACC
                                    138 	.globl _PSW
                                    139 	.globl _P3
                                    140 	.globl _P2
                                    141 	.globl _P1
                                    142 	.globl _P0
                                    143 	.globl _ISP_CONTR
                                    144 	.globl _ISP_TRIG
                                    145 	.globl _ISP_CMD
                                    146 	.globl _ISP_ADDRL
                                    147 	.globl _ISP_ADDRH
                                    148 	.globl _ISP_DATA
                                    149 	.globl _WDT_CONTR
                                    150 	.globl _XICON
                                    151 	.globl _P4
                                    152 	.globl _count
                                    153 	.globl _str
                                    154 	.globl _Temp
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           0000E8   160 _P4	=	0x00e8
                           0000C0   161 _XICON	=	0x00c0
                           0000E1   162 _WDT_CONTR	=	0x00e1
                           0000E2   163 _ISP_DATA	=	0x00e2
                           0000E3   164 _ISP_ADDRH	=	0x00e3
                           0000E4   165 _ISP_ADDRL	=	0x00e4
                           0000E5   166 _ISP_CMD	=	0x00e5
                           0000E6   167 _ISP_TRIG	=	0x00e6
                           0000E7   168 _ISP_CONTR	=	0x00e7
                           000080   169 _P0	=	0x0080
                           000090   170 _P1	=	0x0090
                           0000A0   171 _P2	=	0x00a0
                           0000B0   172 _P3	=	0x00b0
                           0000D0   173 _PSW	=	0x00d0
                           0000E0   174 _ACC	=	0x00e0
                           0000F0   175 _B	=	0x00f0
                           000081   176 _SP	=	0x0081
                           000082   177 _DPL	=	0x0082
                           000083   178 _DPH	=	0x0083
                           000087   179 _PCON	=	0x0087
                           000088   180 _TCON	=	0x0088
                           000089   181 _TMOD	=	0x0089
                           00008A   182 _TL0	=	0x008a
                           00008B   183 _TL1	=	0x008b
                           00008C   184 _TH0	=	0x008c
                           00008D   185 _TH1	=	0x008d
                           0000A8   186 _IE	=	0x00a8
                           0000B8   187 _IP	=	0x00b8
                           000098   188 _SCON	=	0x0098
                           000099   189 _SBUF	=	0x0099
                           00008E   190 _AUXR	=	0x008e
                           0000A2   191 _AUXR1	=	0x00a2
                           0000A9   192 _SADDR	=	0x00a9
                           0000B7   193 _IPH	=	0x00b7
                           0000B9   194 _SADEN	=	0x00b9
                           0000C8   195 _T2CON	=	0x00c8
                           0000C9   196 _T2MOD	=	0x00c9
                           0000CA   197 _RCAP2L	=	0x00ca
                           0000CB   198 _RCAP2H	=	0x00cb
                           0000CC   199 _TL2	=	0x00cc
                           0000CD   200 _TH2	=	0x00cd
                                    201 ;--------------------------------------------------------
                                    202 ; special function bits
                                    203 ;--------------------------------------------------------
                                    204 	.area RSEG    (ABS,DATA)
      000000                        205 	.org 0x0000
                           0000EE   206 _P46	=	0x00ee
                           0000ED   207 _P45	=	0x00ed
                           0000EC   208 _P44	=	0x00ec
                           0000EB   209 _P43	=	0x00eb
                           0000EA   210 _P42	=	0x00ea
                           0000E9   211 _P41	=	0x00e9
                           0000E8   212 _P40	=	0x00e8
                           000080   213 _P00	=	0x0080
                           000081   214 _P01	=	0x0081
                           000082   215 _P02	=	0x0082
                           000083   216 _P03	=	0x0083
                           000084   217 _P04	=	0x0084
                           000085   218 _P05	=	0x0085
                           000086   219 _P06	=	0x0086
                           000087   220 _P07	=	0x0087
                           000090   221 _P10	=	0x0090
                           000091   222 _P11	=	0x0091
                           000092   223 _P12	=	0x0092
                           000093   224 _P13	=	0x0093
                           000094   225 _P14	=	0x0094
                           000095   226 _P15	=	0x0095
                           000096   227 _P16	=	0x0096
                           000097   228 _P17	=	0x0097
                           0000A0   229 _P20	=	0x00a0
                           0000A1   230 _P21	=	0x00a1
                           0000A2   231 _P22	=	0x00a2
                           0000A3   232 _P23	=	0x00a3
                           0000A4   233 _P24	=	0x00a4
                           0000A5   234 _P25	=	0x00a5
                           0000A6   235 _P26	=	0x00a6
                           0000A7   236 _P27	=	0x00a7
                           0000B0   237 _P30	=	0x00b0
                           0000B1   238 _P31	=	0x00b1
                           0000B2   239 _P32	=	0x00b2
                           0000B3   240 _P33	=	0x00b3
                           0000B4   241 _P34	=	0x00b4
                           0000B5   242 _P35	=	0x00b5
                           0000B6   243 _P36	=	0x00b6
                           0000B7   244 _P37	=	0x00b7
                           0000D7   245 _CY	=	0x00d7
                           0000D6   246 _AC	=	0x00d6
                           0000D5   247 _F0	=	0x00d5
                           0000D4   248 _RS1	=	0x00d4
                           0000D3   249 _RS0	=	0x00d3
                           0000D2   250 _OV	=	0x00d2
                           0000D0   251 _P	=	0x00d0
                           00008F   252 _TF1	=	0x008f
                           00008E   253 _TR1	=	0x008e
                           00008D   254 _TF0	=	0x008d
                           00008C   255 _TR0	=	0x008c
                           00008B   256 _IE1	=	0x008b
                           00008A   257 _IT1	=	0x008a
                           000089   258 _IE0	=	0x0089
                           000088   259 _IT0	=	0x0088
                           0000AF   260 _EA	=	0x00af
                           0000AE   261 _EC	=	0x00ae
                           0000AD   262 _ET2	=	0x00ad
                           0000AC   263 _ES	=	0x00ac
                           0000AB   264 _ET1	=	0x00ab
                           0000AA   265 _EX1	=	0x00aa
                           0000A9   266 _ET0	=	0x00a9
                           0000A8   267 _EX0	=	0x00a8
                           0000BD   268 _PT2	=	0x00bd
                           0000BC   269 _PS	=	0x00bc
                           0000BB   270 _PT1	=	0x00bb
                           0000BA   271 _PX1	=	0x00ba
                           0000B9   272 _PT0	=	0x00b9
                           0000B8   273 _PX0	=	0x00b8
                           0000B7   274 _RD	=	0x00b7
                           0000B6   275 _WR	=	0x00b6
                           0000B5   276 _T1	=	0x00b5
                           0000B4   277 _T0	=	0x00b4
                           0000B3   278 _INT1	=	0x00b3
                           0000B2   279 _INT0	=	0x00b2
                           0000B1   280 _TXD	=	0x00b1
                           0000B0   281 _RXD	=	0x00b0
                           00009F   282 _SM0	=	0x009f
                           00009F   283 _FE	=	0x009f
                           00009E   284 _SM1	=	0x009e
                           00009D   285 _SM2	=	0x009d
                           00009C   286 _REN	=	0x009c
                           00009B   287 _TB8	=	0x009b
                           00009A   288 _RB8	=	0x009a
                           000099   289 _TI	=	0x0099
                           000098   290 _RI	=	0x0098
                           000091   291 _T2EX	=	0x0091
                           000090   292 _T2	=	0x0090
                           0000CF   293 _TF2	=	0x00cf
                           0000CE   294 _EXF2	=	0x00ce
                           0000CD   295 _RCLK	=	0x00cd
                           0000CC   296 _TCLK	=	0x00cc
                           0000CB   297 _EXEN2	=	0x00cb
                           0000CA   298 _TR2	=	0x00ca
                           0000C9   299 _C_T2	=	0x00c9
                           0000C8   300 _CP_RL2	=	0x00c8
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable register banks
                                    303 ;--------------------------------------------------------
                                    304 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        305 	.ds 8
                                    306 ;--------------------------------------------------------
                                    307 ; internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area DSEG    (DATA)
      00000D                        310 _Temp::
      00000D                        311 	.ds 2
      00000F                        312 _str::
      00000F                        313 	.ds 10
      000019                        314 _count::
      000019                        315 	.ds 2
                                    316 ;--------------------------------------------------------
                                    317 ; overlayable items in internal ram 
                                    318 ;--------------------------------------------------------
                                    319 ;--------------------------------------------------------
                                    320 ; Stack segment in internal ram 
                                    321 ;--------------------------------------------------------
                                    322 	.area	SSEG
      00001D                        323 __start__stack:
      00001D                        324 	.ds	1
                                    325 
                                    326 ;--------------------------------------------------------
                                    327 ; indirectly addressable internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area ISEG    (DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; absolute internal ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area IABS    (ABS,DATA)
                                    334 	.area IABS    (ABS,DATA)
                                    335 ;--------------------------------------------------------
                                    336 ; bit data
                                    337 ;--------------------------------------------------------
                                    338 	.area BSEG    (BIT)
                                    339 ;--------------------------------------------------------
                                    340 ; paged external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area PSEG    (PAG,XDATA)
                                    343 ;--------------------------------------------------------
                                    344 ; external ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XSEG    (XDATA)
                                    347 ;--------------------------------------------------------
                                    348 ; absolute external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area XABS    (ABS,XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; external initialized ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XISEG   (XDATA)
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT0 (CODE)
                                    357 	.area GSINIT1 (CODE)
                                    358 	.area GSINIT2 (CODE)
                                    359 	.area GSINIT3 (CODE)
                                    360 	.area GSINIT4 (CODE)
                                    361 	.area GSINIT5 (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area CSEG    (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; interrupt vector 
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
      000000                        369 __interrupt_vect:
      000000 02 00 11         [24]  370 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  371 	reti
      000004                        372 	.ds	7
      00000B 02 02 C9         [24]  373 	ljmp	_timer0
                                    374 ;--------------------------------------------------------
                                    375 ; global & static initialisations
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 	.area GSFINAL (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 	.globl __sdcc_gsinit_startup
                                    382 	.globl __sdcc_program_startup
                                    383 	.globl __start__stack
                                    384 	.globl __mcs51_genXINIT
                                    385 	.globl __mcs51_genXRAMCLEAR
                                    386 	.globl __mcs51_genRAMCLEAR
                                    387 ;	./src/temperature/temperature.c:22: unsigned char str[10] = {0};
      00006A 75 0F 00         [24]  388 	mov	_str,#0x00
                                    389 ;	./src/temperature/temperature.c:23: unsigned int count = 0;
      00006D E4               [12]  390 	clr	a
      00006E F5 19            [12]  391 	mov	_count,a
      000070 F5 1A            [12]  392 	mov	(_count + 1),a
                                    393 	.area GSFINAL (CODE)
      000072 02 00 0E         [24]  394 	ljmp	__sdcc_program_startup
                                    395 ;--------------------------------------------------------
                                    396 ; Home
                                    397 ;--------------------------------------------------------
                                    398 	.area HOME    (CODE)
                                    399 	.area HOME    (CODE)
      00000E                        400 __sdcc_program_startup:
      00000E 02 01 EA         [24]  401 	ljmp	_main
                                    402 ;	return from main will return to caller
                                    403 ;--------------------------------------------------------
                                    404 ; code
                                    405 ;--------------------------------------------------------
                                    406 	.area CSEG    (CODE)
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'main'
                                    409 ;------------------------------------------------------------
                                    410 ;	./src/temperature/temperature.c:25: void main()
                                    411 ;	-----------------------------------------
                                    412 ;	 function main
                                    413 ;	-----------------------------------------
      0001EA                        414 _main:
                           000007   415 	ar7 = 0x07
                           000006   416 	ar6 = 0x06
                           000005   417 	ar5 = 0x05
                           000004   418 	ar4 = 0x04
                           000003   419 	ar3 = 0x03
                           000002   420 	ar2 = 0x02
                           000001   421 	ar1 = 0x01
                           000000   422 	ar0 = 0x00
                                    423 ;	./src/temperature/temperature.c:28: TMOD = 0x01;
      0001EA 75 89 01         [24]  424 	mov	_TMOD,#0x01
                                    425 ;	./src/temperature/temperature.c:30: TL0 = T_1ms;
      0001ED 75 8A 67         [24]  426 	mov	_TL0,#0x67
                                    427 ;	./src/temperature/temperature.c:31: TH0 = T_1ms >> 8;
      0001F0 75 8C FC         [24]  428 	mov	_TH0,#0xfc
                                    429 ;	./src/temperature/temperature.c:33: TR0 = 1;
                                    430 ;	assignBit
      0001F3 D2 8C            [12]  431 	setb	_TR0
                                    432 ;	./src/temperature/temperature.c:35: ET0 = 1;
                                    433 ;	assignBit
      0001F5 D2 A9            [12]  434 	setb	_ET0
                                    435 ;	./src/temperature/temperature.c:37: EA = 1;
                                    436 ;	assignBit
      0001F7 D2 AF            [12]  437 	setb	_EA
                                    438 ;	./src/temperature/temperature.c:40: Init_1602();
      0001F9 12 00 B5         [24]  439 	lcall	_Init_1602
                                    440 ;	./src/temperature/temperature.c:42: Disp_1602_str(1, 3, "temperature");
      0001FC 75 09 76         [24]  441 	mov	_Disp_1602_str_PARM_3,#___str_0
      0001FF 75 0A 03         [24]  442 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_0 >> 8)
      000202 75 0B 80         [24]  443 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      000205 75 08 03         [24]  444 	mov	_Disp_1602_str_PARM_2,#0x03
      000208 75 82 01         [24]  445 	mov	dpl,#0x01
      00020B 12 00 CD         [24]  446 	lcall	_Disp_1602_str
                                    447 ;	./src/temperature/temperature.c:44: while (1)
      00020E                        448 00107$:
                                    449 ;	./src/temperature/temperature.c:47: if (count >= 1000)
      00020E C3               [12]  450 	clr	c
      00020F E5 19            [12]  451 	mov	a,_count
      000211 94 E8            [12]  452 	subb	a,#0xe8
      000213 E5 1A            [12]  453 	mov	a,(_count + 1)
      000215 94 03            [12]  454 	subb	a,#0x03
      000217 40 F5            [24]  455 	jc	00107$
                                    456 ;	./src/temperature/temperature.c:50: EA = 0;
                                    457 ;	assignBit
      000219 C2 AF            [12]  458 	clr	_EA
                                    459 ;	./src/temperature/temperature.c:52: count = 0;
      00021B E4               [12]  460 	clr	a
      00021C F5 19            [12]  461 	mov	_count,a
      00021E F5 1A            [12]  462 	mov	(_count + 1),a
                                    463 ;	./src/temperature/temperature.c:54: Temp = GetT_18B20();
      000220 12 01 B0         [24]  464 	lcall	_GetT_18B20
                                    465 ;	./src/temperature/temperature.c:57: str[0] = (Temp >> 4) / 10 + '0'; // 右移4位，获得温度整数部分
      000223 85 82 0D         [24]  466 	mov	_Temp,dpl
      000226 E5 83            [12]  467 	mov	a,dph
      000228 F5 0E            [12]  468 	mov	(_Temp + 1),a
      00022A C4               [12]  469 	swap	a
      00022B C5 82            [12]  470 	xch	a,dpl
      00022D C4               [12]  471 	swap	a
      00022E 54 0F            [12]  472 	anl	a,#0x0f
      000230 65 82            [12]  473 	xrl	a,dpl
      000232 C5 82            [12]  474 	xch	a,dpl
      000234 54 0F            [12]  475 	anl	a,#0x0f
      000236 C5 82            [12]  476 	xch	a,dpl
      000238 65 82            [12]  477 	xrl	a,dpl
      00023A C5 82            [12]  478 	xch	a,dpl
      00023C F5 83            [12]  479 	mov	dph,a
      00023E 75 1B 0A         [24]  480 	mov	__divuint_PARM_2,#0x0a
      000241 75 1C 00         [24]  481 	mov	(__divuint_PARM_2 + 1),#0x00
      000244 12 02 E0         [24]  482 	lcall	__divuint
      000247 AE 82            [24]  483 	mov	r6,dpl
      000249 74 30            [12]  484 	mov	a,#0x30
      00024B 2E               [12]  485 	add	a,r6
      00024C F5 0F            [12]  486 	mov	_str,a
                                    487 ;	./src/temperature/temperature.c:59: str[1] = (Temp >> 4) % 10 + '0';
      00024E 85 0D 82         [24]  488 	mov	dpl,_Temp
      000251 E5 0E            [12]  489 	mov	a,(_Temp + 1)
      000253 C4               [12]  490 	swap	a
      000254 C5 82            [12]  491 	xch	a,dpl
      000256 C4               [12]  492 	swap	a
      000257 54 0F            [12]  493 	anl	a,#0x0f
      000259 65 82            [12]  494 	xrl	a,dpl
      00025B C5 82            [12]  495 	xch	a,dpl
      00025D 54 0F            [12]  496 	anl	a,#0x0f
      00025F C5 82            [12]  497 	xch	a,dpl
      000261 65 82            [12]  498 	xrl	a,dpl
      000263 C5 82            [12]  499 	xch	a,dpl
      000265 F5 83            [12]  500 	mov	dph,a
      000267 75 1B 0A         [24]  501 	mov	__moduint_PARM_2,#0x0a
      00026A 75 1C 00         [24]  502 	mov	(__moduint_PARM_2 + 1),#0x00
      00026D 12 03 09         [24]  503 	lcall	__moduint
      000270 AE 82            [24]  504 	mov	r6,dpl
      000272 74 30            [12]  505 	mov	a,#0x30
      000274 2E               [12]  506 	add	a,r6
      000275 F5 10            [12]  507 	mov	(_str + 0x0001),a
                                    508 ;	./src/temperature/temperature.c:60: str[2] = '.';
      000277 75 11 2E         [24]  509 	mov	(_str + 0x0002),#0x2e
                                    510 ;	./src/temperature/temperature.c:64: if ((Temp >> 3) % 10)
      00027A 85 0D 82         [24]  511 	mov	dpl,_Temp
      00027D E5 0E            [12]  512 	mov	a,(_Temp + 1)
      00027F C4               [12]  513 	swap	a
      000280 23               [12]  514 	rl	a
      000281 C5 82            [12]  515 	xch	a,dpl
      000283 C4               [12]  516 	swap	a
      000284 23               [12]  517 	rl	a
      000285 54 1F            [12]  518 	anl	a,#0x1f
      000287 65 82            [12]  519 	xrl	a,dpl
      000289 C5 82            [12]  520 	xch	a,dpl
      00028B 54 1F            [12]  521 	anl	a,#0x1f
      00028D C5 82            [12]  522 	xch	a,dpl
      00028F 65 82            [12]  523 	xrl	a,dpl
      000291 C5 82            [12]  524 	xch	a,dpl
      000293 F5 83            [12]  525 	mov	dph,a
      000295 75 1B 0A         [24]  526 	mov	__moduint_PARM_2,#0x0a
      000298 75 1C 00         [24]  527 	mov	(__moduint_PARM_2 + 1),#0x00
      00029B 12 03 09         [24]  528 	lcall	__moduint
      00029E E5 82            [12]  529 	mov	a,dpl
      0002A0 85 83 F0         [24]  530 	mov	b,dph
      0002A3 45 F0            [12]  531 	orl	a,b
      0002A5 60 05            [24]  532 	jz	00102$
                                    533 ;	./src/temperature/temperature.c:66: str[3] = '5';
      0002A7 75 12 35         [24]  534 	mov	(_str + 0x0003),#0x35
      0002AA 80 03            [24]  535 	sjmp	00103$
      0002AC                        536 00102$:
                                    537 ;	./src/temperature/temperature.c:71: str[3] = '0';
      0002AC 75 12 30         [24]  538 	mov	(_str + 0x0003),#0x30
      0002AF                        539 00103$:
                                    540 ;	./src/temperature/temperature.c:73: str[4] = '\0';
      0002AF 75 13 00         [24]  541 	mov	(_str + 0x0004),#0x00
                                    542 ;	./src/temperature/temperature.c:74: Disp_1602_str(2, 3, str);
      0002B2 75 09 0F         [24]  543 	mov	_Disp_1602_str_PARM_3,#_str
      0002B5 75 0A 00         [24]  544 	mov	(_Disp_1602_str_PARM_3 + 1),#0x00
      0002B8 75 0B 40         [24]  545 	mov	(_Disp_1602_str_PARM_3 + 2),#0x40
      0002BB 75 08 03         [24]  546 	mov	_Disp_1602_str_PARM_2,#0x03
      0002BE 75 82 02         [24]  547 	mov	dpl,#0x02
      0002C1 12 00 CD         [24]  548 	lcall	_Disp_1602_str
                                    549 ;	./src/temperature/temperature.c:76: EA = 1;
                                    550 ;	assignBit
      0002C4 D2 AF            [12]  551 	setb	_EA
                                    552 ;	./src/temperature/temperature.c:79: }
      0002C6 02 02 0E         [24]  553 	ljmp	00107$
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'timer0'
                                    556 ;------------------------------------------------------------
                                    557 ;	./src/temperature/temperature.c:82: void timer0() __interrupt(1)
                                    558 ;	-----------------------------------------
                                    559 ;	 function timer0
                                    560 ;	-----------------------------------------
      0002C9                        561 _timer0:
      0002C9 C0 E0            [24]  562 	push	acc
      0002CB C0 D0            [24]  563 	push	psw
                                    564 ;	./src/temperature/temperature.c:85: TL0 = T_1ms;
      0002CD 75 8A 67         [24]  565 	mov	_TL0,#0x67
                                    566 ;	./src/temperature/temperature.c:86: TH0 = T_1ms >> 8;
      0002D0 75 8C FC         [24]  567 	mov	_TH0,#0xfc
                                    568 ;	./src/temperature/temperature.c:87: count++;
      0002D3 05 19            [12]  569 	inc	_count
      0002D5 E4               [12]  570 	clr	a
      0002D6 B5 19 02         [24]  571 	cjne	a,_count,00103$
      0002D9 05 1A            [12]  572 	inc	(_count + 1)
      0002DB                        573 00103$:
                                    574 ;	./src/temperature/temperature.c:88: }
      0002DB D0 D0            [24]  575 	pop	psw
      0002DD D0 E0            [24]  576 	pop	acc
      0002DF 32               [24]  577 	reti
                                    578 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    579 ;	eliminated unneeded push/pop dpl
                                    580 ;	eliminated unneeded push/pop dph
                                    581 ;	eliminated unneeded push/pop b
                                    582 	.area CSEG    (CODE)
                                    583 	.area CONST   (CODE)
                                    584 	.area CONST   (CODE)
      000376                        585 ___str_0:
      000376 74 65 6D 70 65 72 61   586 	.ascii "temperature"
             74 75 72 65
      000381 00                     587 	.db 0x00
                                    588 	.area CSEG    (CODE)
                                    589 	.area XINIT   (CODE)
                                    590 	.area CABS    (ABS,CODE)
