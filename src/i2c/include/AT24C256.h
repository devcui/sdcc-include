/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 19:11:55
 * @LastEditTime: 2021-04-04 22:08:45
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/i2c/include/AT24C256.h
 * @LICENSE: NONE
 */

#ifndef __AT24C256_H__
#define __AT24C256_H__
extern void WrByte_AT24C256(unsigned int addr,unsigned char dat);
extern unsigned char RdByte_AT24C256(unsigned int addr);
extern void WrStr_AT24CPAGE(unsigned char *str, unsigned int addr, unsigned char len);
extern void RdStr_AT24CPAGE(unsigned char *str, unsigned int addr, unsigned char len);
#endif