/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 19:11:55
 * @LastEditTime: 2021-04-04 19:47:05
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/i2c/include/AT24C256.h
 * @LICENSE: NONE
 */

#ifndef __AT24C256_H__
#define __AT24C256_H__
extern void WrByte_AT24C256(unsigned int addr,unsigned char dat);
extern unsigned char RdByte_AT24C256(unsigned int addr);
#endif