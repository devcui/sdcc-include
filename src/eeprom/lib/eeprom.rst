                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ISP_API_readData
                                     12 	.globl _ISP_API_trigger
                                     13 	.globl _ISP_IAP_trigger
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
                                    150 	.globl _ISP_IAP_writeData_PARM_3
                                    151 	.globl _ISP_IAP_writeData_PARM_2
                                    152 	.globl _ISP_API_readData_PARM_3
                                    153 	.globl _ISP_API_readData_PARM_2
                                    154 	.globl _ISP_IAP_disable
                                    155 	.globl _ISP_IAP_writeData
                                    156 	.globl _ISP_IAP_sectorErase
                                    157 ;--------------------------------------------------------
                                    158 ; special function registers
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           0000E8   162 _P4	=	0x00e8
                           0000C0   163 _XICON	=	0x00c0
                           0000E1   164 _WDT_CONTR	=	0x00e1
                           0000E2   165 _ISP_DATA	=	0x00e2
                           0000E3   166 _ISP_ADDRH	=	0x00e3
                           0000E4   167 _ISP_ADDRL	=	0x00e4
                           0000E5   168 _ISP_CMD	=	0x00e5
                           0000E6   169 _ISP_TRIG	=	0x00e6
                           0000E7   170 _ISP_CONTR	=	0x00e7
                           000080   171 _P0	=	0x0080
                           000090   172 _P1	=	0x0090
                           0000A0   173 _P2	=	0x00a0
                           0000B0   174 _P3	=	0x00b0
                           0000D0   175 _PSW	=	0x00d0
                           0000E0   176 _ACC	=	0x00e0
                           0000F0   177 _B	=	0x00f0
                           000081   178 _SP	=	0x0081
                           000082   179 _DPL	=	0x0082
                           000083   180 _DPH	=	0x0083
                           000087   181 _PCON	=	0x0087
                           000088   182 _TCON	=	0x0088
                           000089   183 _TMOD	=	0x0089
                           00008A   184 _TL0	=	0x008a
                           00008B   185 _TL1	=	0x008b
                           00008C   186 _TH0	=	0x008c
                           00008D   187 _TH1	=	0x008d
                           0000A8   188 _IE	=	0x00a8
                           0000B8   189 _IP	=	0x00b8
                           000098   190 _SCON	=	0x0098
                           000099   191 _SBUF	=	0x0099
                           00008E   192 _AUXR	=	0x008e
                           0000A2   193 _AUXR1	=	0x00a2
                           0000A9   194 _SADDR	=	0x00a9
                           0000B7   195 _IPH	=	0x00b7
                           0000B9   196 _SADEN	=	0x00b9
                           0000C8   197 _T2CON	=	0x00c8
                           0000C9   198 _T2MOD	=	0x00c9
                           0000CA   199 _RCAP2L	=	0x00ca
                           0000CB   200 _RCAP2H	=	0x00cb
                           0000CC   201 _TL2	=	0x00cc
                           0000CD   202 _TH2	=	0x00cd
                                    203 ;--------------------------------------------------------
                                    204 ; special function bits
                                    205 ;--------------------------------------------------------
                                    206 	.area RSEG    (ABS,DATA)
      000000                        207 	.org 0x0000
                           0000EE   208 _P46	=	0x00ee
                           0000ED   209 _P45	=	0x00ed
                           0000EC   210 _P44	=	0x00ec
                           0000EB   211 _P43	=	0x00eb
                           0000EA   212 _P42	=	0x00ea
                           0000E9   213 _P41	=	0x00e9
                           0000E8   214 _P40	=	0x00e8
                           000080   215 _P00	=	0x0080
                           000081   216 _P01	=	0x0081
                           000082   217 _P02	=	0x0082
                           000083   218 _P03	=	0x0083
                           000084   219 _P04	=	0x0084
                           000085   220 _P05	=	0x0085
                           000086   221 _P06	=	0x0086
                           000087   222 _P07	=	0x0087
                           000090   223 _P10	=	0x0090
                           000091   224 _P11	=	0x0091
                           000092   225 _P12	=	0x0092
                           000093   226 _P13	=	0x0093
                           000094   227 _P14	=	0x0094
                           000095   228 _P15	=	0x0095
                           000096   229 _P16	=	0x0096
                           000097   230 _P17	=	0x0097
                           0000A0   231 _P20	=	0x00a0
                           0000A1   232 _P21	=	0x00a1
                           0000A2   233 _P22	=	0x00a2
                           0000A3   234 _P23	=	0x00a3
                           0000A4   235 _P24	=	0x00a4
                           0000A5   236 _P25	=	0x00a5
                           0000A6   237 _P26	=	0x00a6
                           0000A7   238 _P27	=	0x00a7
                           0000B0   239 _P30	=	0x00b0
                           0000B1   240 _P31	=	0x00b1
                           0000B2   241 _P32	=	0x00b2
                           0000B3   242 _P33	=	0x00b3
                           0000B4   243 _P34	=	0x00b4
                           0000B5   244 _P35	=	0x00b5
                           0000B6   245 _P36	=	0x00b6
                           0000B7   246 _P37	=	0x00b7
                           0000D7   247 _CY	=	0x00d7
                           0000D6   248 _AC	=	0x00d6
                           0000D5   249 _F0	=	0x00d5
                           0000D4   250 _RS1	=	0x00d4
                           0000D3   251 _RS0	=	0x00d3
                           0000D2   252 _OV	=	0x00d2
                           0000D0   253 _P	=	0x00d0
                           00008F   254 _TF1	=	0x008f
                           00008E   255 _TR1	=	0x008e
                           00008D   256 _TF0	=	0x008d
                           00008C   257 _TR0	=	0x008c
                           00008B   258 _IE1	=	0x008b
                           00008A   259 _IT1	=	0x008a
                           000089   260 _IE0	=	0x0089
                           000088   261 _IT0	=	0x0088
                           0000AF   262 _EA	=	0x00af
                           0000AE   263 _EC	=	0x00ae
                           0000AD   264 _ET2	=	0x00ad
                           0000AC   265 _ES	=	0x00ac
                           0000AB   266 _ET1	=	0x00ab
                           0000AA   267 _EX1	=	0x00aa
                           0000A9   268 _ET0	=	0x00a9
                           0000A8   269 _EX0	=	0x00a8
                           0000BD   270 _PT2	=	0x00bd
                           0000BC   271 _PS	=	0x00bc
                           0000BB   272 _PT1	=	0x00bb
                           0000BA   273 _PX1	=	0x00ba
                           0000B9   274 _PT0	=	0x00b9
                           0000B8   275 _PX0	=	0x00b8
                           0000B7   276 _RD	=	0x00b7
                           0000B6   277 _WR	=	0x00b6
                           0000B5   278 _T1	=	0x00b5
                           0000B4   279 _T0	=	0x00b4
                           0000B3   280 _INT1	=	0x00b3
                           0000B2   281 _INT0	=	0x00b2
                           0000B1   282 _TXD	=	0x00b1
                           0000B0   283 _RXD	=	0x00b0
                           00009F   284 _SM0	=	0x009f
                           00009F   285 _FE	=	0x009f
                           00009E   286 _SM1	=	0x009e
                           00009D   287 _SM2	=	0x009d
                           00009C   288 _REN	=	0x009c
                           00009B   289 _TB8	=	0x009b
                           00009A   290 _RB8	=	0x009a
                           000099   291 _TI	=	0x0099
                           000098   292 _RI	=	0x0098
                           000091   293 _T2EX	=	0x0091
                           000090   294 _T2	=	0x0090
                           0000CF   295 _TF2	=	0x00cf
                           0000CE   296 _EXF2	=	0x00ce
                           0000CD   297 _RCLK	=	0x00cd
                           0000CC   298 _TCLK	=	0x00cc
                           0000CB   299 _EXEN2	=	0x00cb
                           0000CA   300 _TR2	=	0x00ca
                           0000C9   301 _C_T2	=	0x00c9
                           0000C8   302 _CP_RL2	=	0x00c8
                                    303 ;--------------------------------------------------------
                                    304 ; overlayable register banks
                                    305 ;--------------------------------------------------------
                                    306 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        307 	.ds 8
                                    308 ;--------------------------------------------------------
                                    309 ; internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area DSEG    (DATA)
      00002A                        312 _ISP_API_readData_PARM_2:
      00002A                        313 	.ds 3
      00002D                        314 _ISP_API_readData_PARM_3:
      00002D                        315 	.ds 2
      00002F                        316 _ISP_API_readData_sloc0_1_0:
      00002F                        317 	.ds 2
      000031                        318 _ISP_IAP_writeData_PARM_2:
      000031                        319 	.ds 3
      000034                        320 _ISP_IAP_writeData_PARM_3:
      000034                        321 	.ds 2
      000036                        322 _ISP_IAP_writeData_sloc0_1_0:
      000036                        323 	.ds 2
                                    324 ;--------------------------------------------------------
                                    325 ; overlayable items in internal ram 
                                    326 ;--------------------------------------------------------
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
                                    367 ; global & static initialisations
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 ;--------------------------------------------------------
                                    374 ; Home
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area HOME    (CODE)
                                    378 ;--------------------------------------------------------
                                    379 ; code
                                    380 ;--------------------------------------------------------
                                    381 	.area CSEG    (CODE)
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'ISP_IAP_disable'
                                    384 ;------------------------------------------------------------
                                    385 ;	./src/eeprom/include/eeprom.c:23: void ISP_IAP_disable(void)
                                    386 ;	-----------------------------------------
                                    387 ;	 function ISP_IAP_disable
                                    388 ;	-----------------------------------------
      0001E9                        389 _ISP_IAP_disable:
                           000007   390 	ar7 = 0x07
                           000006   391 	ar6 = 0x06
                           000005   392 	ar5 = 0x05
                           000004   393 	ar4 = 0x04
                           000003   394 	ar3 = 0x03
                           000002   395 	ar2 = 0x02
                           000001   396 	ar1 = 0x01
                           000000   397 	ar0 = 0x00
                                    398 ;	./src/eeprom/include/eeprom.c:25: EA = 1;
                                    399 ;	assignBit
      0001E9 D2 AF            [12]  400 	setb	_EA
                                    401 ;	./src/eeprom/include/eeprom.c:26: ISP_CONTR = 0x00;
      0001EB 75 E7 00         [24]  402 	mov	_ISP_CONTR,#0x00
                                    403 ;	./src/eeprom/include/eeprom.c:27: ISP_CMD = 0x00;
      0001EE 75 E5 00         [24]  404 	mov	_ISP_CMD,#0x00
                                    405 ;	./src/eeprom/include/eeprom.c:28: ISP_TRIG = 0x00;
      0001F1 75 E6 00         [24]  406 	mov	_ISP_TRIG,#0x00
                                    407 ;	./src/eeprom/include/eeprom.c:29: }
      0001F4 22               [24]  408 	ret
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'ISP_API_trigger'
                                    411 ;------------------------------------------------------------
                                    412 ;	./src/eeprom/include/eeprom.c:32: void ISP_API_trigger(void)
                                    413 ;	-----------------------------------------
                                    414 ;	 function ISP_API_trigger
                                    415 ;	-----------------------------------------
      0001F5                        416 _ISP_API_trigger:
                                    417 ;	./src/eeprom/include/eeprom.c:34: EA = 0;
                                    418 ;	assignBit
      0001F5 C2 AF            [12]  419 	clr	_EA
                                    420 ;	./src/eeprom/include/eeprom.c:35: ISP_TRIG = 0x46;
      0001F7 75 E6 46         [24]  421 	mov	_ISP_TRIG,#0x46
                                    422 ;	./src/eeprom/include/eeprom.c:36: ISP_TRIG = 0xB9;
      0001FA 75 E6 B9         [24]  423 	mov	_ISP_TRIG,#0xb9
                                    424 ;	./src/eeprom/include/eeprom.c:37: }
      0001FD 22               [24]  425 	ret
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'ISP_API_readData'
                                    428 ;------------------------------------------------------------
                                    429 ;pBuf                      Allocated with name '_ISP_API_readData_PARM_2'
                                    430 ;dataSize                  Allocated with name '_ISP_API_readData_PARM_3'
                                    431 ;beginAddr                 Allocated to registers r6 r7 
                                    432 ;sloc0                     Allocated with name '_ISP_API_readData_sloc0_1_0'
                                    433 ;------------------------------------------------------------
                                    434 ;	./src/eeprom/include/eeprom.c:40: void ISP_API_readData(unsigned int beginAddr, unsigned char *pBuf, unsigned int dataSize)
                                    435 ;	-----------------------------------------
                                    436 ;	 function ISP_API_readData
                                    437 ;	-----------------------------------------
      0001FE                        438 _ISP_API_readData:
      0001FE AE 82            [24]  439 	mov	r6,dpl
      000200 AF 83            [24]  440 	mov	r7,dph
                                    441 ;	./src/eeprom/include/eeprom.c:42: ISP_DATA = 0;
      000202 75 E2 00         [24]  442 	mov	_ISP_DATA,#0x00
                                    443 ;	./src/eeprom/include/eeprom.c:43: ISP_CMD = read_cmd;
      000205 75 E5 01         [24]  444 	mov	_ISP_CMD,#0x01
                                    445 ;	./src/eeprom/include/eeprom.c:44: ISP_CONTR = enable_waitTime;
      000208 75 E7 82         [24]  446 	mov	_ISP_CONTR,#0x82
                                    447 ;	./src/eeprom/include/eeprom.c:45: while (dataSize--)
      00020B AB 2A            [24]  448 	mov	r3,_ISP_API_readData_PARM_2
      00020D AC 2B            [24]  449 	mov	r4,(_ISP_API_readData_PARM_2 + 1)
      00020F AD 2C            [24]  450 	mov	r5,(_ISP_API_readData_PARM_2 + 2)
      000211 85 2D 2F         [24]  451 	mov	_ISP_API_readData_sloc0_1_0,_ISP_API_readData_PARM_3
      000214 85 2E 30         [24]  452 	mov	(_ISP_API_readData_sloc0_1_0 + 1),(_ISP_API_readData_PARM_3 + 1)
      000217                        453 00101$:
      000217 A8 2F            [24]  454 	mov	r0,_ISP_API_readData_sloc0_1_0
      000219 AA 30            [24]  455 	mov	r2,(_ISP_API_readData_sloc0_1_0 + 1)
      00021B 15 2F            [12]  456 	dec	_ISP_API_readData_sloc0_1_0
      00021D 74 FF            [12]  457 	mov	a,#0xff
      00021F B5 2F 02         [24]  458 	cjne	a,_ISP_API_readData_sloc0_1_0,00115$
      000222 15 30            [12]  459 	dec	(_ISP_API_readData_sloc0_1_0 + 1)
      000224                        460 00115$:
      000224 E8               [12]  461 	mov	a,r0
      000225 4A               [12]  462 	orl	a,r2
      000226 60 32            [24]  463 	jz	00103$
                                    464 ;	./src/eeprom/include/eeprom.c:47: ISP_ADDRH = (unsigned char)(beginAddr >> 8);
      000228 8F E3            [24]  465 	mov	_ISP_ADDRH,r7
                                    466 ;	./src/eeprom/include/eeprom.c:48: ISP_ADDRL = (unsigned char)(beginAddr & 0x00FF);
      00022A 8E E4            [24]  467 	mov	_ISP_ADDRL,r6
                                    468 ;	./src/eeprom/include/eeprom.c:49: ISP_IAP_trigger();
      00022C C0 07            [24]  469 	push	ar7
      00022E C0 06            [24]  470 	push	ar6
      000230 C0 05            [24]  471 	push	ar5
      000232 C0 04            [24]  472 	push	ar4
      000234 C0 03            [24]  473 	push	ar3
      000236 12 00 00         [24]  474 	lcall	_ISP_IAP_trigger
      000239 D0 03            [24]  475 	pop	ar3
      00023B D0 04            [24]  476 	pop	ar4
      00023D D0 05            [24]  477 	pop	ar5
      00023F D0 06            [24]  478 	pop	ar6
      000241 D0 07            [24]  479 	pop	ar7
                                    480 ;	./src/eeprom/include/eeprom.c:50: beginAddr++;
      000243 0E               [12]  481 	inc	r6
      000244 BE 00 01         [24]  482 	cjne	r6,#0x00,00117$
      000247 0F               [12]  483 	inc	r7
      000248                        484 00117$:
                                    485 ;	./src/eeprom/include/eeprom.c:51: *pBuf++ = ISP_DATA;
      000248 8B 82            [24]  486 	mov	dpl,r3
      00024A 8C 83            [24]  487 	mov	dph,r4
      00024C 8D F0            [24]  488 	mov	b,r5
      00024E E5 E2            [12]  489 	mov	a,_ISP_DATA
      000250 12 02 CD         [24]  490 	lcall	__gptrput
      000253 A3               [24]  491 	inc	dptr
      000254 AB 82            [24]  492 	mov	r3,dpl
      000256 AC 83            [24]  493 	mov	r4,dph
      000258 80 BD            [24]  494 	sjmp	00101$
      00025A                        495 00103$:
                                    496 ;	./src/eeprom/include/eeprom.c:53: ISP_IAP_dsiable();
                                    497 ;	./src/eeprom/include/eeprom.c:54: }
      00025A 02 00 00         [24]  498 	ljmp	_ISP_IAP_dsiable
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'ISP_IAP_writeData'
                                    501 ;------------------------------------------------------------
                                    502 ;pDat                      Allocated with name '_ISP_IAP_writeData_PARM_2'
                                    503 ;dataSize                  Allocated with name '_ISP_IAP_writeData_PARM_3'
                                    504 ;beignAddr                 Allocated to registers r6 r7 
                                    505 ;sloc0                     Allocated with name '_ISP_IAP_writeData_sloc0_1_0'
                                    506 ;------------------------------------------------------------
                                    507 ;	./src/eeprom/include/eeprom.c:57: void ISP_IAP_writeData(unsigned int beignAddr, unsigned char *pDat, unsigned int dataSize)
                                    508 ;	-----------------------------------------
                                    509 ;	 function ISP_IAP_writeData
                                    510 ;	-----------------------------------------
      00025D                        511 _ISP_IAP_writeData:
      00025D AE 82            [24]  512 	mov	r6,dpl
      00025F AF 83            [24]  513 	mov	r7,dph
                                    514 ;	./src/eeprom/include/eeprom.c:59: ISP_CONTR = enable_waitTime;
      000261 75 E7 82         [24]  515 	mov	_ISP_CONTR,#0x82
                                    516 ;	./src/eeprom/include/eeprom.c:60: ISP_CMD = wirte_cmd;
      000264 75 E5 02         [24]  517 	mov	_ISP_CMD,#0x02
                                    518 ;	./src/eeprom/include/eeprom.c:61: while (dataSize--)
      000267 AB 31            [24]  519 	mov	r3,_ISP_IAP_writeData_PARM_2
      000269 AC 32            [24]  520 	mov	r4,(_ISP_IAP_writeData_PARM_2 + 1)
      00026B AD 33            [24]  521 	mov	r5,(_ISP_IAP_writeData_PARM_2 + 2)
      00026D 85 34 36         [24]  522 	mov	_ISP_IAP_writeData_sloc0_1_0,_ISP_IAP_writeData_PARM_3
      000270 85 35 37         [24]  523 	mov	(_ISP_IAP_writeData_sloc0_1_0 + 1),(_ISP_IAP_writeData_PARM_3 + 1)
      000273                        524 00101$:
      000273 A8 36            [24]  525 	mov	r0,_ISP_IAP_writeData_sloc0_1_0
      000275 AA 37            [24]  526 	mov	r2,(_ISP_IAP_writeData_sloc0_1_0 + 1)
      000277 15 36            [12]  527 	dec	_ISP_IAP_writeData_sloc0_1_0
      000279 74 FF            [12]  528 	mov	a,#0xff
      00027B B5 36 02         [24]  529 	cjne	a,_ISP_IAP_writeData_sloc0_1_0,00115$
      00027E 15 37            [12]  530 	dec	(_ISP_IAP_writeData_sloc0_1_0 + 1)
      000280                        531 00115$:
      000280 E8               [12]  532 	mov	a,r0
      000281 4A               [12]  533 	orl	a,r2
      000282 60 32            [24]  534 	jz	00103$
                                    535 ;	./src/eeprom/include/eeprom.c:63: ISP_ADDRH = (unsigned char)(beignAddr >> 8);
      000284 8F E3            [24]  536 	mov	_ISP_ADDRH,r7
                                    537 ;	./src/eeprom/include/eeprom.c:64: ISP_ADDRL = (unsigned char)(beignAddr & 0x00FF);
      000286 8E E4            [24]  538 	mov	_ISP_ADDRL,r6
                                    539 ;	./src/eeprom/include/eeprom.c:65: ISP_DATA = *pDat++;
      000288 8B 82            [24]  540 	mov	dpl,r3
      00028A 8C 83            [24]  541 	mov	dph,r4
      00028C 8D F0            [24]  542 	mov	b,r5
      00028E 12 03 5E         [24]  543 	lcall	__gptrget
      000291 F5 E2            [12]  544 	mov	_ISP_DATA,a
      000293 A3               [24]  545 	inc	dptr
      000294 AB 82            [24]  546 	mov	r3,dpl
      000296 AC 83            [24]  547 	mov	r4,dph
                                    548 ;	./src/eeprom/include/eeprom.c:66: beignAddr++;
      000298 0E               [12]  549 	inc	r6
      000299 BE 00 01         [24]  550 	cjne	r6,#0x00,00117$
      00029C 0F               [12]  551 	inc	r7
      00029D                        552 00117$:
                                    553 ;	./src/eeprom/include/eeprom.c:67: ISP_IAP_trigger();
      00029D C0 07            [24]  554 	push	ar7
      00029F C0 06            [24]  555 	push	ar6
      0002A1 C0 05            [24]  556 	push	ar5
      0002A3 C0 04            [24]  557 	push	ar4
      0002A5 C0 03            [24]  558 	push	ar3
      0002A7 12 00 00         [24]  559 	lcall	_ISP_IAP_trigger
      0002AA D0 03            [24]  560 	pop	ar3
      0002AC D0 04            [24]  561 	pop	ar4
      0002AE D0 05            [24]  562 	pop	ar5
      0002B0 D0 06            [24]  563 	pop	ar6
      0002B2 D0 07            [24]  564 	pop	ar7
      0002B4 80 BD            [24]  565 	sjmp	00101$
      0002B6                        566 00103$:
                                    567 ;	./src/eeprom/include/eeprom.c:69: ISP_IAP_dsiable();
                                    568 ;	./src/eeprom/include/eeprom.c:70: }
      0002B6 02 00 00         [24]  569 	ljmp	_ISP_IAP_dsiable
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'ISP_IAP_sectorErase'
                                    572 ;------------------------------------------------------------
                                    573 ;sectorAddr                Allocated to registers r6 r7 
                                    574 ;------------------------------------------------------------
                                    575 ;	./src/eeprom/include/eeprom.c:73: void ISP_IAP_sectorErase(unsigned int sectorAddr)
                                    576 ;	-----------------------------------------
                                    577 ;	 function ISP_IAP_sectorErase
                                    578 ;	-----------------------------------------
      0002B9                        579 _ISP_IAP_sectorErase:
      0002B9 AE 82            [24]  580 	mov	r6,dpl
      0002BB AF 83            [24]  581 	mov	r7,dph
                                    582 ;	./src/eeprom/include/eeprom.c:75: ISP_CONTR = enable_waitTime;
      0002BD 75 E7 82         [24]  583 	mov	_ISP_CONTR,#0x82
                                    584 ;	./src/eeprom/include/eeprom.c:76: ISP_CMD = erase_cmd;
      0002C0 75 E5 03         [24]  585 	mov	_ISP_CMD,#0x03
                                    586 ;	./src/eeprom/include/eeprom.c:77: ISP_ADDRH = (unsigned char)(sectorAddr >> 8);
      0002C3 8F E3            [24]  587 	mov	_ISP_ADDRH,r7
                                    588 ;	./src/eeprom/include/eeprom.c:78: ISP_ADDRH = (unsigned char)(sectorAddr & 0x00FF);
      0002C5 8E E3            [24]  589 	mov	_ISP_ADDRH,r6
                                    590 ;	./src/eeprom/include/eeprom.c:79: ISP_IAP_trigger();
      0002C7 12 00 00         [24]  591 	lcall	_ISP_IAP_trigger
                                    592 ;	./src/eeprom/include/eeprom.c:80: ISP_IAP_disable();
                                    593 ;	./src/eeprom/include/eeprom.c:81: }
      0002CA 02 01 E9         [24]  594 	ljmp	_ISP_IAP_disable
                                    595 	.area CSEG    (CODE)
                                    596 	.area CONST   (CODE)
                                    597 	.area XINIT   (CODE)
                                    598 	.area CABS    (ABS,CODE)
