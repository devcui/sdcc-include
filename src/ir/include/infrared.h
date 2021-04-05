/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 22:56:46
 * @LastEditTime: 2021-04-05 14:57:29
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/ir/include/infrared.h
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
// 计算时长
extern unsigned int T_Count(unsigned int flag);
// 等待信号输入
extern void WaitRed(void);

#define HIGH_IR 1
#define LOW_IR 0
#define Min_9ms 8000
#define Max_9ms 10000
#define Min_4_5ms 3500
#define Max_4_5ms 5000
#define Min_560us 300
#define Max_560us 700
#define Min_1680us 1300
#define Max_1680us 1800
#define Time_16ms 16000

#endif