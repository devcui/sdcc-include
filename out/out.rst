                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module led1
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _CP_RL2
                                     13 	.globl _C_T2
                                     14 	.globl _TR2
                                     15 	.globl _EXEN2
                                     16 	.globl _TCLK
                                     17 	.globl _RCLK
                                     18 	.globl _EXF2
                                     19 	.globl _TF2
                                     20 	.globl _T2
                                     21 	.globl _T2EX
                                     22 	.globl _RI
                                     23 	.globl _TI
                                     24 	.globl _RB8
                                     25 	.globl _TB8
                                     26 	.globl _REN
                                     27 	.globl _SM2
                                     28 	.globl _SM1
                                     29 	.globl _FE
                                     30 	.globl _SM0
                                     31 	.globl _RXD
                                     32 	.globl _TXD
                                     33 	.globl _INT0
                                     34 	.globl _INT1
                                     35 	.globl _T0
                                     36 	.globl _T1
                                     37 	.globl _WR
                                     38 	.globl _RD
                                     39 	.globl _PX0
                                     40 	.globl _PT0
                                     41 	.globl _PX1
                                     42 	.globl _PT1
                                     43 	.globl _PS
                                     44 	.globl _PT2
                                     45 	.globl _EX0
                                     46 	.globl _ET0
                                     47 	.globl _EX1
                                     48 	.globl _ET1
                                     49 	.globl _ES
                                     50 	.globl _ET2
                                     51 	.globl _EC
                                     52 	.globl _EA
                                     53 	.globl _IT0
                                     54 	.globl _IE0
                                     55 	.globl _IT1
                                     56 	.globl _IE1
                                     57 	.globl _TR0
                                     58 	.globl _TF0
                                     59 	.globl _TR1
                                     60 	.globl _TF1
                                     61 	.globl _P
                                     62 	.globl _OV
                                     63 	.globl _RS0
                                     64 	.globl _RS1
                                     65 	.globl _F0
                                     66 	.globl _AC
                                     67 	.globl _CY
                                     68 	.globl _P37
                                     69 	.globl _P36
                                     70 	.globl _P35
                                     71 	.globl _P34
                                     72 	.globl _P33
                                     73 	.globl _P32
                                     74 	.globl _P31
                                     75 	.globl _P30
                                     76 	.globl _P27
                                     77 	.globl _P26
                                     78 	.globl _P25
                                     79 	.globl _P24
                                     80 	.globl _P23
                                     81 	.globl _P22
                                     82 	.globl _P21
                                     83 	.globl _P20
                                     84 	.globl _P17
                                     85 	.globl _P16
                                     86 	.globl _P15
                                     87 	.globl _P14
                                     88 	.globl _P13
                                     89 	.globl _P12
                                     90 	.globl _P11
                                     91 	.globl _P10
                                     92 	.globl _P07
                                     93 	.globl _P06
                                     94 	.globl _P05
                                     95 	.globl _P04
                                     96 	.globl _P03
                                     97 	.globl _P02
                                     98 	.globl _P01
                                     99 	.globl _P00
                                    100 	.globl _P40
                                    101 	.globl _P41
                                    102 	.globl _P42
                                    103 	.globl _P43
                                    104 	.globl _P44
                                    105 	.globl _P45
                                    106 	.globl _P46
                                    107 	.globl _TH2
                                    108 	.globl _TL2
                                    109 	.globl _RCAP2H
                                    110 	.globl _RCAP2L
                                    111 	.globl _T2MOD
                                    112 	.globl _T2CON
                                    113 	.globl _SADEN
                                    114 	.globl _IPH
                                    115 	.globl _SADDR
                                    116 	.globl _AUXR1
                                    117 	.globl _AUXR
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _IP
                                    121 	.globl _IE
                                    122 	.globl _TH1
                                    123 	.globl _TH0
                                    124 	.globl _TL1
                                    125 	.globl _TL0
                                    126 	.globl _TMOD
                                    127 	.globl _TCON
                                    128 	.globl _PCON
                                    129 	.globl _DPH
                                    130 	.globl _DPL
                                    131 	.globl _SP
                                    132 	.globl _B
                                    133 	.globl _ACC
                                    134 	.globl _PSW
                                    135 	.globl _P3
                                    136 	.globl _P2
                                    137 	.globl _P1
                                    138 	.globl _P0
                                    139 	.globl _ISP_CONTR
                                    140 	.globl _ISP_TRIG
                                    141 	.globl _ISP_CMD
                                    142 	.globl _ISP_ADDRL
                                    143 	.globl _ISP_ADDRH
                                    144 	.globl _ISP_DATA
                                    145 	.globl _WDT_CONTR
                                    146 	.globl _XICON
                                    147 	.globl _P4
                                    148 	.globl _flag
                                    149 	.globl _i
                                    150 ;--------------------------------------------------------
                                    151 ; special function registers
                                    152 ;--------------------------------------------------------
                                    153 	.area RSEG    (ABS,DATA)
      000000                        154 	.org 0x0000
                           0000E8   155 _P4	=	0x00e8
                           0000C0   156 _XICON	=	0x00c0
                           0000E1   157 _WDT_CONTR	=	0x00e1
                           0000E2   158 _ISP_DATA	=	0x00e2
                           0000E3   159 _ISP_ADDRH	=	0x00e3
                           0000E4   160 _ISP_ADDRL	=	0x00e4
                           0000E5   161 _ISP_CMD	=	0x00e5
                           0000E6   162 _ISP_TRIG	=	0x00e6
                           0000E7   163 _ISP_CONTR	=	0x00e7
                           000080   164 _P0	=	0x0080
                           000090   165 _P1	=	0x0090
                           0000A0   166 _P2	=	0x00a0
                           0000B0   167 _P3	=	0x00b0
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000F0   170 _B	=	0x00f0
                           000081   171 _SP	=	0x0081
                           000082   172 _DPL	=	0x0082
                           000083   173 _DPH	=	0x0083
                           000087   174 _PCON	=	0x0087
                           000088   175 _TCON	=	0x0088
                           000089   176 _TMOD	=	0x0089
                           00008A   177 _TL0	=	0x008a
                           00008B   178 _TL1	=	0x008b
                           00008C   179 _TH0	=	0x008c
                           00008D   180 _TH1	=	0x008d
                           0000A8   181 _IE	=	0x00a8
                           0000B8   182 _IP	=	0x00b8
                           000098   183 _SCON	=	0x0098
                           000099   184 _SBUF	=	0x0099
                           00008E   185 _AUXR	=	0x008e
                           0000A2   186 _AUXR1	=	0x00a2
                           0000A9   187 _SADDR	=	0x00a9
                           0000B7   188 _IPH	=	0x00b7
                           0000B9   189 _SADEN	=	0x00b9
                           0000C8   190 _T2CON	=	0x00c8
                           0000C9   191 _T2MOD	=	0x00c9
                           0000CA   192 _RCAP2L	=	0x00ca
                           0000CB   193 _RCAP2H	=	0x00cb
                           0000CC   194 _TL2	=	0x00cc
                           0000CD   195 _TH2	=	0x00cd
                                    196 ;--------------------------------------------------------
                                    197 ; special function bits
                                    198 ;--------------------------------------------------------
                                    199 	.area RSEG    (ABS,DATA)
      000000                        200 	.org 0x0000
                           0000EE   201 _P46	=	0x00ee
                           0000ED   202 _P45	=	0x00ed
                           0000EC   203 _P44	=	0x00ec
                           0000EB   204 _P43	=	0x00eb
                           0000EA   205 _P42	=	0x00ea
                           0000E9   206 _P41	=	0x00e9
                           0000E8   207 _P40	=	0x00e8
                           000080   208 _P00	=	0x0080
                           000081   209 _P01	=	0x0081
                           000082   210 _P02	=	0x0082
                           000083   211 _P03	=	0x0083
                           000084   212 _P04	=	0x0084
                           000085   213 _P05	=	0x0085
                           000086   214 _P06	=	0x0086
                           000087   215 _P07	=	0x0087
                           000090   216 _P10	=	0x0090
                           000091   217 _P11	=	0x0091
                           000092   218 _P12	=	0x0092
                           000093   219 _P13	=	0x0093
                           000094   220 _P14	=	0x0094
                           000095   221 _P15	=	0x0095
                           000096   222 _P16	=	0x0096
                           000097   223 _P17	=	0x0097
                           0000A0   224 _P20	=	0x00a0
                           0000A1   225 _P21	=	0x00a1
                           0000A2   226 _P22	=	0x00a2
                           0000A3   227 _P23	=	0x00a3
                           0000A4   228 _P24	=	0x00a4
                           0000A5   229 _P25	=	0x00a5
                           0000A6   230 _P26	=	0x00a6
                           0000A7   231 _P27	=	0x00a7
                           0000B0   232 _P30	=	0x00b0
                           0000B1   233 _P31	=	0x00b1
                           0000B2   234 _P32	=	0x00b2
                           0000B3   235 _P33	=	0x00b3
                           0000B4   236 _P34	=	0x00b4
                           0000B5   237 _P35	=	0x00b5
                           0000B6   238 _P36	=	0x00b6
                           0000B7   239 _P37	=	0x00b7
                           0000D7   240 _CY	=	0x00d7
                           0000D6   241 _AC	=	0x00d6
                           0000D5   242 _F0	=	0x00d5
                           0000D4   243 _RS1	=	0x00d4
                           0000D3   244 _RS0	=	0x00d3
                           0000D2   245 _OV	=	0x00d2
                           0000D0   246 _P	=	0x00d0
                           00008F   247 _TF1	=	0x008f
                           00008E   248 _TR1	=	0x008e
                           00008D   249 _TF0	=	0x008d
                           00008C   250 _TR0	=	0x008c
                           00008B   251 _IE1	=	0x008b
                           00008A   252 _IT1	=	0x008a
                           000089   253 _IE0	=	0x0089
                           000088   254 _IT0	=	0x0088
                           0000AF   255 _EA	=	0x00af
                           0000AE   256 _EC	=	0x00ae
                           0000AD   257 _ET2	=	0x00ad
                           0000AC   258 _ES	=	0x00ac
                           0000AB   259 _ET1	=	0x00ab
                           0000AA   260 _EX1	=	0x00aa
                           0000A9   261 _ET0	=	0x00a9
                           0000A8   262 _EX0	=	0x00a8
                           0000BD   263 _PT2	=	0x00bd
                           0000BC   264 _PS	=	0x00bc
                           0000BB   265 _PT1	=	0x00bb
                           0000BA   266 _PX1	=	0x00ba
                           0000B9   267 _PT0	=	0x00b9
                           0000B8   268 _PX0	=	0x00b8
                           0000B7   269 _RD	=	0x00b7
                           0000B6   270 _WR	=	0x00b6
                           0000B5   271 _T1	=	0x00b5
                           0000B4   272 _T0	=	0x00b4
                           0000B3   273 _INT1	=	0x00b3
                           0000B2   274 _INT0	=	0x00b2
                           0000B1   275 _TXD	=	0x00b1
                           0000B0   276 _RXD	=	0x00b0
                           00009F   277 _SM0	=	0x009f
                           00009F   278 _FE	=	0x009f
                           00009E   279 _SM1	=	0x009e
                           00009D   280 _SM2	=	0x009d
                           00009C   281 _REN	=	0x009c
                           00009B   282 _TB8	=	0x009b
                           00009A   283 _RB8	=	0x009a
                           000099   284 _TI	=	0x0099
                           000098   285 _RI	=	0x0098
                           000091   286 _T2EX	=	0x0091
                           000090   287 _T2	=	0x0090
                           0000CF   288 _TF2	=	0x00cf
                           0000CE   289 _EXF2	=	0x00ce
                           0000CD   290 _RCLK	=	0x00cd
                           0000CC   291 _TCLK	=	0x00cc
                           0000CB   292 _EXEN2	=	0x00cb
                           0000CA   293 _TR2	=	0x00ca
                           0000C9   294 _C_T2	=	0x00c9
                           0000C8   295 _CP_RL2	=	0x00c8
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable register banks
                                    298 ;--------------------------------------------------------
                                    299 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        300 	.ds 8
                                    301 ;--------------------------------------------------------
                                    302 ; internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area DSEG    (DATA)
      000008                        305 _i::
      000008                        306 	.ds 2
      00000A                        307 _flag::
      00000A                        308 	.ds 2
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable items in internal ram 
                                    311 ;--------------------------------------------------------
                                    312 ;--------------------------------------------------------
                                    313 ; Stack segment in internal ram 
                                    314 ;--------------------------------------------------------
                                    315 	.area	SSEG
      00000C                        316 __start__stack:
      00000C                        317 	.ds	1
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
                                    377 ;	./src/led/led1.c:14: int flag = 0;
      00005F E4               [12]  378 	clr	a
      000060 F5 0A            [12]  379 	mov	_flag,a
      000062 F5 0B            [12]  380 	mov	(_flag + 1),a
                                    381 	.area GSFINAL (CODE)
      000064 02 00 03         [24]  382 	ljmp	__sdcc_program_startup
                                    383 ;--------------------------------------------------------
                                    384 ; Home
                                    385 ;--------------------------------------------------------
                                    386 	.area HOME    (CODE)
                                    387 	.area HOME    (CODE)
      000003                        388 __sdcc_program_startup:
      000003 02 00 67         [24]  389 	ljmp	_main
                                    390 ;	return from main will return to caller
                                    391 ;--------------------------------------------------------
                                    392 ; code
                                    393 ;--------------------------------------------------------
                                    394 	.area CSEG    (CODE)
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'main'
                                    397 ;------------------------------------------------------------
                                    398 ;	./src/led/led1.c:16: void main()
                                    399 ;	-----------------------------------------
                                    400 ;	 function main
                                    401 ;	-----------------------------------------
      000067                        402 _main:
                           000007   403 	ar7 = 0x07
                           000006   404 	ar6 = 0x06
                           000005   405 	ar5 = 0x05
                           000004   406 	ar4 = 0x04
                           000003   407 	ar3 = 0x03
                           000002   408 	ar2 = 0x02
                           000001   409 	ar1 = 0x01
                           000000   410 	ar0 = 0x00
                                    411 ;	./src/led/led1.c:18: while (1)
      000067                        412 00106$:
                                    413 ;	./src/led/led1.c:20: P00 = 0;
                                    414 ;	assignBit
      000067 C2 80            [12]  415 	clr	_P00
                                    416 ;	./src/led/led1.c:21: P1 = ~(0x01 << flag);
      000069 AF 0A            [24]  417 	mov	r7,_flag
      00006B 8F F0            [24]  418 	mov	b,r7
      00006D 05 F0            [12]  419 	inc	b
      00006F 74 01            [12]  420 	mov	a,#0x01
      000071 80 02            [24]  421 	sjmp	00131$
      000073                        422 00129$:
      000073 25 E0            [12]  423 	add	a,acc
      000075                        424 00131$:
      000075 D5 F0 FB         [24]  425 	djnz	b,00129$
      000078 F4               [12]  426 	cpl	a
      000079 F5 90            [12]  427 	mov	_P1,a
                                    428 ;	./src/led/led1.c:22: P00 = 1;
                                    429 ;	assignBit
      00007B D2 80            [12]  430 	setb	_P00
                                    431 ;	./src/led/led1.c:23: for (i = 0; i < 2000; i++)
      00007D 75 08 D0         [24]  432 	mov	_i,#0xd0
      000080 75 09 07         [24]  433 	mov	(_i + 1),#0x07
      000083                        434 00110$:
      000083 15 08            [12]  435 	dec	_i
      000085 74 FF            [12]  436 	mov	a,#0xff
      000087 B5 08 02         [24]  437 	cjne	a,_i,00132$
      00008A 15 09            [12]  438 	dec	(_i + 1)
      00008C                        439 00132$:
      00008C E5 08            [12]  440 	mov	a,_i
      00008E 45 09            [12]  441 	orl	a,(_i + 1)
      000090 70 F1            [24]  442 	jnz	00110$
      000092 75 08 D0         [24]  443 	mov	_i,#0xd0
      000095 75 09 07         [24]  444 	mov	(_i + 1),#0x07
                                    445 ;	./src/led/led1.c:25: if (flag > 8)
      000098 C3               [12]  446 	clr	c
      000099 74 08            [12]  447 	mov	a,#0x08
      00009B 95 0A            [12]  448 	subb	a,_flag
      00009D 74 80            [12]  449 	mov	a,#(0x00 ^ 0x80)
      00009F 85 0B F0         [24]  450 	mov	b,(_flag + 1)
      0000A2 63 F0 80         [24]  451 	xrl	b,#0x80
      0000A5 95 F0            [12]  452 	subb	a,b
      0000A7 50 07            [24]  453 	jnc	00103$
                                    454 ;	./src/led/led1.c:27: flag = 0;
      0000A9 E4               [12]  455 	clr	a
      0000AA F5 0A            [12]  456 	mov	_flag,a
      0000AC F5 0B            [12]  457 	mov	(_flag + 1),a
      0000AE 80 B7            [24]  458 	sjmp	00106$
      0000B0                        459 00103$:
                                    460 ;	./src/led/led1.c:31: flag++;
      0000B0 05 0A            [12]  461 	inc	_flag
      0000B2 E4               [12]  462 	clr	a
      0000B3 B5 0A B1         [24]  463 	cjne	a,_flag,00106$
      0000B6 05 0B            [12]  464 	inc	(_flag + 1)
                                    465 ;	./src/led/led1.c:34: }
      0000B8 80 AD            [24]  466 	sjmp	00106$
                                    467 	.area CSEG    (CODE)
                                    468 	.area CONST   (CODE)
                                    469 	.area XINIT   (CODE)
                                    470 	.area CABS    (ABS,CODE)
