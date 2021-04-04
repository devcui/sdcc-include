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
                                     11 	.globl _main
                                     12 	.globl _RdStr_AT24CPAGE
                                     13 	.globl _WrStr_AT24CPAGE
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
                                    152 	.globl _str
                                    153 	.globl _str1
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
                                    306 ; internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area DSEG    (DATA)
      000008                        309 _str1::
      000008                        310 	.ds 17
      000019                        311 _str::
      000019                        312 	.ds 20
                                    313 ;--------------------------------------------------------
                                    314 ; overlayable items in internal ram 
                                    315 ;--------------------------------------------------------
                                    316 ;--------------------------------------------------------
                                    317 ; Stack segment in internal ram 
                                    318 ;--------------------------------------------------------
                                    319 	.area	SSEG
      00003B                        320 __start__stack:
      00003B                        321 	.ds	1
                                    322 
                                    323 ;--------------------------------------------------------
                                    324 ; indirectly addressable internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area ISEG    (DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; absolute internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area IABS    (ABS,DATA)
                                    331 	.area IABS    (ABS,DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; bit data
                                    334 ;--------------------------------------------------------
                                    335 	.area BSEG    (BIT)
                                    336 ;--------------------------------------------------------
                                    337 ; paged external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area PSEG    (PAG,XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XSEG    (XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; absolute external ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XABS    (ABS,XDATA)
                                    348 ;--------------------------------------------------------
                                    349 ; external initialized ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XISEG   (XDATA)
                                    352 	.area HOME    (CODE)
                                    353 	.area GSINIT0 (CODE)
                                    354 	.area GSINIT1 (CODE)
                                    355 	.area GSINIT2 (CODE)
                                    356 	.area GSINIT3 (CODE)
                                    357 	.area GSINIT4 (CODE)
                                    358 	.area GSINIT5 (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area CSEG    (CODE)
                                    362 ;--------------------------------------------------------
                                    363 ; interrupt vector 
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
      000000                        366 __interrupt_vect:
      000000 02 00 06         [24]  367 	ljmp	__sdcc_gsinit_startup
                                    368 ;--------------------------------------------------------
                                    369 ; global & static initialisations
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.area GSFINAL (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.globl __sdcc_gsinit_startup
                                    376 	.globl __sdcc_program_startup
                                    377 	.globl __start__stack
                                    378 	.globl __mcs51_genXINIT
                                    379 	.globl __mcs51_genXRAMCLEAR
                                    380 	.globl __mcs51_genRAMCLEAR
                                    381 ;	./src/i2c/main.c:51: unsigned char str1[] = "AT24C256 WR STR!";
      00005F 75 08 41         [24]  382 	mov	_str1,#0x41
      000062 75 09 54         [24]  383 	mov	(_str1 + 0x0001),#0x54
      000065 75 0A 32         [24]  384 	mov	(_str1 + 0x0002),#0x32
      000068 75 0B 34         [24]  385 	mov	(_str1 + 0x0003),#0x34
      00006B 75 0C 43         [24]  386 	mov	(_str1 + 0x0004),#0x43
      00006E 75 0D 32         [24]  387 	mov	(_str1 + 0x0005),#0x32
      000071 75 0E 35         [24]  388 	mov	(_str1 + 0x0006),#0x35
      000074 75 0F 36         [24]  389 	mov	(_str1 + 0x0007),#0x36
      000077 75 10 20         [24]  390 	mov	(_str1 + 0x0008),#0x20
      00007A 75 11 57         [24]  391 	mov	(_str1 + 0x0009),#0x57
      00007D 75 12 52         [24]  392 	mov	(_str1 + 0x000a),#0x52
      000080 75 13 20         [24]  393 	mov	(_str1 + 0x000b),#0x20
      000083 75 14 53         [24]  394 	mov	(_str1 + 0x000c),#0x53
      000086 75 15 54         [24]  395 	mov	(_str1 + 0x000d),#0x54
      000089 75 16 52         [24]  396 	mov	(_str1 + 0x000e),#0x52
      00008C 75 17 21         [24]  397 	mov	(_str1 + 0x000f),#0x21
      00008F 75 18 00         [24]  398 	mov	(_str1 + 0x0010),#0x00
                                    399 	.area GSFINAL (CODE)
      000092 02 00 03         [24]  400 	ljmp	__sdcc_program_startup
                                    401 ;--------------------------------------------------------
                                    402 ; Home
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
                                    405 	.area HOME    (CODE)
      000003                        406 __sdcc_program_startup:
      000003 02 00 95         [24]  407 	ljmp	_main
                                    408 ;	return from main will return to caller
                                    409 ;--------------------------------------------------------
                                    410 ; code
                                    411 ;--------------------------------------------------------
                                    412 	.area CSEG    (CODE)
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'main'
                                    415 ;------------------------------------------------------------
                                    416 ;	./src/i2c/main.c:54: void main()
                                    417 ;	-----------------------------------------
                                    418 ;	 function main
                                    419 ;	-----------------------------------------
      000095                        420 _main:
                           000007   421 	ar7 = 0x07
                           000006   422 	ar6 = 0x06
                           000005   423 	ar5 = 0x05
                           000004   424 	ar4 = 0x04
                           000003   425 	ar3 = 0x03
                           000002   426 	ar2 = 0x02
                           000001   427 	ar1 = 0x01
                           000000   428 	ar0 = 0x00
                                    429 ;	./src/i2c/main.c:56: Init_1602();
      000095 12 01 10         [24]  430 	lcall	_Init_1602
                                    431 ;	./src/i2c/main.c:57: WrStr_AT24CPAGE(str1, 0x0500, 16);
      000098 75 32 00         [24]  432 	mov	_WrStr_AT24CPAGE_PARM_2,#0x00
      00009B 75 33 05         [24]  433 	mov	(_WrStr_AT24CPAGE_PARM_2 + 1),#0x05
      00009E 75 34 10         [24]  434 	mov	_WrStr_AT24CPAGE_PARM_3,#0x10
      0000A1 90 00 08         [24]  435 	mov	dptr,#_str1
      0000A4 75 F0 40         [24]  436 	mov	b,#0x40
      0000A7 12 01 D9         [24]  437 	lcall	_WrStr_AT24CPAGE
                                    438 ;	./src/i2c/main.c:58: RdStr_AT24CPAGE(str, 0x0500, 16);
      0000AA 75 37 00         [24]  439 	mov	_RdStr_AT24CPAGE_PARM_2,#0x00
      0000AD 75 38 05         [24]  440 	mov	(_RdStr_AT24CPAGE_PARM_2 + 1),#0x05
      0000B0 75 39 10         [24]  441 	mov	_RdStr_AT24CPAGE_PARM_3,#0x10
      0000B3 90 00 19         [24]  442 	mov	dptr,#_str
      0000B6 75 F0 40         [24]  443 	mov	b,#0x40
      0000B9 12 02 8A         [24]  444 	lcall	_RdStr_AT24CPAGE
                                    445 ;	./src/i2c/main.c:59: Disp_1602_str(1,1,str);
      0000BC 75 2E 19         [24]  446 	mov	_Disp_1602_str_PARM_3,#_str
      0000BF 75 2F 00         [24]  447 	mov	(_Disp_1602_str_PARM_3 + 1),#0x00
      0000C2 75 30 40         [24]  448 	mov	(_Disp_1602_str_PARM_3 + 2),#0x40
      0000C5 75 2D 01         [24]  449 	mov	_Disp_1602_str_PARM_2,#0x01
      0000C8 75 82 01         [24]  450 	mov	dpl,#0x01
      0000CB 12 01 28         [24]  451 	lcall	_Disp_1602_str
                                    452 ;	./src/i2c/main.c:60: while(1);
      0000CE                        453 00102$:
                                    454 ;	./src/i2c/main.c:61: }
      0000CE 80 FE            [24]  455 	sjmp	00102$
                                    456 	.area CSEG    (CODE)
                                    457 	.area CONST   (CODE)
                                    458 	.area XINIT   (CODE)
                                    459 	.area CABS    (ABS,CODE)
