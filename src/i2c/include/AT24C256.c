/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 19:12:01
 * @LastEditTime: 2021-04-04 21:05:26
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/i2c/include/AT24C256.c
 * @LICENSE: NONE
 */
#include "./AT24C256.h"
#include "./I2C.h"

void WrByte_AT24C256(unsigned int addr, unsigned char dat)
{
    // 第一步START信号
    Start_I2C();
    // 写入设备地址 0b1010 0000 = 0xA0
    Wr_I2C(0xA0);
    // 写入高位地址,传入16位地址
    Wr_I2C(addr >> 8);
    // 写入低位地址,由于一次只能写入8位，所以前8位直接被过掉了
    Wr_I2C(addr);
    // 写入数据
    Wr_I2C(dat);
    // 最后一步STOP信号
    Stop_I2C();
}

unsigned char RdByte_AT24C256(unsigned int addr)
{
    unsigned char dat;
    // 开始信号
    Start_I2C();
    Wr_I2C(0xA0);
    Wr_I2C(addr >> 8);
    Wr_I2C(addr);
    // 开始信号
    Start_I2C();
    // 1010 0000 -> 1010 0001 = 0xA1
    Wr_I2C(0xA1);
    //  从addr读取数据发送非应答信号
    dat = RdACK_I2C(1);
    // 结束信号
    Stop_I2C();
    return dat;
}