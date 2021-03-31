/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-03-30 15:52:36
 * @LastEditTime: 2021-03-30 16:47:16
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/temperature/include/DS18B20.h
 * @LICENSE: NONE
 */

#ifndef __DS18B20_H__
#define __DS18B20_H__
// 模拟10us延时
extern void DelayT_10us(unsigned char count);
// 初始化
extern void InitDS18B20(void);
// 写入1字节
extern void WrByte_18B20(unsigned char dat);
// 读取1字节
extern unsigned char RdByte_18B20(void);
#endif