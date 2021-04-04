/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-02 11:49:10
 * @LastEditTime: 2021-04-04 20:15:37
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/i2c/include/I2C.h
 * @LICENSE: NONE
 */

#ifndef __I2C_H__
#define __I2C_H__
// 延时
extern void Delay_I2C(void);
// 开始信号
extern void Start_I2C(void);
// 结束信号
extern void Stop_I2C(void);
// 写数据
extern unsigned char Wr_I2C(unsigned char dat);
// 读数据发送应答信号
unsigned char RdACK_I2C(unsigned char ack);
#endif