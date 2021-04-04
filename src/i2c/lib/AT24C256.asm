;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module AT24C256
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RdACK_I2C
	.globl _Wr_I2C
	.globl _Stop_I2C
	.globl _Start_I2C
	.globl _RdStr_AT24CPAGE_PARM_3
	.globl _RdStr_AT24CPAGE_PARM_2
	.globl _WrStr_AT24CPAGE_PARM_3
	.globl _WrStr_AT24CPAGE_PARM_2
	.globl _WrByte_AT24C256_PARM_2
	.globl _WrByte_AT24C256
	.globl _RdByte_AT24C256
	.globl _WrStr_AT24CPAGE
	.globl _RdStr_AT24CPAGE
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_WrByte_AT24C256_PARM_2:
	.ds 1
_WrStr_AT24CPAGE_PARM_2:
	.ds 2
_WrStr_AT24CPAGE_PARM_3:
	.ds 1
_WrStr_AT24CPAGE_sloc0_1_0:
	.ds 2
_RdStr_AT24CPAGE_PARM_2:
	.ds 2
_RdStr_AT24CPAGE_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'WrByte_AT24C256'
;------------------------------------------------------------
;dat                       Allocated with name '_WrByte_AT24C256_PARM_2'
;addr                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/i2c/include/AT24C256.c:14: void WrByte_AT24C256(unsigned int addr, unsigned char dat)
;	-----------------------------------------
;	 function WrByte_AT24C256
;	-----------------------------------------
_WrByte_AT24C256:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	./src/i2c/include/AT24C256.c:17: Start_I2C();
	push	ar7
	push	ar6
	lcall	_Start_I2C
;	./src/i2c/include/AT24C256.c:19: Wr_I2C(0xA0);
	mov	dpl,#0xa0
	lcall	_Wr_I2C
	pop	ar6
	pop	ar7
;	./src/i2c/include/AT24C256.c:21: Wr_I2C(addr >> 8);
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_Wr_I2C
	pop	ar6
	pop	ar7
;	./src/i2c/include/AT24C256.c:23: Wr_I2C(addr);
	mov	dpl,r6
	lcall	_Wr_I2C
;	./src/i2c/include/AT24C256.c:25: Wr_I2C(dat);
	mov	dpl,_WrByte_AT24C256_PARM_2
	lcall	_Wr_I2C
;	./src/i2c/include/AT24C256.c:27: Stop_I2C();
;	./src/i2c/include/AT24C256.c:28: }
	ljmp	_Stop_I2C
;------------------------------------------------------------
;Allocation info for local variables in function 'RdByte_AT24C256'
;------------------------------------------------------------
;addr                      Allocated to registers r6 r7 
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/i2c/include/AT24C256.c:30: unsigned char RdByte_AT24C256(unsigned int addr)
;	-----------------------------------------
;	 function RdByte_AT24C256
;	-----------------------------------------
_RdByte_AT24C256:
	mov	r6,dpl
	mov	r7,dph
;	./src/i2c/include/AT24C256.c:34: Start_I2C();
	push	ar7
	push	ar6
	lcall	_Start_I2C
;	./src/i2c/include/AT24C256.c:35: Wr_I2C(0xA0);
	mov	dpl,#0xa0
	lcall	_Wr_I2C
	pop	ar6
	pop	ar7
;	./src/i2c/include/AT24C256.c:36: Wr_I2C(addr >> 8);
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_Wr_I2C
	pop	ar6
	pop	ar7
;	./src/i2c/include/AT24C256.c:37: Wr_I2C(addr);
	mov	dpl,r6
	lcall	_Wr_I2C
;	./src/i2c/include/AT24C256.c:39: Start_I2C();
	lcall	_Start_I2C
;	./src/i2c/include/AT24C256.c:41: Wr_I2C(0xA1);
	mov	dpl,#0xa1
	lcall	_Wr_I2C
;	./src/i2c/include/AT24C256.c:43: dat = RdACK_I2C(1);
	mov	dpl,#0x01
	lcall	_RdACK_I2C
	mov	r7,dpl
;	./src/i2c/include/AT24C256.c:45: Stop_I2C();
	push	ar7
	lcall	_Stop_I2C
	pop	ar7
;	./src/i2c/include/AT24C256.c:46: return dat;
	mov	dpl,r7
;	./src/i2c/include/AT24C256.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WrStr_AT24CPAGE'
;------------------------------------------------------------
;addr                      Allocated with name '_WrStr_AT24CPAGE_PARM_2'
;len                       Allocated with name '_WrStr_AT24CPAGE_PARM_3'
;str                       Allocated to registers r5 r6 r7 
;sloc0                     Allocated with name '_WrStr_AT24CPAGE_sloc0_1_0'
;------------------------------------------------------------
;	./src/i2c/include/AT24C256.c:49: void WrStr_AT24CPAGE(unsigned char *str, unsigned int addr, unsigned char len)
;	-----------------------------------------
;	 function WrStr_AT24CPAGE
;	-----------------------------------------
_WrStr_AT24CPAGE:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/i2c/include/AT24C256.c:52: while (len > 0)
00111$:
	mov	a,_WrStr_AT24CPAGE_PARM_3
	jnz	00137$
	ret
