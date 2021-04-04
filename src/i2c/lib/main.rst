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
                                     12 	.globl _delayms
                                     13 	.globl _RdByte_AT24C256
                                     14 	.globl _WrByte_AT24C256
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
                                    299 ;--------------------------------------------------------
                                    300 ; overlayable register banks
                                    301 ;--------------------------------------------------------
                                    302 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        303 	.ds 8
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
      000008                        308 _main_dat_65536_14:
      000008                        309 	.ds 10
                                    310 ;--------------------------------------------------------
                                    311 ; overlayable items in internal ram 
                                    312 ;--------------------------------------------------------
                                    313 	.area	OSEG    (OVR,DATA)
                                    314 ;--------------------------------------------------------
                                    315 ; Stack segment in internal ram 
                                    316 ;--------------------------------------------------------
                                    317 	.area	SSEG
      000019                        318 __start__stack:
      000019                        319 	.ds	1
                                    320 
                                    321 ;--------------------------------------------------------
                                    322 ; indirectly addressable internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area ISEG    (DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; absolute internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area IABS    (ABS,DATA)
                                    329 	.area IABS    (ABS,DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; bit data
                                    332 ;--------------------------------------------------------
                                    333 	.area BSEG    (BIT)
                                    334 ;--------------------------------------------------------
                                    335 ; paged external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area PSEG    (PAG,XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XSEG    (XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; absolute external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XABS    (ABS,XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; external initialized ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XISEG   (XDATA)
                                    350 	.area HOME    (CODE)
                                    351 	.area GSINIT0 (CODE)
                                    352 	.area GSINIT1 (CODE)
                                    353 	.area GSINIT2 (CODE)
                                    354 	.area GSINIT3 (CODE)
                                    355 	.area GSINIT4 (CODE)
                                    356 	.area GSINIT5 (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area CSEG    (CODE)
                                    360 ;--------------------------------------------------------
                                    361 ; interrupt vector 
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
      000000                        364 __interrupt_vect:
      000000 02 00 06         [24]  365 	ljmp	__sdcc_gsinit_startup
                                    366 ;--------------------------------------------------------
                                    367 ; global & static initialisations
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.globl __sdcc_gsinit_startup
                                    374 	.globl __sdcc_program_startup
                                    375 	.globl __start__stack
                                    376 	.globl __mcs51_genXINIT
                                    377 	.globl __mcs51_genXRAMCLEAR
                                    378 	.globl __mcs51_genRAMCLEAR
                                    379 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  380 	ljmp	__sdcc_program_startup
                                    381 ;--------------------------------------------------------
                                    382 ; Home
                                    383 ;--------------------------------------------------------
                                    384 	.area HOME    (CODE)
                                    385 	.area HOME    (CODE)
      000003                        386 __sdcc_program_startup:
      000003 02 00 7B         [24]  387 	ljmp	_main
                                    388 ;	return from main will return to caller
                                    389 ;--------------------------------------------------------
                                    390 ; code
                                    391 ;--------------------------------------------------------
                                    392 	.area CSEG    (CODE)
                                    393 ;------------------------------------------------------------
                                    394 ;Allocation info for local variables in function 'delayms'
                                    395 ;------------------------------------------------------------
                                    396 ;z                         Allocated to registers 
                                    397 ;------------------------------------------------------------
                                    398 ;	./src/i2c/main.c:17: void delayms(unsigned int z)
                                    399 ;	-----------------------------------------
                                    400 ;	 function delayms
                                    401 ;	-----------------------------------------
      000062                        402 _delayms:
                           000007   403 	ar7 = 0x07
                           000006   404 	ar6 = 0x06
                           000005   405 	ar5 = 0x05
                           000004   406 	ar4 = 0x04
                           000003   407 	ar3 = 0x03
                           000002   408 	ar2 = 0x02
                           000001   409 	ar1 = 0x01
                           000000   410 	ar0 = 0x00
      000062 AE 82            [24]  411 	mov	r6,dpl
      000064 AF 83            [24]  412 	mov	r7,dph
                                    413 ;	./src/i2c/main.c:19: while (z)
      000066                        414 00101$:
      000066 EE               [12]  415 	mov	a,r6
      000067 4F               [12]  416 	orl	a,r7
      000068 60 10            [24]  417 	jz	00104$
                                    418 ;	./src/i2c/main.c:21: NOP();
      00006A 00               [12]  419 	NOP	
                                    420 ;	./src/i2c/main.c:22: NOP();
      00006B 00               [12]  421 	NOP	
                                    422 ;	./src/i2c/main.c:23: NOP();
      00006C 00               [12]  423 	NOP	
                                    424 ;	./src/i2c/main.c:24: NOP();
      00006D 00               [12]  425 	NOP	
                                    426 ;	./src/i2c/main.c:25: NOP();
      00006E 00               [12]  427 	NOP	
                                    428 ;	./src/i2c/main.c:26: NOP();
      00006F 00               [12]  429 	NOP	
                                    430 ;	./src/i2c/main.c:27: NOP();
      000070 00               [12]  431 	NOP	
                                    432 ;	./src/i2c/main.c:28: NOP();
      000071 00               [12]  433 	NOP	
                                    434 ;	./src/i2c/main.c:29: NOP();
      000072 00               [12]  435 	NOP	
                                    436 ;	./src/i2c/main.c:30: z--;
      000073 1E               [12]  437 	dec	r6
      000074 BE FF 01         [24]  438 	cjne	r6,#0xff,00116$
      000077 1F               [12]  439 	dec	r7
      000078                        440 00116$:
      000078 80 EC            [24]  441 	sjmp	00101$
      00007A                        442 00104$:
                                    443 ;	./src/i2c/main.c:32: }
      00007A 22               [24]  444 	ret
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'main'
                                    447 ;------------------------------------------------------------
                                    448 ;d                         Allocated to registers r7 
                                    449 ;dat                       Allocated with name '_main_dat_65536_14'
                                    450 ;------------------------------------------------------------
                                    451 ;	./src/i2c/main.c:34: void main()
                                    452 ;	-----------------------------------------
                                    453 ;	 function main
                                    454 ;	-----------------------------------------
      00007B                        455 _main:
                                    456 ;	./src/i2c/main.c:37: unsigned char dat[10] = "";
      00007B 75 08 00         [24]  457 	mov	_main_dat_65536_14,#0x00
      00007E 75 09 00         [24]  458 	mov	(_main_dat_65536_14 + 0x0001),#0x00
      000081 75 0A 00         [24]  459 	mov	(_main_dat_65536_14 + 0x0002),#0x00
      000084 75 0B 00         [24]  460 	mov	(_main_dat_65536_14 + 0x0003),#0x00
      000087 75 0C 00         [24]  461 	mov	(_main_dat_65536_14 + 0x0004),#0x00
      00008A 75 0D 00         [24]  462 	mov	(_main_dat_65536_14 + 0x0005),#0x00
      00008D 75 0E 00         [24]  463 	mov	(_main_dat_65536_14 + 0x0006),#0x00
      000090 75 0F 00         [24]  464 	mov	(_main_dat_65536_14 + 0x0007),#0x00
      000093 75 10 00         [24]  465 	mov	(_main_dat_65536_14 + 0x0008),#0x00
      000096 75 11 00         [24]  466 	mov	(_main_dat_65536_14 + 0x0009),#0x00
                                    467 ;	./src/i2c/main.c:38: Init_1602();
      000099 12 01 6F         [24]  468 	lcall	_Init_1602
                                    469 ;	./src/i2c/main.c:39: WrByte_AT24C256(0x0000, 1);
      00009C 75 16 01         [24]  470 	mov	_WrByte_AT24C256_PARM_2,#0x01
      00009F 90 00 00         [24]  471 	mov	dptr,#0x0000
      0000A2 12 01 C6         [24]  472 	lcall	_WrByte_AT24C256
                                    473 ;	./src/i2c/main.c:40: Disp_1602_str(1, 2, "ACT24C0X TEST!");
      0000A5 75 13 FA         [24]  474 	mov	_Disp_1602_str_PARM_3,#___str_1
      0000A8 75 14 03         [24]  475 	mov	(_Disp_1602_str_PARM_3 + 1),#(___str_1 >> 8)
      0000AB 75 15 80         [24]  476 	mov	(_Disp_1602_str_PARM_3 + 2),#0x80
      0000AE 75 12 02         [24]  477 	mov	_Disp_1602_str_PARM_2,#0x02
      0000B1 75 82 01         [24]  478 	mov	dpl,#0x01
      0000B4 12 01 87         [24]  479 	lcall	_Disp_1602_str
                                    480 ;	./src/i2c/main.c:41: delayms(1000);
      0000B7 90 03 E8         [24]  481 	mov	dptr,#0x03e8
      0000BA 12 00 62         [24]  482 	lcall	_delayms
                                    483 ;	./src/i2c/main.c:42: d = RdByte_AT24C256(0x0000);
      0000BD 90 00 00         [24]  484 	mov	dptr,#0x0000
      0000C0 12 01 F6         [24]  485 	lcall	_RdByte_AT24C256
      0000C3 AF 82            [24]  486 	mov	r7,dpl
                                    487 ;	./src/i2c/main.c:43: dat[0] = d / 100 + '0';
      0000C5 7E 00            [12]  488 	mov	r6,#0x00
      0000C7 75 17 64         [24]  489 	mov	__divsint_PARM_2,#0x64
                                    490 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0000CA 8E 18            [24]  491 	mov	(__divsint_PARM_2 + 1),r6
      0000CC 8F 82            [24]  492 	mov	dpl,r7
      0000CE 8E 83            [24]  493 	mov	dph,r6
      0000D0 C0 07            [24]  494 	push	ar7
      0000D2 C0 06            [24]  495 	push	ar6
      0000D4 12 03 BE         [24]  496 	lcall	__divsint
      0000D7 AC 82            [24]  497 	mov	r4,dpl
      0000D9 D0 06            [24]  498 	pop	ar6
      0000DB D0 07            [24]  499 	pop	ar7
      0000DD 74 30            [12]  500 	mov	a,#0x30
      0000DF 2C               [12]  501 	add	a,r4
      0000E0 F5 08            [12]  502 	mov	_main_dat_65536_14,a
                                    503 ;	./src/i2c/main.c:44: dat[1] = d % 100 / 10 + '0';
      0000E2 75 17 64         [24]  504 	mov	__modsint_PARM_2,#0x64
      0000E5 75 18 00         [24]  505 	mov	(__modsint_PARM_2 + 1),#0x00
      0000E8 8F 82            [24]  506 	mov	dpl,r7
      0000EA 8E 83            [24]  507 	mov	dph,r6
      0000EC C0 07            [24]  508 	push	ar7
      0000EE C0 06            [24]  509 	push	ar6
      0000F0 12 03 88         [24]  510 	lcall	__modsint
      0000F3 75 17 0A         [24]  511 	mov	__divsint_PARM_2,#0x0a
      0000F6 75 18 00         [24]  512 	mov	(__divsint_PARM_2 + 1),#0x00
      0000F9 12 03 BE         [24]  513 	lcall	__divsint
      0000FC AC 82            [24]  514 	mov	r4,dpl
      0000FE D0 06            [24]  515 	pop	ar6
      000100 D0 07            [24]  516 	pop	ar7
      000102 74 30            [12]  517 	mov	a,#0x30
      000104 2C               [12]  518 	add	a,r4
      000105 F5 09            [12]  519 	mov	(_main_dat_65536_14 + 0x0001),a
                                    520 ;	./src/i2c/main.c:45: dat[2] = d % 10 + '0';
      000107 75 17 0A         [24]  521 	mov	__modsint_PARM_2,#0x0a
      00010A 75 18 00         [24]  522 	mov	(__modsint_PARM_2 + 1),#0x00
      00010D 8F 82            [24]  523 	mov	dpl,r7
      00010F 8E 83            [24]  524 	mov	dph,r6
      000111 12 03 88         [24]  525 	lcall	__modsint
      000114 AE 82            [24]  526 	mov	r6,dpl
      000116 74 30            [12]  527 	mov	a,#0x30
      000118 2E               [12]  528 	add	a,r6
      000119 F5 0A            [12]  529 	mov	(_main_dat_65536_14 + 0x0002),a
                                    530 ;	./src/i2c/main.c:46: Disp_1602_str(2, 3, dat);
      00011B 75 13 08         [24]  531 	mov	_Disp_1602_str_PARM_3,#_main_dat_65536_14
      00011E 75 14 00         [24]  532 	mov	(_Disp_1602_str_PARM_3 + 1),#0x00
      000121 75 15 40         [24]  533 	mov	(_Disp_1602_str_PARM_3 + 2),#0x40
      000124 75 12 03         [24]  534 	mov	_Disp_1602_str_PARM_2,#0x03
      000127 75 82 02         [24]  535 	mov	dpl,#0x02
      00012A 12 01 87         [24]  536 	lcall	_Disp_1602_str
                                    537 ;	./src/i2c/main.c:47: while (1)
      00012D                        538 00102$:
                                    539 ;	./src/i2c/main.c:49: }
      00012D 80 FE            [24]  540 	sjmp	00102$
                                    541 	.area CSEG    (CODE)
                                    542 	.area CONST   (CODE)
                                    543 	.area CONST   (CODE)
      0003FA                        544 ___str_1:
      0003FA 41 43 54 32 34 43 30   545 	.ascii "ACT24C0X TEST!"
             58 20 54 45 53 54 21
      000408 00                     546 	.db 0x00
                                    547 	.area CSEG    (CODE)
                                    548 	.area XINIT   (CODE)
                                    549 	.area CABS    (ABS,CODE)
