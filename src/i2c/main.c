/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 19:56:15
 * @LastEditTime: 2021-04-04 20:27:07
 * @LastEditors: cuihaonan
 * @Description: 将数据由I2C写入AT24C26，然后读取AT24C26的数据并显示在1602上
 * @FilePath: /sdcc-include/src/i2c/main.c
 * @LICENSE: NONE
 */

#include "../../include/STC89xx.h"
#include "./include/1602.h"
#include "./include/I2C.h"
#include "./include/AT24C256.h"

unsigned char dat = 0;

void main()
{
    Init_1602();
    WrByte_AT24C256(0x0000, "AT24C0X test");
    dat = RdByte_AT24C256(0x0000);
    Disp_1602_str(2, 3, dat);
    while (1)
        ;
}