00137$:
;	./src/i2c/include/AT24C256.c:55: while (1)
00104$:
;	./src/i2c/include/AT24C256.c:57: Start_I2C();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Start_I2C
;	./src/i2c/include/AT24C256.c:59: if (0 == Wr_I2C(0xA0))
	mov	dpl,#0xa0
	lcall	_Wr_I2C
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00105$
;	./src/i2c/include/AT24C256.c:65: Stop_I2C();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Stop_I2C
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00104$
00105$:
;	./src/i2c/include/AT24C256.c:68: Wr_I2C(addr >> 8);
	mov	dpl,(_WrStr_AT24CPAGE_PARM_2 + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_Wr_I2C
;	./src/i2c/include/AT24C256.c:70: Wr_I2C(addr);
	mov	dpl,_WrStr_AT24CPAGE_PARM_2
	lcall	_Wr_I2C
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/i2c/include/AT24C256.c:72: while (len > 0)
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	r1,_WrStr_AT24CPAGE_PARM_3
	mov	_WrStr_AT24CPAGE_sloc0_1_0,_WrStr_AT24CPAGE_PARM_2
	mov	(_WrStr_AT24CPAGE_sloc0_1_0 + 1),(_WrStr_AT24CPAGE_PARM_2 + 1)
00108$:
	mov	a,r1
	jz	00121$
;	./src/i2c/include/AT24C256.c:75: Wr_I2C(*str++);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,r0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_Wr_I2C
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	./src/i2c/include/AT24C256.c:77: len--;
	dec	r1
;	./src/i2c/include/AT24C256.c:79: addr++;
	inc	_WrStr_AT24CPAGE_sloc0_1_0
	clr	a
	cjne	a,_WrStr_AT24CPAGE_sloc0_1_0,00140$
	inc	(_WrStr_AT24CPAGE_sloc0_1_0 + 1)
00140$:
;	./src/i2c/include/AT24C256.c:81: if (0 == (addr % 64))
	mov	a,_WrStr_AT24CPAGE_sloc0_1_0
	anl	a,#0x3f
	jnz	00108$
;	./src/i2c/include/AT24C256.c:85: break;
00121$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	_WrStr_AT24CPAGE_PARM_3,r1
	mov	_WrStr_AT24CPAGE_PARM_2,_WrStr_AT24CPAGE_sloc0_1_0
	mov	(_WrStr_AT24CPAGE_PARM_2 + 1),(_WrStr_AT24CPAGE_sloc0_1_0 + 1)
;	./src/i2c/include/AT24C256.c:88: Stop_I2C();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Stop_I2C
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/i2c/include/AT24C256.c:90: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'RdStr_AT24CPAGE'
;------------------------------------------------------------
;addr                      Allocated with name '_RdStr_AT24CPAGE_PARM_2'
;len                       Allocated with name '_RdStr_AT24CPAGE_PARM_3'
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	./src/i2c/include/AT24C256.c:92: void RdStr_AT24CPAGE(unsigned char *str, unsigned int addr, unsigned char len)
;	-----------------------------------------
;	 function RdStr_AT24CPAGE
;	-----------------------------------------
_RdStr_AT24CPAGE:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/i2c/include/AT24C256.c:95: while (1)
00104$:
;	./src/i2c/include/AT24C256.c:97: Start_I2C();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Start_I2C
;	./src/i2c/include/AT24C256.c:99: if (0 == Wr_I2C(0xA0))
	mov	dpl,#0xa0
	lcall	_Wr_I2C
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00105$
;	./src/i2c/include/AT24C256.c:103: Stop_I2C();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Stop_I2C
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00104$
00105$:
;	./src/i2c/include/AT24C256.c:106: Wr_I2C(addr >> 8);
	mov	dpl,(_RdStr_AT24CPAGE_PARM_2 + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_Wr_I2C
;	./src/i2c/include/AT24C256.c:107: Wr_I2C(addr);
	mov	dpl,_RdStr_AT24CPAGE_PARM_2
	lcall	_Wr_I2C
;	./src/i2c/include/AT24C256.c:109: Start_I2C();
	lcall	_Start_I2C
;	./src/i2c/include/AT24C256.c:111: Wr_I2C(0xA1);
	mov	dpl,#0xa1
	lcall	_Wr_I2C
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/i2c/include/AT24C256.c:113: while (len > 1)
	mov	r4,_RdStr_AT24CPAGE_PARM_3
00106$:
	mov	a,r4
	add	a,#0xff - 0x01
	jnc	00108$
;	./src/i2c/include/AT24C256.c:116: *str++ = RdACK_I2C(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_RdACK_I2C
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	./src/i2c/include/AT24C256.c:118: len--;
	dec	r4
	sjmp	00106$
00108$:
;	./src/i2c/include/AT24C256.c:121: *str = RdACK_I2C(1);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_RdACK_I2C
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	./src/i2c/include/AT24C256.c:123: Stop_I2C();
;	./src/i2c/include/AT24C256.c:124: }
	ljmp	_Stop_I2C
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
