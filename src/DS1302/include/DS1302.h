/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-05 15:50:57
 * @LastEditTime: 2021-04-10 13:43:56
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/DS1302/include/DS1302.h
 * @LICENSE: NONE
 */

#ifndef __DS1302_H__
#define __DS1302_H__

extern void WrByte_1302(unsigned char dat);
extern unsigned char RdByte_1302(void);
extern void WrSingle_1302(unsigned char addr, unsigned char dat);
extern unsigned char RdSingle_1302(unsigned char addr);
extern void Init_1302(unsigned char *time);
extern void GetTime(unsigned char *currentTime);
extern void WrBurst_1302(unsigned char *SetTime);
extern void RdBurst_1302(unsigned char *CurrentTime);
#endif