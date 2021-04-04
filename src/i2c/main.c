/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 19:56:15
 * @LastEditTime: 2021-04-04 21:14:39
 * @LastEditors: cuihaonan
 * @Description: 将数据由I2C写入AT24C26，然后读取AT24C26的数据并显示在1602上
 * @FilePath: /sdcc-include/src/i2c/main.c
 * @LICENSE: NONE
 */

#include "../../include/STC89xx.h"
#include "./include/1602.h"
#include "./include/I2C.h"
#include "./include/AT24C256.h"

void delayms(unsigned int z)
{
    while (z)
    {
        NOP();
        NOP();
        NOP();
        NOP();
        NOP();
        NOP();
        NOP();
        NOP();
        NOP();
        z--;
    }
}

void main()
{
    unsigned char d = 0;
    unsigned char dat[10] = "";
    Init_1602();
    WrByte_AT24C256(0x0000, 1);
    Disp_1602_str(1, 2, "ACT24C0X TEST!");
    delayms(1000);
    d = RdByte_AT24C256(0x0000);
    dat[0] = d / 100 + '0';
    dat[1] = d % 100 / 10 + '0';
    dat[2] = d % 10 + '0';
    Disp_1602_str(2, 3, dat);
    while (1)
        ;
}