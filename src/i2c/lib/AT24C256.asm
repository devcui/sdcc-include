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
	.globl _WrByte_AT24C256_PARM_2
	.globl _WrByte_AT24C256
	.globl _RdByte_AT24C256
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
