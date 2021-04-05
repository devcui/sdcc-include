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
                                     12 	.globl _InitIR
                                     13 	.globl _Disp_1602_str
                                     14 	.globl _Init_1602
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
                                    151 	.globl _Key_Str
                                    152 ;--------------------------------------------------------
                                    153 ; special function registers
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           0000E8   157 _P4	=	0x00e8
                           0000C0   158 _XICON	=	0x00c0
                           0000E1   159 _WDT_CONTR	=	0x00e1
                           0000E2   160 _ISP_DATA	=	0x00e2
                           0000E3   161 _ISP_ADDRH	=	0x00e3
                           0000E4   162 _ISP_ADDRL	=	0x00e4
                           0000E5   163 _ISP_CMD	=	0x00e5
                           0000E6   164 _ISP_TRIG	=	0x00e6
                           0000E7   165 _ISP_CONTR	=	0x00e7
                           000080   166 _P0	=	0x0080
                           000090   167 _P1	=	0x0090
                           0000A0   168 _P2	=	0x00a0
                           0000B0   169 _P3	=	0x00b0
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                           000081   173 _SP	=	0x0081
                           000082   174 _DPL	=	0x0082
                           000083   175 _DPH	=	0x0083
                           000087   176 _PCON	=	0x0087
                           000088   177 _TCON	=	0x0088
                           000089   178 _TMOD	=	0x0089
                           00008A   179 _TL0	=	0x008a
                           00008B   180 _TL1	=	0x008b
                           00008C   181 _TH0	=	0x008c
                           00008D   182 _TH1	=	0x008d
                           0000A8   183 _IE	=	0x00a8
                           0000B8   184 _IP	=	0x00b8
                           000098   185 _SCON	=	0x0098
                           000099   186 _SBUF	=	0x0099
                           00008E   187 _AUXR	=	0x008e
                           0000A2   188 _AUXR1	=	0x00a2
                           0000A9   189 _SADDR	=	0x00a9
                           0000B7   190 _IPH	=	0x00b7
                           0000B9   191 _SADEN	=	0x00b9
                           0000C8   192 _T2CON	=	0x00c8
                           0000C9   193 _T2MOD	=	0x00c9
                           0000CA   194 _RCAP2L	=	0x00ca
                           0000CB   195 _RCAP2H	=	0x00cb
                           0000CC   196 _TL2	=	0x00cc
                           0000CD   197 _TH2	=	0x00cd
                                    198 ;--------------------------------------------------------
                                    199 ; special function bits
                                    200 ;--------------------------------------------------------
                                    201 	.area RSEG    (ABS,DATA)
      000000                        202 	.org 0x0000
                           0000EE   203 _P46	=	0x00ee
                           0000ED   204 _P45	=	0x00ed
                           0000EC   205 _P44	=	0x00ec
                           0000EB   206 _P43	=	0x00eb
                           0000EA   207 _P42	=	0x00ea
                           0000E9   208 _P41	=	0x00e9
                           0000E8   209 _P40	=	0x00e8
                           000080   210 _P00	=	0x0080
                           000081   211 _P01	=	0x0081
                           000082   212 _P02	=	0x0082
                           000083   213 _P03	=	0x0083
                           000084   214 _P04	=	0x0084
                           000085   215 _P05	=	0x0085
                           000086   216 _P06	=	0x0086
                           000087   217 _P07	=	0x0087
                           000090   218 _P10	=	0x0090
                           000091   219 _P11	=	0x0091
                           000092   220 _P12	=	0x0092
                           000093   221 _P13	=	0x0093
                           000094   222 _P14	=	0x0094
                           000095   223 _P15	=	0x0095
                           000096   224 _P16	=	0x0096
                           000097   225 _P17	=	0x0097
                           0000A0   226 _P20	=	0x00a0
                           0000A1   227 _P21	=	0x00a1
                           0000A2   228 _P22	=	0x00a2
                           0000A3   229 _P23	=	0x00a3
                           0000A4   230 _P24	=	0x00a4
                           0000A5   231 _P25	=	0x00a5
                           0000A6   232 _P26	=	0x00a6
                           0000A7   233 _P27	=	0x00a7
                           0000B0   234 _P30	=	0x00b0
                           0000B1   235 _P31	=	0x00b1
                           0000B2   236 _P32	=	0x00b2
                           0000B3   237 _P33	=	0x00b3
                           0000B4   238 _P34	=	0x00b4
                           0000B5   239 _P35	=	0x00b5
                           0000B6   240 _P36	=	0x00b6
                           0000B7   241 _P37	=	0x00b7
                           0000D7   242 _CY	=	0x00d7
                           0000D6   243 _AC	=	0x00d6
                           0000D5   244 _F0	=	0x00d5
                           0000D4   245 _RS1	=	0x00d4
                           0000D3   246 _RS0	=	0x00d3
                           0000D2   247 _OV	=	0x00d2
                           0000D0   248 _P	=	0x00d0
                           00008F   249 _TF1	=	0x008f
                           00008E   250 _TR1	=	0x008e
                           00008D   251 _TF0	=	0x008d
                           00008C   252 _TR0	=	0x008c
                           00008B   253 _IE1	=	0x008b
                           00008A   254 _IT1	=	0x008a
                           000089   255 _IE0	=	0x0089
                           000088   256 _IT0	=	0x0088
                           0000AF   257 _EA	=	0x00af
                           0000AE   258 _EC	=	0x00ae
                           0000AD   259 _ET2	=	0x00ad
                           0000AC   260 _ES	=	0x00ac
                           0000AB   261 _ET1	=	0x00ab
                           0000AA   262 _EX1	=	0x00aa
                           0000A9   263 _ET0	=	0x00a9
                           0000A8   264 _EX0	=	0x00a8
                           0000BD   265 _PT2	=	0x00bd
                           0000BC   266 _PS	=	0x00bc
                           0000BB   267 _PT1	=	0x00bb
                           0000BA   268 _PX1	=	0x00ba
                           0000B9   269 _PT0	=	0x00b9
                           0000B8   270 _PX0	=	0x00b8
                           0000B7   271 _RD	=	0x00b7
                           0000B6   272 _WR	=	0x00b6
                           0000B5   273 _T1	=	0x00b5
                           0000B4   274 _T0	=	0x00b4
                           0000B3   275 _INT1	=	0x00b3
                           0000B2   276 _INT0	=	0x00b2
                           0000B1   277 _TXD	=	0x00b1
                           0000B0   278 _RXD	=	0x00b0
                           00009F   279 _SM0	=	0x009f
                           00009F   280 _FE	=	0x009f
                           00009E   281 _SM1	=	0x009e
                           00009D   282 _SM2	=	0x009d
                           00009C   283 _REN	=	0x009c
                           00009B   284 _TB8	=	0x009b
                           00009A   285 _RB8	=	0x009a
                           000099   286 _TI	=	0x0099
                           000098   287 _RI	=	0x0098
                           000091   288 _T2EX	=	0x0091
                           000090   289 _T2	=	0x0090
                           0000CF   290 _TF2	=	0x00cf
                           0000CE   291 _EXF2	=	0x00ce
                           0000CD   292 _RCLK	=	0x00cd
                           0000CC   293 _TCLK	=	0x00cc
                           0000CB   294 _EXEN2	=	0x00cb
                           0000CA   295 _TR2	=	0x00ca
                           0000C9   296 _C_T2	=	0x00c9
                           0000C8   297 _CP_RL2	=	0x00c8
                                    298 ;--------------------------------------------------------
                                    299 ; overlayable register banks
                                    300 ;--------------------------------------------------------
                                    301 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        302 	.ds 8
                                    303 ;--------------------------------------------------------
                                    304 ; internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area DSEG    (DATA)
      000008                        307 _Key_Str::
      000008                        308 	.ds 3
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable items in internal ram 
                                    311 ;--------------------------------------------------------
                                    312 ;--------------------------------------------------------
                                    313 ; Stack segment in internal ram 
                                    314 ;--------------------------------------------------------
                                    315 	.area	SSEG
      000021                        316 __start__stack:
      000021                        317 	.ds	1
                                    318 
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
                                    359 ; interrupt vector 
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
      000000                        362 __interrupt_vect:
      000000 02 00 06         [24]  363 	ljmp	__sdcc_gsinit_startup
                                    364 ;--------------------------------------------------------
                                    365 ; global & static initialisations
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME    (CODE)
                                    368 	.area GSINIT  (CODE)
                                    369 	.area GSFINAL (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.globl __sdcc_gsinit_startup
                                    372 	.globl __sdcc_program_startup
                                    373 	.globl __start__stack
                                    374 	.globl __mcs51_genXINIT
                                    375 	.globl __mcs51_genXRAMCLEAR
                                    376 	.globl __mcs51_genRAMCLEAR
                                    377 ;	./src/ir/main.c:15: unsigned char *Key_Str = 0;
      00005F E4               [12]  378 	clr	a
      000060 F5 08            [12]  379 	mov	_Key_Str,a
      000062 F5 09            [12]  380 	mov	(_Key_Str + 1),a
                                    381 ;	1-genFromRTrack replaced	mov	(_Key_Str + 2),#0x00
      000064 F5 0A            [12]  382 	mov	(_Key_Str + 2),a
                                    383 	.area GSFINAL (CODE)
      000069 02 00 03         [24]  384 	ljmp	__sdcc_program_startup
                                    385 ;--------------------------------------------------------
                                    386 ; Home
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
                                    389 	.area HOME    (CODE)
      000003                        390 __sdcc_program_startup:
      000003 02 00 6C         [24]  391 	ljmp	_main
                                    392 ;	return from main will return to caller
                                    393 ;--------------------------------------------------------
                                    394 ; code
                                    395 ;--------------------------------------------------------
                                    396 	.area CSEG    (CODE)
                                    397 ;------------------------------------------------------------
                                    398 ;Allocation info for local variables in function 'main'
                                    399 ;------------------------------------------------------------
                                    400 ;Key                       Allocated to registers r7 
                                    401 ;------------------------------------------------------------
                                    402 ;	./src/ir/main.c:17: void main()
                                    403 ;	-----------------------------------------
                                    404 ;	 function main
                                    405 ;	-----------------------------------------
      00006C                        406 _main:
                           000007   407 	ar7 = 0x07
                           000006   408 	ar6 = 0x06
                           000005   409 	ar5 = 0x05
                           000004   410 	ar4 = 0x04
                           000003   411 	ar3 = 0x03
                           000002   412 	ar2 = 0x02
                           000001   413 	ar1 = 0x01
                           000000   414 	ar0 = 0x00
                                    415 ;	./src/ir/main.c:20: Init_1602();
      00006C 12 02 7C         [24]  416 	lcall	_Init_1602
                                    417 ;	./src/ir/main.c:21: InitIR();
      00006F 12 02 D3         [24]  418 	lcall	_InitIR
                                    419 ;	./src/ir/main.c:22: Disp_1602_str(1, 2, "Nebula-Pi IR");
      000072 75 0C 37         [24]  420 	mov	_Disp_1602_str_PARM_3,#___str_0
      000075 75 0D 04         [24]  421 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_0 >> 8)
      000078 75 0E 80         [24]  422 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      00007B 75 0B 02         [24]  423 	mov	_Disp_1602_str_PARM_2,#0x02
      00007E 75 82 01         [24]  424 	mov	dpl,#0x01
      000081 12 02 94         [24]  425 	lcall	_Disp_1602_str
                                    426 ;	./src/ir/main.c:23: Disp_1602_str(2, 1, "KEY: ");
      000084 75 0C 44         [24]  427 	mov	_Disp_1602_str_PARM_3,#___str_1
      000087 75 0D 04         [24]  428 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_1 >> 8)
      00008A 75 0E 80         [24]  429 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      00008D 75 0B 01         [24]  430 	mov	_Disp_1602_str_PARM_2,#0x01
      000090 75 82 02         [24]  431 	mov	dpl,#0x02
      000093 12 02 94         [24]  432 	lcall	_Disp_1602_str
                                    433 ;	./src/ir/main.c:24: while (1)
      000096                        434 00127$:
                                    435 ;	./src/ir/main.c:27: if (Flag_IR)
      000096 E5 0F            [12]  436 	mov	a,_Flag_IR
      000098 60 FC            [24]  437 	jz	00127$
                                    438 ;	./src/ir/main.c:30: Flag_IR = 0;
      00009A 75 0F 00         [24]  439 	mov	_Flag_IR,#0x00
                                    440 ;	./src/ir/main.c:33: Key = (unsigned char)(Data_IR >> 16);
      00009D AF 12            [24]  441 	mov	r7,(_Data_IR + 2)
                                    442 ;	./src/ir/main.c:34: switch (Key)
      00009F BF 07 03         [24]  443 	cjne	r7,#0x07,00224$
      0000A2 02 01 62         [24]  444 	ljmp	00107$
      0000A5                        445 00224$:
      0000A5 BF 08 03         [24]  446 	cjne	r7,#0x08,00225$
      0000A8 02 01 CA         [24]  447 	ljmp	00116$
      0000AB                        448 00225$:
      0000AB BF 09 03         [24]  449 	cjne	r7,#0x09,00226$
      0000AE 02 01 7A         [24]  450 	ljmp	00109$
      0000B1                        451 00226$:
      0000B1 BF 0C 03         [24]  452 	cjne	r7,#0x0c,00227$
      0000B4 02 01 A9         [24]  453 	ljmp	00113$
      0000B7                        454 00227$:
      0000B7 BF 0D 03         [24]  455 	cjne	r7,#0x0d,00228$
      0000BA 02 01 9E         [24]  456 	ljmp	00112$
      0000BD                        457 00228$:
      0000BD BF 15 03         [24]  458 	cjne	r7,#0x15,00229$
      0000C0 02 01 6E         [24]  459 	ljmp	00108$
      0000C3                        460 00229$:
      0000C3 BF 16 03         [24]  461 	cjne	r7,#0x16,00230$
      0000C6 02 01 86         [24]  462 	ljmp	00110$
      0000C9                        463 00230$:
      0000C9 BF 18 03         [24]  464 	cjne	r7,#0x18,00231$
      0000CC 02 01 B4         [24]  465 	ljmp	00114$
      0000CF                        466 00231$:
      0000CF BF 19 03         [24]  467 	cjne	r7,#0x19,00232$
      0000D2 02 01 92         [24]  468 	ljmp	00111$
      0000D5                        469 00232$:
      0000D5 BF 1C 03         [24]  470 	cjne	r7,#0x1c,00233$
      0000D8 02 01 D5         [24]  471 	ljmp	00117$
      0000DB                        472 00233$:
      0000DB BF 40 02         [24]  473 	cjne	r7,#0x40,00234$
      0000DE 80 6A            [24]  474 	sjmp	00105$
      0000E0                        475 00234$:
      0000E0 BF 42 03         [24]  476 	cjne	r7,#0x42,00235$
      0000E3 02 01 EB         [24]  477 	ljmp	00119$
      0000E6                        478 00235$:
      0000E6 BF 43 02         [24]  479 	cjne	r7,#0x43,00236$
      0000E9 80 6B            [24]  480 	sjmp	00106$
      0000EB                        481 00236$:
      0000EB BF 44 02         [24]  482 	cjne	r7,#0x44,00237$
      0000EE 80 4E            [24]  483 	sjmp	00104$
      0000F0                        484 00237$:
      0000F0 BF 45 02         [24]  485 	cjne	r7,#0x45,00238$
      0000F3 80 25            [24]  486 	sjmp	00101$
      0000F5                        487 00238$:
      0000F5 BF 46 02         [24]  488 	cjne	r7,#0x46,00239$
      0000F8 80 2C            [24]  489 	sjmp	00102$
      0000FA                        490 00239$:
      0000FA BF 47 02         [24]  491 	cjne	r7,#0x47,00240$
      0000FD 80 33            [24]  492 	sjmp	00103$
      0000FF                        493 00240$:
      0000FF BF 4A 03         [24]  494 	cjne	r7,#0x4a,00241$
      000102 02 02 01         [24]  495 	ljmp	00121$
      000105                        496 00241$:
      000105 BF 52 03         [24]  497 	cjne	r7,#0x52,00242$
      000108 02 01 F6         [24]  498 	ljmp	00120$
      00010B                        499 00242$:
      00010B BF 5A 03         [24]  500 	cjne	r7,#0x5a,00243$
      00010E 02 01 E0         [24]  501 	ljmp	00118$
      000111                        502 00243$:
      000111 BF 5E 03         [24]  503 	cjne	r7,#0x5e,00244$
      000114 02 01 BF         [24]  504 	ljmp	00115$
      000117                        505 00244$:
      000117 02 02 0C         [24]  506 	ljmp	00122$
                                    507 ;	./src/ir/main.c:36: case 69:
      00011A                        508 00101$:
                                    509 ;	./src/ir/main.c:37: Key_Str = "CH-";
      00011A 75 08 4A         [24]  510 	mov	_Key_Str,#___str_2
      00011D 75 09 04         [24]  511 	mov	(_Key_Str + 1),#(___str_2 >> 8)
      000120 75 0A 80         [24]  512 	mov	(_Key_Str + 2),#0x80
                                    513 ;	./src/ir/main.c:38: break;
      000123 02 02 15         [24]  514 	ljmp	00123$
                                    515 ;	./src/ir/main.c:39: case 70:
      000126                        516 00102$:
                                    517 ;	./src/ir/main.c:40: Key_Str = "CH";
      000126 75 08 4E         [24]  518 	mov	_Key_Str,#___str_3
      000129 75 09 04         [24]  519 	mov	(_Key_Str + 1),#(___str_3 >> 8)
      00012C 75 0A 80         [24]  520 	mov	(_Key_Str + 2),#0x80
                                    521 ;	./src/ir/main.c:41: break;
      00012F 02 02 15         [24]  522 	ljmp	00123$
                                    523 ;	./src/ir/main.c:42: case 71:
      000132                        524 00103$:
                                    525 ;	./src/ir/main.c:43: Key_Str = "CH+";
      000132 75 08 51         [24]  526 	mov	_Key_Str,#___str_4
      000135 75 09 04         [24]  527 	mov	(_Key_Str + 1),#(___str_4 >> 8)
      000138 75 0A 80         [24]  528 	mov	(_Key_Str + 2),#0x80
                                    529 ;	./src/ir/main.c:44: break;
      00013B 02 02 15         [24]  530 	ljmp	00123$
                                    531 ;	./src/ir/main.c:45: case 68:
      00013E                        532 00104$:
                                    533 ;	./src/ir/main.c:46: Key_Str = "PREV";
      00013E 75 08 55         [24]  534 	mov	_Key_Str,#___str_5
      000141 75 09 04         [24]  535 	mov	(_Key_Str + 1),#(___str_5 >> 8)
      000144 75 0A 80         [24]  536 	mov	(_Key_Str + 2),#0x80
                                    537 ;	./src/ir/main.c:47: break;
      000147 02 02 15         [24]  538 	ljmp	00123$
                                    539 ;	./src/ir/main.c:48: case 64:
      00014A                        540 00105$:
                                    541 ;	./src/ir/main.c:49: Key_Str = "NEXT";
      00014A 75 08 5A         [24]  542 	mov	_Key_Str,#___str_6
      00014D 75 09 04         [24]  543 	mov	(_Key_Str + 1),#(___str_6 >> 8)
      000150 75 0A 80         [24]  544 	mov	(_Key_Str + 2),#0x80
                                    545 ;	./src/ir/main.c:50: break;
      000153 02 02 15         [24]  546 	ljmp	00123$
                                    547 ;	./src/ir/main.c:51: case 67:
      000156                        548 00106$:
                                    549 ;	./src/ir/main.c:52: Key_Str = "PLAY/PAUSE";
      000156 75 08 5F         [24]  550 	mov	_Key_Str,#___str_7
      000159 75 09 04         [24]  551 	mov	(_Key_Str + 1),#(___str_7 >> 8)
      00015C 75 0A 80         [24]  552 	mov	(_Key_Str + 2),#0x80
                                    553 ;	./src/ir/main.c:53: break;
      00015F 02 02 15         [24]  554 	ljmp	00123$
                                    555 ;	./src/ir/main.c:54: case 7:
      000162                        556 00107$:
                                    557 ;	./src/ir/main.c:55: Key_Str = "-";
      000162 75 08 6A         [24]  558 	mov	_Key_Str,#___str_8
      000165 75 09 04         [24]  559 	mov	(_Key_Str + 1),#(___str_8 >> 8)
      000168 75 0A 80         [24]  560 	mov	(_Key_Str + 2),#0x80
                                    561 ;	./src/ir/main.c:56: break;
      00016B 02 02 15         [24]  562 	ljmp	00123$
                                    563 ;	./src/ir/main.c:57: case 21:
      00016E                        564 00108$:
                                    565 ;	./src/ir/main.c:58: Key_Str = "+";
      00016E 75 08 6C         [24]  566 	mov	_Key_Str,#___str_9
      000171 75 09 04         [24]  567 	mov	(_Key_Str + 1),#(___str_9 >> 8)
      000174 75 0A 80         [24]  568 	mov	(_Key_Str + 2),#0x80
                                    569 ;	./src/ir/main.c:59: break;
      000177 02 02 15         [24]  570 	ljmp	00123$
                                    571 ;	./src/ir/main.c:60: case 9:
      00017A                        572 00109$:
                                    573 ;	./src/ir/main.c:61: Key_Str = "EQ";
      00017A 75 08 6E         [24]  574 	mov	_Key_Str,#___str_10
      00017D 75 09 04         [24]  575 	mov	(_Key_Str + 1),#(___str_10 >> 8)
      000180 75 0A 80         [24]  576 	mov	(_Key_Str + 2),#0x80
                                    577 ;	./src/ir/main.c:62: break;
      000183 02 02 15         [24]  578 	ljmp	00123$
                                    579 ;	./src/ir/main.c:63: case 22:
      000186                        580 00110$:
                                    581 ;	./src/ir/main.c:64: Key_Str = "0";
      000186 75 08 71         [24]  582 	mov	_Key_Str,#___str_11
      000189 75 09 04         [24]  583 	mov	(_Key_Str + 1),#(___str_11 >> 8)
      00018C 75 0A 80         [24]  584 	mov	(_Key_Str + 2),#0x80
                                    585 ;	./src/ir/main.c:65: break;
      00018F 02 02 15         [24]  586 	ljmp	00123$
                                    587 ;	./src/ir/main.c:66: case 25:
      000192                        588 00111$:
                                    589 ;	./src/ir/main.c:67: Key_Str = "100+";
      000192 75 08 73         [24]  590 	mov	_Key_Str,#___str_12
      000195 75 09 04         [24]  591 	mov	(_Key_Str + 1),#(___str_12 >> 8)
      000198 75 0A 80         [24]  592 	mov	(_Key_Str + 2),#0x80
                                    593 ;	./src/ir/main.c:68: break;
      00019B 02 02 15         [24]  594 	ljmp	00123$
                                    595 ;	./src/ir/main.c:69: case 13:
      00019E                        596 00112$:
                                    597 ;	./src/ir/main.c:70: Key_Str = "200+";
      00019E 75 08 78         [24]  598 	mov	_Key_Str,#___str_13
      0001A1 75 09 04         [24]  599 	mov	(_Key_Str + 1),#(___str_13 >> 8)
      0001A4 75 0A 80         [24]  600 	mov	(_Key_Str + 2),#0x80
                                    601 ;	./src/ir/main.c:71: break;
                                    602 ;	./src/ir/main.c:72: case 12:
      0001A7 80 6C            [24]  603 	sjmp	00123$
      0001A9                        604 00113$:
                                    605 ;	./src/ir/main.c:73: Key_Str = "1";
      0001A9 75 08 7D         [24]  606 	mov	_Key_Str,#___str_14
      0001AC 75 09 04         [24]  607 	mov	(_Key_Str + 1),#(___str_14 >> 8)
      0001AF 75 0A 80         [24]  608 	mov	(_Key_Str + 2),#0x80
                                    609 ;	./src/ir/main.c:74: break;
                                    610 ;	./src/ir/main.c:75: case 24:
      0001B2 80 61            [24]  611 	sjmp	00123$
      0001B4                        612 00114$:
                                    613 ;	./src/ir/main.c:76: Key_Str = "2";
      0001B4 75 08 7F         [24]  614 	mov	_Key_Str,#___str_15
      0001B7 75 09 04         [24]  615 	mov	(_Key_Str + 1),#(___str_15 >> 8)
      0001BA 75 0A 80         [24]  616 	mov	(_Key_Str + 2),#0x80
                                    617 ;	./src/ir/main.c:77: break;
                                    618 ;	./src/ir/main.c:78: case 94:
      0001BD 80 56            [24]  619 	sjmp	00123$
      0001BF                        620 00115$:
                                    621 ;	./src/ir/main.c:79: Key_Str = "3";
      0001BF 75 08 81         [24]  622 	mov	_Key_Str,#___str_16
      0001C2 75 09 04         [24]  623 	mov	(_Key_Str + 1),#(___str_16 >> 8)
      0001C5 75 0A 80         [24]  624 	mov	(_Key_Str + 2),#0x80
                                    625 ;	./src/ir/main.c:80: break;
                                    626 ;	./src/ir/main.c:81: case 8:
      0001C8 80 4B            [24]  627 	sjmp	00123$
      0001CA                        628 00116$:
                                    629 ;	./src/ir/main.c:82: Key_Str = "4";
      0001CA 75 08 83         [24]  630 	mov	_Key_Str,#___str_17
      0001CD 75 09 04         [24]  631 	mov	(_Key_Str + 1),#(___str_17 >> 8)
      0001D0 75 0A 80         [24]  632 	mov	(_Key_Str + 2),#0x80
                                    633 ;	./src/ir/main.c:83: break;
                                    634 ;	./src/ir/main.c:84: case 28:
      0001D3 80 40            [24]  635 	sjmp	00123$
      0001D5                        636 00117$:
                                    637 ;	./src/ir/main.c:85: Key_Str = "5";
      0001D5 75 08 85         [24]  638 	mov	_Key_Str,#___str_18
      0001D8 75 09 04         [24]  639 	mov	(_Key_Str + 1),#(___str_18 >> 8)
      0001DB 75 0A 80         [24]  640 	mov	(_Key_Str + 2),#0x80
                                    641 ;	./src/ir/main.c:86: break;
                                    642 ;	./src/ir/main.c:87: case 90:
      0001DE 80 35            [24]  643 	sjmp	00123$
      0001E0                        644 00118$:
                                    645 ;	./src/ir/main.c:88: Key_Str = "6";
      0001E0 75 08 87         [24]  646 	mov	_Key_Str,#___str_19
      0001E3 75 09 04         [24]  647 	mov	(_Key_Str + 1),#(___str_19 >> 8)
      0001E6 75 0A 80         [24]  648 	mov	(_Key_Str + 2),#0x80
                                    649 ;	./src/ir/main.c:89: break;
                                    650 ;	./src/ir/main.c:90: case 66:
      0001E9 80 2A            [24]  651 	sjmp	00123$
      0001EB                        652 00119$:
                                    653 ;	./src/ir/main.c:91: Key_Str = "7";
      0001EB 75 08 89         [24]  654 	mov	_Key_Str,#___str_20
      0001EE 75 09 04         [24]  655 	mov	(_Key_Str + 1),#(___str_20 >> 8)
      0001F1 75 0A 80         [24]  656 	mov	(_Key_Str + 2),#0x80
                                    657 ;	./src/ir/main.c:92: break;
                                    658 ;	./src/ir/main.c:93: case 82:
      0001F4 80 1F            [24]  659 	sjmp	00123$
      0001F6                        660 00120$:
                                    661 ;	./src/ir/main.c:94: Key_Str = "8";
      0001F6 75 08 8B         [24]  662 	mov	_Key_Str,#___str_21
      0001F9 75 09 04         [24]  663 	mov	(_Key_Str + 1),#(___str_21 >> 8)
      0001FC 75 0A 80         [24]  664 	mov	(_Key_Str + 2),#0x80
                                    665 ;	./src/ir/main.c:95: break;
                                    666 ;	./src/ir/main.c:96: case 74:
      0001FF 80 14            [24]  667 	sjmp	00123$
      000201                        668 00121$:
                                    669 ;	./src/ir/main.c:97: Key_Str = "9";
      000201 75 08 8D         [24]  670 	mov	_Key_Str,#___str_22
      000204 75 09 04         [24]  671 	mov	(_Key_Str + 1),#(___str_22 >> 8)
      000207 75 0A 80         [24]  672 	mov	(_Key_Str + 2),#0x80
                                    673 ;	./src/ir/main.c:98: break;
                                    674 ;	./src/ir/main.c:99: default:
      00020A 80 09            [24]  675 	sjmp	00123$
      00020C                        676 00122$:
                                    677 ;	./src/ir/main.c:100: Key_Str = "error!";
      00020C 75 08 8F         [24]  678 	mov	_Key_Str,#___str_23
      00020F 75 09 04         [24]  679 	mov	(_Key_Str + 1),#(___str_23 >> 8)
      000212 75 0A 80         [24]  680 	mov	(_Key_Str + 2),#0x80
                                    681 ;	./src/ir/main.c:101: }
      000215                        682 00123$:
                                    683 ;	./src/ir/main.c:102: Disp_1602_str(2, 5, " ");
      000215 75 0C 96         [24]  684 	mov	_Disp_1602_str_PARM_3,#___str_24
      000218 75 0D 04         [24]  685 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_24 >> 8)
      00021B 75 0E 80         [24]  686 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      00021E 75 0B 05         [24]  687 	mov	_Disp_1602_str_PARM_2,#0x05
      000221 75 82 02         [24]  688 	mov	dpl,#0x02
      000224 12 02 94         [24]  689 	lcall	_Disp_1602_str
                                    690 ;	./src/ir/main.c:103: Disp_1602_str(2, 5, Key_Str);
      000227 75 0B 05         [24]  691 	mov	_Disp_1602_str_PARM_2,#0x05
      00022A 85 08 0C         [24]  692 	mov	_Disp_1602_str_PARM_3,_Key_Str
      00022D 85 09 0D         [24]  693 	mov	(_Disp_1602_str_PARM_3 + 1),(_Key_Str + 1)
      000230 85 0A 0E         [24]  694 	mov	(_Disp_1602_str_PARM_3 + 2),(_Key_Str + 2)
      000233 75 82 02         [24]  695 	mov	dpl,#0x02
      000236 12 02 94         [24]  696 	lcall	_Disp_1602_str
                                    697 ;	./src/ir/main.c:106: }
      000239 02 00 96         [24]  698 	ljmp	00127$
                                    699 	.area CSEG    (CODE)
                                    700 	.area CONST   (CODE)
                                    701 	.area CONST   (CODE)
      000437                        702 ___str_0:
      000437 4E 65 62 75 6C 61 2D   703 	.ascii "Nebula-Pi IR"
             50 69 20 49 52
      000443 00                     704 	.db 0x00
                                    705 	.area CSEG    (CODE)
                                    706 	.area CONST   (CODE)
      000444                        707 ___str_1:
      000444 4B 45 59 3A 20         708 	.ascii "KEY: "
      000449 00                     709 	.db 0x00
                                    710 	.area CSEG    (CODE)
                                    711 	.area CONST   (CODE)
      00044A                        712 ___str_2:
      00044A 43 48 2D               713 	.ascii "CH-"
      00044D 00                     714 	.db 0x00
                                    715 	.area CSEG    (CODE)
                                    716 	.area CONST   (CODE)
      00044E                        717 ___str_3:
      00044E 43 48                  718 	.ascii "CH"
      000450 00                     719 	.db 0x00
                                    720 	.area CSEG    (CODE)
                                    721 	.area CONST   (CODE)
      000451                        722 ___str_4:
      000451 43 48 2B               723 	.ascii "CH+"
      000454 00                     724 	.db 0x00
                                    725 	.area CSEG    (CODE)
                                    726 	.area CONST   (CODE)
      000455                        727 ___str_5:
      000455 50 52 45 56            728 	.ascii "PREV"
      000459 00                     729 	.db 0x00
                                    730 	.area CSEG    (CODE)
                                    731 	.area CONST   (CODE)
      00045A                        732 ___str_6:
      00045A 4E 45 58 54            733 	.ascii "NEXT"
      00045E 00                     734 	.db 0x00
                                    735 	.area CSEG    (CODE)
                                    736 	.area CONST   (CODE)
      00045F                        737 ___str_7:
      00045F 50 4C 41 59 2F 50 41   738 	.ascii "PLAY/PAUSE"
             55 53 45
      000469 00                     739 	.db 0x00
                                    740 	.area CSEG    (CODE)
                                    741 	.area CONST   (CODE)
      00046A                        742 ___str_8:
      00046A 2D                     743 	.ascii "-"
      00046B 00                     744 	.db 0x00
                                    745 	.area CSEG    (CODE)
                                    746 	.area CONST   (CODE)
      00046C                        747 ___str_9:
      00046C 2B                     748 	.ascii "+"
      00046D 00                     749 	.db 0x00
                                    750 	.area CSEG    (CODE)
                                    751 	.area CONST   (CODE)
      00046E                        752 ___str_10:
      00046E 45 51                  753 	.ascii "EQ"
      000470 00                     754 	.db 0x00
                                    755 	.area CSEG    (CODE)
                                    756 	.area CONST   (CODE)
      000471                        757 ___str_11:
      000471 30                     758 	.ascii "0"
      000472 00                     759 	.db 0x00
                                    760 	.area CSEG    (CODE)
                                    761 	.area CONST   (CODE)
      000473                        762 ___str_12:
      000473 31 30 30 2B            763 	.ascii "100+"
      000477 00                     764 	.db 0x00
                                    765 	.area CSEG    (CODE)
                                    766 	.area CONST   (CODE)
      000478                        767 ___str_13:
      000478 32 30 30 2B            768 	.ascii "200+"
      00047C 00                     769 	.db 0x00
                                    770 	.area CSEG    (CODE)
                                    771 	.area CONST   (CODE)
      00047D                        772 ___str_14:
      00047D 31                     773 	.ascii "1"
      00047E 00                     774 	.db 0x00
                                    775 	.area CSEG    (CODE)
                                    776 	.area CONST   (CODE)
      00047F                        777 ___str_15:
      00047F 32                     778 	.ascii "2"
      000480 00                     779 	.db 0x00
                                    780 	.area CSEG    (CODE)
                                    781 	.area CONST   (CODE)
      000481                        782 ___str_16:
      000481 33                     783 	.ascii "3"
      000482 00                     784 	.db 0x00
                                    785 	.area CSEG    (CODE)
                                    786 	.area CONST   (CODE)
      000483                        787 ___str_17:
      000483 34                     788 	.ascii "4"
      000484 00                     789 	.db 0x00
                                    790 	.area CSEG    (CODE)
                                    791 	.area CONST   (CODE)
      000485                        792 ___str_18:
      000485 35                     793 	.ascii "5"
      000486 00                     794 	.db 0x00
                                    795 	.area CSEG    (CODE)
                                    796 	.area CONST   (CODE)
      000487                        797 ___str_19:
      000487 36                     798 	.ascii "6"
      000488 00                     799 	.db 0x00
                                    800 	.area CSEG    (CODE)
                                    801 	.area CONST   (CODE)
      000489                        802 ___str_20:
      000489 37                     803 	.ascii "7"
      00048A 00                     804 	.db 0x00
                                    805 	.area CSEG    (CODE)
                                    806 	.area CONST   (CODE)
      00048B                        807 ___str_21:
      00048B 38                     808 	.ascii "8"
      00048C 00                     809 	.db 0x00
                                    810 	.area CSEG    (CODE)
                                    811 	.area CONST   (CODE)
      00048D                        812 ___str_22:
      00048D 39                     813 	.ascii "9"
      00048E 00                     814 	.db 0x00
                                    815 	.area CSEG    (CODE)
                                    816 	.area CONST   (CODE)
      00048F                        817 ___str_23:
      00048F 65 72 72 6F 72 21      818 	.ascii "error!"
      000495 00                     819 	.db 0x00
                                    820 	.area CSEG    (CODE)
                                    821 	.area CONST   (CODE)
      000496                        822 ___str_24:
      000496 20                     823 	.ascii " "
      000497 00                     824 	.db 0x00
                                    825 	.area CSEG    (CODE)
                                    826 	.area XINIT   (CODE)
                                    827 	.area CABS    (ABS,CODE)
