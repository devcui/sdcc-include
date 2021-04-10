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
                                     11 	.globl _timmer0
                                     12 	.globl _main
                                     13 	.globl _Disp_1602_str
                                     14 	.globl _Init_1602
                                     15 	.globl _GetTime
                                     16 	.globl _Init_1302
                                     17 	.globl _WE
                                     18 	.globl _DU
                                     19 	.globl _FM
                                     20 	.globl _CP_RL2
                                     21 	.globl _C_T2
                                     22 	.globl _TR2
                                     23 	.globl _EXEN2
                                     24 	.globl _TCLK
                                     25 	.globl _RCLK
                                     26 	.globl _EXF2
                                     27 	.globl _TF2
                                     28 	.globl _T2
                                     29 	.globl _T2EX
                                     30 	.globl _RI
                                     31 	.globl _TI
                                     32 	.globl _RB8
                                     33 	.globl _TB8
                                     34 	.globl _REN
                                     35 	.globl _SM2
                                     36 	.globl _SM1
                                     37 	.globl _FE
                                     38 	.globl _SM0
                                     39 	.globl _RXD
                                     40 	.globl _TXD
                                     41 	.globl _INT0
                                     42 	.globl _INT1
                                     43 	.globl _T0
                                     44 	.globl _T1
                                     45 	.globl _WR
                                     46 	.globl _RD
                                     47 	.globl _PX0
                                     48 	.globl _PT0
                                     49 	.globl _PX1
                                     50 	.globl _PT1
                                     51 	.globl _PS
                                     52 	.globl _PT2
                                     53 	.globl _EX0
                                     54 	.globl _ET0
                                     55 	.globl _EX1
                                     56 	.globl _ET1
                                     57 	.globl _ES
                                     58 	.globl _ET2
                                     59 	.globl _EC
                                     60 	.globl _EA
                                     61 	.globl _IT0
                                     62 	.globl _IE0
                                     63 	.globl _IT1
                                     64 	.globl _IE1
                                     65 	.globl _TR0
                                     66 	.globl _TF0
                                     67 	.globl _TR1
                                     68 	.globl _TF1
                                     69 	.globl _P
                                     70 	.globl _OV
                                     71 	.globl _RS0
                                     72 	.globl _RS1
                                     73 	.globl _F0
                                     74 	.globl _AC
                                     75 	.globl _CY
                                     76 	.globl _P37
                                     77 	.globl _P36
                                     78 	.globl _P35
                                     79 	.globl _P34
                                     80 	.globl _P33
                                     81 	.globl _P32
                                     82 	.globl _P31
                                     83 	.globl _P30
                                     84 	.globl _P27
                                     85 	.globl _P26
                                     86 	.globl _P25
                                     87 	.globl _P24
                                     88 	.globl _P23
                                     89 	.globl _P22
                                     90 	.globl _P21
                                     91 	.globl _P20
                                     92 	.globl _P17
                                     93 	.globl _P16
                                     94 	.globl _P15
                                     95 	.globl _P14
                                     96 	.globl _P13
                                     97 	.globl _P12
                                     98 	.globl _P11
                                     99 	.globl _P10
                                    100 	.globl _P07
                                    101 	.globl _P06
                                    102 	.globl _P05
                                    103 	.globl _P04
                                    104 	.globl _P03
                                    105 	.globl _P02
                                    106 	.globl _P01
                                    107 	.globl _P00
                                    108 	.globl _P40
                                    109 	.globl _P41
                                    110 	.globl _P42
                                    111 	.globl _P43
                                    112 	.globl _P44
                                    113 	.globl _P45
                                    114 	.globl _P46
                                    115 	.globl _TH2
                                    116 	.globl _TL2
                                    117 	.globl _RCAP2H
                                    118 	.globl _RCAP2L
                                    119 	.globl _T2MOD
                                    120 	.globl _T2CON
                                    121 	.globl _SADEN
                                    122 	.globl _IPH
                                    123 	.globl _SADDR
                                    124 	.globl _AUXR1
                                    125 	.globl _AUXR
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _IP
                                    129 	.globl _IE
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _B
                                    141 	.globl _ACC
                                    142 	.globl _PSW
                                    143 	.globl _P3
                                    144 	.globl _P2
                                    145 	.globl _P1
                                    146 	.globl _P0
                                    147 	.globl _ISP_CONTR
                                    148 	.globl _ISP_TRIG
                                    149 	.globl _ISP_CMD
                                    150 	.globl _ISP_ADDRL
                                    151 	.globl _ISP_ADDRH
                                    152 	.globl _ISP_DATA
                                    153 	.globl _WDT_CONTR
                                    154 	.globl _XICON
                                    155 	.globl _P4
                                    156 	.globl _str
                                    157 	.globl _SetTime
                                    158 	.globl _CurrentTime
                                    159 	.globl _T_flag
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
                           000080   306 _FM	=	0x0080
                           000086   307 _DU	=	0x0086
                           000087   308 _WE	=	0x0087
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable register banks
                                    311 ;--------------------------------------------------------
                                    312 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        313 	.ds 8
                                    314 ;--------------------------------------------------------
                                    315 ; internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area DSEG    (DATA)
      000008                        318 _T_flag::
      000008                        319 	.ds 1
      000009                        320 _CurrentTime::
      000009                        321 	.ds 23
      000020                        322 _SetTime::
      000020                        323 	.ds 7
      000027                        324 _str::
      000027                        325 	.ds 23
      00003E                        326 _timmer0_T_500ms_65537_18:
      00003E                        327 	.ds 2
                                    328 ;--------------------------------------------------------
                                    329 ; overlayable items in internal ram 
                                    330 ;--------------------------------------------------------
                                    331 ;--------------------------------------------------------
                                    332 ; Stack segment in internal ram 
                                    333 ;--------------------------------------------------------
                                    334 	.area	SSEG
      000046                        335 __start__stack:
      000046                        336 	.ds	1
                                    337 
                                    338 ;--------------------------------------------------------
                                    339 ; indirectly addressable internal ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area ISEG    (DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; absolute internal ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area IABS    (ABS,DATA)
                                    346 	.area IABS    (ABS,DATA)
                                    347 ;--------------------------------------------------------
                                    348 ; bit data
                                    349 ;--------------------------------------------------------
                                    350 	.area BSEG    (BIT)
                                    351 ;--------------------------------------------------------
                                    352 ; paged external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area PSEG    (PAG,XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XSEG    (XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; absolute external ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XABS    (ABS,XDATA)
                                    363 ;--------------------------------------------------------
                                    364 ; external initialized ram data
                                    365 ;--------------------------------------------------------
                                    366 	.area XISEG   (XDATA)
                                    367 	.area HOME    (CODE)
                                    368 	.area GSINIT0 (CODE)
                                    369 	.area GSINIT1 (CODE)
                                    370 	.area GSINIT2 (CODE)
                                    371 	.area GSINIT3 (CODE)
                                    372 	.area GSINIT4 (CODE)
                                    373 	.area GSINIT5 (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.area GSFINAL (CODE)
                                    376 	.area CSEG    (CODE)
                                    377 ;--------------------------------------------------------
                                    378 ; interrupt vector 
                                    379 ;--------------------------------------------------------
                                    380 	.area HOME    (CODE)
      000000                        381 __interrupt_vect:
      000000 02 00 11         [24]  382 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  383 	reti
      000004                        384 	.ds	7
      00000B 02 01 D9         [24]  385 	ljmp	_timmer0
                                    386 ;--------------------------------------------------------
                                    387 ; global & static initialisations
                                    388 ;--------------------------------------------------------
                                    389 	.area HOME    (CODE)
                                    390 	.area GSINIT  (CODE)
                                    391 	.area GSFINAL (CODE)
                                    392 	.area GSINIT  (CODE)
                                    393 	.globl __sdcc_gsinit_startup
                                    394 	.globl __sdcc_program_startup
                                    395 	.globl __start__stack
                                    396 	.globl __mcs51_genXINIT
                                    397 	.globl __mcs51_genXRAMCLEAR
                                    398 	.globl __mcs51_genRAMCLEAR
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'timmer0'
                                    401 ;------------------------------------------------------------
                                    402 ;T_500ms                   Allocated with name '_timmer0_T_500ms_65537_18'
                                    403 ;------------------------------------------------------------
                                    404 ;	./src/DS1302/main.c:94: static unsigned int T_500ms = 0;
      00006A E4               [12]  405 	clr	a
      00006B F5 3E            [12]  406 	mov	_timmer0_T_500ms_65537_18,a
      00006D F5 3F            [12]  407 	mov	(_timmer0_T_500ms_65537_18 + 1),a
                                    408 ;	./src/DS1302/main.c:25: unsigned char T_flag = 0;
                                    409 ;	1-genFromRTrack replaced	mov	_T_flag,#0x00
      00006F F5 08            [12]  410 	mov	_T_flag,a
                                    411 ;	./src/DS1302/main.c:27: unsigned char CurrentTime[23] = "";
                                    412 ;	1-genFromRTrack replaced	mov	_CurrentTime,#0x00
      000071 F5 09            [12]  413 	mov	_CurrentTime,a
                                    414 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0001),#0x00
      000073 F5 0A            [12]  415 	mov	(_CurrentTime + 0x0001),a
                                    416 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0002),#0x00
      000075 F5 0B            [12]  417 	mov	(_CurrentTime + 0x0002),a
                                    418 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0003),#0x00
      000077 F5 0C            [12]  419 	mov	(_CurrentTime + 0x0003),a
                                    420 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0004),#0x00
      000079 F5 0D            [12]  421 	mov	(_CurrentTime + 0x0004),a
                                    422 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0005),#0x00
      00007B F5 0E            [12]  423 	mov	(_CurrentTime + 0x0005),a
                                    424 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0006),#0x00
      00007D F5 0F            [12]  425 	mov	(_CurrentTime + 0x0006),a
                                    426 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0007),#0x00
      00007F F5 10            [12]  427 	mov	(_CurrentTime + 0x0007),a
                                    428 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0008),#0x00
      000081 F5 11            [12]  429 	mov	(_CurrentTime + 0x0008),a
                                    430 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0009),#0x00
      000083 F5 12            [12]  431 	mov	(_CurrentTime + 0x0009),a
                                    432 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000a),#0x00
      000085 F5 13            [12]  433 	mov	(_CurrentTime + 0x000a),a
                                    434 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000b),#0x00
      000087 F5 14            [12]  435 	mov	(_CurrentTime + 0x000b),a
                                    436 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000c),#0x00
      000089 F5 15            [12]  437 	mov	(_CurrentTime + 0x000c),a
                                    438 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000d),#0x00
      00008B F5 16            [12]  439 	mov	(_CurrentTime + 0x000d),a
                                    440 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000e),#0x00
      00008D F5 17            [12]  441 	mov	(_CurrentTime + 0x000e),a
                                    442 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x000f),#0x00
      00008F F5 18            [12]  443 	mov	(_CurrentTime + 0x000f),a
                                    444 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0010),#0x00
      000091 F5 19            [12]  445 	mov	(_CurrentTime + 0x0010),a
                                    446 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0011),#0x00
      000093 F5 1A            [12]  447 	mov	(_CurrentTime + 0x0011),a
                                    448 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0012),#0x00
      000095 F5 1B            [12]  449 	mov	(_CurrentTime + 0x0012),a
                                    450 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0013),#0x00
      000097 F5 1C            [12]  451 	mov	(_CurrentTime + 0x0013),a
                                    452 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0014),#0x00
      000099 F5 1D            [12]  453 	mov	(_CurrentTime + 0x0014),a
                                    454 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0015),#0x00
      00009B F5 1E            [12]  455 	mov	(_CurrentTime + 0x0015),a
                                    456 ;	1-genFromRTrack replaced	mov	(_CurrentTime + 0x0016),#0x00
      00009D F5 1F            [12]  457 	mov	(_CurrentTime + 0x0016),a
                                    458 ;	./src/DS1302/main.c:28: unsigned char SetTime[7] = {0x56, 0x58, 0x23, 0x01, 0x06, 0x02, 0x21};
      00009F 75 20 56         [24]  459 	mov	_SetTime,#0x56
      0000A2 75 21 58         [24]  460 	mov	(_SetTime + 0x0001),#0x58
      0000A5 75 22 23         [24]  461 	mov	(_SetTime + 0x0002),#0x23
      0000A8 75 23 01         [24]  462 	mov	(_SetTime + 0x0003),#0x01
      0000AB 75 24 06         [24]  463 	mov	(_SetTime + 0x0004),#0x06
      0000AE 75 25 02         [24]  464 	mov	(_SetTime + 0x0005),#0x02
      0000B1 75 26 21         [24]  465 	mov	(_SetTime + 0x0006),#0x21
                                    466 ;	./src/DS1302/main.c:29: unsigned char str[23] = "";
                                    467 ;	1-genFromRTrack replaced	mov	_str,#0x00
      0000B4 F5 27            [12]  468 	mov	_str,a
                                    469 ;	1-genFromRTrack replaced	mov	(_str + 0x0001),#0x00
      0000B6 F5 28            [12]  470 	mov	(_str + 0x0001),a
                                    471 ;	1-genFromRTrack replaced	mov	(_str + 0x0002),#0x00
      0000B8 F5 29            [12]  472 	mov	(_str + 0x0002),a
                                    473 ;	1-genFromRTrack replaced	mov	(_str + 0x0003),#0x00
      0000BA F5 2A            [12]  474 	mov	(_str + 0x0003),a
                                    475 ;	1-genFromRTrack replaced	mov	(_str + 0x0004),#0x00
      0000BC F5 2B            [12]  476 	mov	(_str + 0x0004),a
                                    477 ;	1-genFromRTrack replaced	mov	(_str + 0x0005),#0x00
      0000BE F5 2C            [12]  478 	mov	(_str + 0x0005),a
                                    479 ;	1-genFromRTrack replaced	mov	(_str + 0x0006),#0x00
      0000C0 F5 2D            [12]  480 	mov	(_str + 0x0006),a
                                    481 ;	1-genFromRTrack replaced	mov	(_str + 0x0007),#0x00
      0000C2 F5 2E            [12]  482 	mov	(_str + 0x0007),a
                                    483 ;	1-genFromRTrack replaced	mov	(_str + 0x0008),#0x00
      0000C4 F5 2F            [12]  484 	mov	(_str + 0x0008),a
                                    485 ;	1-genFromRTrack replaced	mov	(_str + 0x0009),#0x00
      0000C6 F5 30            [12]  486 	mov	(_str + 0x0009),a
                                    487 ;	1-genFromRTrack replaced	mov	(_str + 0x000a),#0x00
      0000C8 F5 31            [12]  488 	mov	(_str + 0x000a),a
                                    489 ;	1-genFromRTrack replaced	mov	(_str + 0x000b),#0x00
      0000CA F5 32            [12]  490 	mov	(_str + 0x000b),a
                                    491 ;	1-genFromRTrack replaced	mov	(_str + 0x000c),#0x00
      0000CC F5 33            [12]  492 	mov	(_str + 0x000c),a
                                    493 ;	1-genFromRTrack replaced	mov	(_str + 0x000d),#0x00
      0000CE F5 34            [12]  494 	mov	(_str + 0x000d),a
                                    495 ;	1-genFromRTrack replaced	mov	(_str + 0x000e),#0x00
      0000D0 F5 35            [12]  496 	mov	(_str + 0x000e),a
                                    497 ;	1-genFromRTrack replaced	mov	(_str + 0x000f),#0x00
      0000D2 F5 36            [12]  498 	mov	(_str + 0x000f),a
                                    499 ;	1-genFromRTrack replaced	mov	(_str + 0x0010),#0x00
      0000D4 F5 37            [12]  500 	mov	(_str + 0x0010),a
                                    501 ;	1-genFromRTrack replaced	mov	(_str + 0x0011),#0x00
      0000D6 F5 38            [12]  502 	mov	(_str + 0x0011),a
                                    503 ;	1-genFromRTrack replaced	mov	(_str + 0x0012),#0x00
      0000D8 F5 39            [12]  504 	mov	(_str + 0x0012),a
                                    505 ;	1-genFromRTrack replaced	mov	(_str + 0x0013),#0x00
      0000DA F5 3A            [12]  506 	mov	(_str + 0x0013),a
                                    507 ;	1-genFromRTrack replaced	mov	(_str + 0x0014),#0x00
      0000DC F5 3B            [12]  508 	mov	(_str + 0x0014),a
                                    509 ;	1-genFromRTrack replaced	mov	(_str + 0x0015),#0x00
      0000DE F5 3C            [12]  510 	mov	(_str + 0x0015),a
                                    511 ;	1-genFromRTrack replaced	mov	(_str + 0x0016),#0x00
      0000E0 F5 3D            [12]  512 	mov	(_str + 0x0016),a
                                    513 	.area GSFINAL (CODE)
      0000E2 02 00 0E         [24]  514 	ljmp	__sdcc_program_startup
                                    515 ;--------------------------------------------------------
                                    516 ; Home
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area HOME    (CODE)
      00000E                        520 __sdcc_program_startup:
      00000E 02 00 E5         [24]  521 	ljmp	_main
                                    522 ;	return from main will return to caller
                                    523 ;--------------------------------------------------------
                                    524 ; code
                                    525 ;--------------------------------------------------------
                                    526 	.area CSEG    (CODE)
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'main'
                                    529 ;------------------------------------------------------------
                                    530 ;	./src/DS1302/main.c:31: void main()
                                    531 ;	-----------------------------------------
                                    532 ;	 function main
                                    533 ;	-----------------------------------------
      0000E5                        534 _main:
                           000007   535 	ar7 = 0x07
                           000006   536 	ar6 = 0x06
                           000005   537 	ar5 = 0x05
                           000004   538 	ar4 = 0x04
                           000003   539 	ar3 = 0x03
                           000002   540 	ar2 = 0x02
                           000001   541 	ar1 = 0x01
                           000000   542 	ar0 = 0x00
                                    543 ;	./src/DS1302/main.c:33: P10 = 1;
                                    544 ;	assignBit
      0000E5 D2 90            [12]  545 	setb	_P10
                                    546 ;	./src/DS1302/main.c:34: Init_1602();
      0000E7 12 02 48         [24]  547 	lcall	_Init_1602
                                    548 ;	./src/DS1302/main.c:36: P2 = 0xFF;
      0000EA 75 A0 FF         [24]  549 	mov	_P2,#0xff
                                    550 ;	./src/DS1302/main.c:37: WE = 1;
                                    551 ;	assignBit
      0000ED D2 87            [12]  552 	setb	_WE
                                    553 ;	./src/DS1302/main.c:38: WE = 0;
                                    554 ;	assignBit
      0000EF C2 87            [12]  555 	clr	_WE
                                    556 ;	./src/DS1302/main.c:40: TMOD = 0x01;
      0000F1 75 89 01         [24]  557 	mov	_TMOD,#0x01
                                    558 ;	./src/DS1302/main.c:41: TL0 = T_1ms;
      0000F4 75 8A 67         [24]  559 	mov	_TL0,#0x67
                                    560 ;	./src/DS1302/main.c:42: TH0 = T_1ms >> 8;
      0000F7 75 8C FC         [24]  561 	mov	_TH0,#0xfc
                                    562 ;	./src/DS1302/main.c:43: TR0 = 1;
                                    563 ;	assignBit
      0000FA D2 8C            [12]  564 	setb	_TR0
                                    565 ;	./src/DS1302/main.c:44: ET0 = 1;
                                    566 ;	assignBit
      0000FC D2 A9            [12]  567 	setb	_ET0
                                    568 ;	./src/DS1302/main.c:45: EA = 1;
                                    569 ;	assignBit
      0000FE D2 AF            [12]  570 	setb	_EA
                                    571 ;	./src/DS1302/main.c:47: Init_1302(SetTime);
      000100 90 00 20         [24]  572 	mov	dptr,#_SetTime
      000103 75 F0 40         [24]  573 	mov	b,#0x40
      000106 12 02 FA         [24]  574 	lcall	_Init_1302
                                    575 ;	./src/DS1302/main.c:49: while (1)
      000109                        576 00104$:
                                    577 ;	./src/DS1302/main.c:51: if (T_flag) //500ms
      000109 E5 08            [12]  578 	mov	a,_T_flag
      00010B 60 FC            [24]  579 	jz	00104$
                                    580 ;	./src/DS1302/main.c:53: T_flag = 0;
      00010D 75 08 00         [24]  581 	mov	_T_flag,#0x00
                                    582 ;	./src/DS1302/main.c:55: GetTime(CurrentTime); 
      000110 90 00 09         [24]  583 	mov	dptr,#_CurrentTime
      000113 75 F0 40         [24]  584 	mov	b,#0x40
      000116 12 03 22         [24]  585 	lcall	_GetTime
                                    586 ;	./src/DS1302/main.c:57: str[0] = '2';
      000119 75 27 32         [24]  587 	mov	_str,#0x32
                                    588 ;	./src/DS1302/main.c:58: str[1] = '0';
      00011C 75 28 30         [24]  589 	mov	(_str + 0x0001),#0x30
                                    590 ;	./src/DS1302/main.c:59: str[2] = (CurrentTime[6] >> 4) + '0'; 
      00011F E5 0F            [12]  591 	mov	a,(_CurrentTime + 0x0006)
      000121 C4               [12]  592 	swap	a
      000122 54 0F            [12]  593 	anl	a,#0x0f
      000124 24 30            [12]  594 	add	a,#0x30
      000126 F5 29            [12]  595 	mov	(_str + 0x0002),a
                                    596 ;	./src/DS1302/main.c:60: str[3] = (CurrentTime[6] & 0x0F) + '0';
      000128 AF 0F            [24]  597 	mov	r7,(_CurrentTime + 0x0006)
      00012A 74 0F            [12]  598 	mov	a,#0x0f
      00012C 5F               [12]  599 	anl	a,r7
      00012D 24 30            [12]  600 	add	a,#0x30
      00012F F5 2A            [12]  601 	mov	(_str + 0x0003),a
                                    602 ;	./src/DS1302/main.c:61: str[4] = '-';
      000131 75 2B 2D         [24]  603 	mov	(_str + 0x0004),#0x2d
                                    604 ;	./src/DS1302/main.c:62: str[5] = (CurrentTime[4] >> 4) + '0'; 
      000134 E5 0D            [12]  605 	mov	a,(_CurrentTime + 0x0004)
      000136 C4               [12]  606 	swap	a
      000137 54 0F            [12]  607 	anl	a,#0x0f
      000139 24 30            [12]  608 	add	a,#0x30
      00013B F5 2C            [12]  609 	mov	(_str + 0x0005),a
                                    610 ;	./src/DS1302/main.c:63: str[6] = (CurrentTime[4] & 0x0F) + '0';
      00013D AF 0D            [24]  611 	mov	r7,(_CurrentTime + 0x0004)
      00013F 74 0F            [12]  612 	mov	a,#0x0f
      000141 5F               [12]  613 	anl	a,r7
      000142 24 30            [12]  614 	add	a,#0x30
      000144 F5 2D            [12]  615 	mov	(_str + 0x0006),a
                                    616 ;	./src/DS1302/main.c:64: str[7] = '-';
      000146 75 2E 2D         [24]  617 	mov	(_str + 0x0007),#0x2d
                                    618 ;	./src/DS1302/main.c:65: str[8] = (CurrentTime[3] >> 4) + '0'; 
      000149 E5 0C            [12]  619 	mov	a,(_CurrentTime + 0x0003)
      00014B C4               [12]  620 	swap	a
      00014C 54 0F            [12]  621 	anl	a,#0x0f
      00014E 24 30            [12]  622 	add	a,#0x30
      000150 F5 2F            [12]  623 	mov	(_str + 0x0008),a
                                    624 ;	./src/DS1302/main.c:66: str[9] = (CurrentTime[3] & 0x0F) + '0';
      000152 AF 0C            [24]  625 	mov	r7,(_CurrentTime + 0x0003)
      000154 74 0F            [12]  626 	mov	a,#0x0f
      000156 5F               [12]  627 	anl	a,r7
      000157 24 30            [12]  628 	add	a,#0x30
      000159 F5 30            [12]  629 	mov	(_str + 0x0009),a
                                    630 ;	./src/DS1302/main.c:67: str[10] = '\0';
      00015B 75 31 00         [24]  631 	mov	(_str + 0x000a),#0x00
                                    632 ;	./src/DS1302/main.c:68: str[11] = (CurrentTime[2] >> 4) + '0';
      00015E E5 0B            [12]  633 	mov	a,(_CurrentTime + 0x0002)
      000160 C4               [12]  634 	swap	a
      000161 54 0F            [12]  635 	anl	a,#0x0f
      000163 24 30            [12]  636 	add	a,#0x30
      000165 F5 32            [12]  637 	mov	(_str + 0x000b),a
                                    638 ;	./src/DS1302/main.c:69: str[12] = (CurrentTime[2] & 0x0F) + '0';
      000167 AF 0B            [24]  639 	mov	r7,(_CurrentTime + 0x0002)
      000169 74 0F            [12]  640 	mov	a,#0x0f
      00016B 5F               [12]  641 	anl	a,r7
      00016C 24 30            [12]  642 	add	a,#0x30
      00016E F5 33            [12]  643 	mov	(_str + 0x000c),a
                                    644 ;	./src/DS1302/main.c:70: str[13] = ':';
      000170 75 34 3A         [24]  645 	mov	(_str + 0x000d),#0x3a
                                    646 ;	./src/DS1302/main.c:71: str[14] = (CurrentTime[1] >> 4) + '0';
      000173 E5 0A            [12]  647 	mov	a,(_CurrentTime + 0x0001)
      000175 C4               [12]  648 	swap	a
      000176 54 0F            [12]  649 	anl	a,#0x0f
      000178 24 30            [12]  650 	add	a,#0x30
      00017A F5 35            [12]  651 	mov	(_str + 0x000e),a
                                    652 ;	./src/DS1302/main.c:72: str[15] = (CurrentTime[1] & 0x0F) + '0';
      00017C AF 0A            [24]  653 	mov	r7,(_CurrentTime + 0x0001)
      00017E 74 0F            [12]  654 	mov	a,#0x0f
      000180 5F               [12]  655 	anl	a,r7
      000181 24 30            [12]  656 	add	a,#0x30
      000183 F5 36            [12]  657 	mov	(_str + 0x000f),a
                                    658 ;	./src/DS1302/main.c:73: str[16] = ':';
      000185 75 37 3A         [24]  659 	mov	(_str + 0x0010),#0x3a
                                    660 ;	./src/DS1302/main.c:74: str[17] = (CurrentTime[0] >> 4) + '0'; 
      000188 E5 09            [12]  661 	mov	a,_CurrentTime
      00018A C4               [12]  662 	swap	a
      00018B 54 0F            [12]  663 	anl	a,#0x0f
      00018D 24 30            [12]  664 	add	a,#0x30
      00018F F5 38            [12]  665 	mov	(_str + 0x0011),a
                                    666 ;	./src/DS1302/main.c:75: str[18] = (CurrentTime[0] & 0x0F) + '0';
      000191 AF 09            [24]  667 	mov	r7,_CurrentTime
      000193 74 0F            [12]  668 	mov	a,#0x0f
      000195 5F               [12]  669 	anl	a,r7
      000196 24 30            [12]  670 	add	a,#0x30
      000198 F5 39            [12]  671 	mov	(_str + 0x0012),a
                                    672 ;	./src/DS1302/main.c:76: str[19] = ' ';
      00019A 75 3A 20         [24]  673 	mov	(_str + 0x0013),#0x20
                                    674 ;	./src/DS1302/main.c:77: str[20] = (CurrentTime[5] >> 4) + '0'; 
      00019D E5 0E            [12]  675 	mov	a,(_CurrentTime + 0x0005)
      00019F C4               [12]  676 	swap	a
      0001A0 54 0F            [12]  677 	anl	a,#0x0f
      0001A2 24 30            [12]  678 	add	a,#0x30
      0001A4 F5 3B            [12]  679 	mov	(_str + 0x0014),a
                                    680 ;	./src/DS1302/main.c:78: str[21] = (CurrentTime[5] & 0x0F) + '0';
      0001A6 AF 0E            [24]  681 	mov	r7,(_CurrentTime + 0x0005)
      0001A8 74 0F            [12]  682 	mov	a,#0x0f
      0001AA 5F               [12]  683 	anl	a,r7
      0001AB 24 30            [12]  684 	add	a,#0x30
      0001AD F5 3C            [12]  685 	mov	(_str + 0x0015),a
                                    686 ;	./src/DS1302/main.c:79: str[22] = '\0';
      0001AF 75 3D 00         [24]  687 	mov	(_str + 0x0016),#0x00
                                    688 ;	./src/DS1302/main.c:81: Disp_1602_str(1, 4, str); 
      0001B2 75 41 27         [24]  689 	mov	_Disp_1602_str_PARM_3,#_str
      0001B5 75 42 00         [24]  690 	mov	(_Disp_1602_str_PARM_3 + 1),#0x00
      0001B8 75 43 40         [24]  691 	mov	(_Disp_1602_str_PARM_3 + 2),#0x40
      0001BB 75 40 04         [24]  692 	mov	_Disp_1602_str_PARM_2,#0x04
      0001BE 75 82 01         [24]  693 	mov	dpl,#0x01
      0001C1 12 02 60         [24]  694 	lcall	_Disp_1602_str
                                    695 ;	./src/DS1302/main.c:82: Disp_1602_str(2, 3, str + 11);
      0001C4 75 41 32         [24]  696 	mov	_Disp_1602_str_PARM_3,#(_str + 0x000b)
      0001C7 75 42 00         [24]  697 	mov	(_Disp_1602_str_PARM_3 + 1),#0x00
      0001CA 75 43 40         [24]  698 	mov	(_Disp_1602_str_PARM_3 + 2),#0x40
      0001CD 75 40 03         [24]  699 	mov	_Disp_1602_str_PARM_2,#0x03
      0001D0 75 82 02         [24]  700 	mov	dpl,#0x02
      0001D3 12 02 60         [24]  701 	lcall	_Disp_1602_str
                                    702 ;	./src/DS1302/main.c:85: }
      0001D6 02 01 09         [24]  703 	ljmp	00104$
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'timmer0'
                                    706 ;------------------------------------------------------------
                                    707 ;T_500ms                   Allocated with name '_timmer0_T_500ms_65537_18'
                                    708 ;------------------------------------------------------------
                                    709 ;	./src/DS1302/main.c:87: void timmer0() __interrupt(1)
                                    710 ;	-----------------------------------------
                                    711 ;	 function timmer0
                                    712 ;	-----------------------------------------
      0001D9                        713 _timmer0:
      0001D9 C0 E0            [24]  714 	push	acc
      0001DB C0 D0            [24]  715 	push	psw
                                    716 ;	./src/DS1302/main.c:89: if(P10 == 1){
                                    717 ;	./src/DS1302/main.c:90: P10 = 0;
                                    718 ;	assignBit
      0001DD 10 90 02         [24]  719 	jbc	_P10,00103$
                                    720 ;	./src/DS1302/main.c:92: P10 = 1;
                                    721 ;	assignBit
      0001E0 D2 90            [12]  722 	setb	_P10
      0001E2                        723 00103$:
                                    724 ;	./src/DS1302/main.c:95: TL0 = T_1ms;
      0001E2 75 8A 67         [24]  725 	mov	_TL0,#0x67
                                    726 ;	./src/DS1302/main.c:96: TH0 = T_1ms >> 8;
      0001E5 75 8C FC         [24]  727 	mov	_TH0,#0xfc
                                    728 ;	./src/DS1302/main.c:97: T_500ms++;
      0001E8 05 3E            [12]  729 	inc	_timmer0_T_500ms_65537_18
      0001EA E4               [12]  730 	clr	a
      0001EB B5 3E 02         [24]  731 	cjne	a,_timmer0_T_500ms_65537_18,00117$
      0001EE 05 3F            [12]  732 	inc	(_timmer0_T_500ms_65537_18 + 1)
      0001F0                        733 00117$:
                                    734 ;	./src/DS1302/main.c:98: if (T_500ms >= 500)
      0001F0 C3               [12]  735 	clr	c
      0001F1 E5 3E            [12]  736 	mov	a,_timmer0_T_500ms_65537_18
      0001F3 94 F4            [12]  737 	subb	a,#0xf4
      0001F5 E5 3F            [12]  738 	mov	a,(_timmer0_T_500ms_65537_18 + 1)
      0001F7 94 01            [12]  739 	subb	a,#0x01
      0001F9 40 08            [24]  740 	jc	00106$
                                    741 ;	./src/DS1302/main.c:100: T_500ms = 0;
      0001FB E4               [12]  742 	clr	a
      0001FC F5 3E            [12]  743 	mov	_timmer0_T_500ms_65537_18,a
      0001FE F5 3F            [12]  744 	mov	(_timmer0_T_500ms_65537_18 + 1),a
                                    745 ;	./src/DS1302/main.c:101: T_flag = 1;
      000200 75 08 01         [24]  746 	mov	_T_flag,#0x01
      000203                        747 00106$:
                                    748 ;	./src/DS1302/main.c:103: }
      000203 D0 D0            [24]  749 	pop	psw
      000205 D0 E0            [24]  750 	pop	acc
      000207 32               [24]  751 	reti
                                    752 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    753 ;	eliminated unneeded push/pop dpl
                                    754 ;	eliminated unneeded push/pop dph
                                    755 ;	eliminated unneeded push/pop b
                                    756 	.area CSEG    (CODE)
                                    757 	.area CONST   (CODE)
                                    758 	.area XINIT   (CODE)
                                    759 	.area CABS    (ABS,CODE)
