/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 22:56:46
 * @LastEditTime: 2021-04-04 23:00:11
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/ir/infrared.h
 * @LICENSE: NONE
 */

#ifndef __IR_H__
#define __IR_H__

// 初始化TR0,外部中断1
extern void InitIR();
// 按键标志位
extern unsigned char Flag_IR;
// 4个自己的数据 [31:0] 数据反码，数据码，用户反码，用户码
extern unsigned long Data_IR;

#endif