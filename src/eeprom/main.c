/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-08 21:44:53
 * @LastEditTime: 2021-04-08 22:39:33
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/eeprom/main.c
 * @LICENSE: NONE
 */
#include "../../include/STC89xx.h"
#include "./include/eeprom.h"
#include "./include/1602.h"

unsigned char pbuf[5] = {0};
unsigned char str[8] = {0};
unsigned char disp[] = "times of PowerOn";

void main()
{
    Init_1602();
    ISP_IAP_readData(0x21F0, pbuf, sizeof(pbuf));
    pbuf[0]++;
    str[0] = pbuf[0] / 100 + '0';
    str[1] = (pbuf[0] % 100) / 10 + '0';
    str[2] = (pbuf[0] % 10) + '0';
    str[4] = '\0';
    Disp_1602_str(1, 1, disp);
    Disp_1602_str(2, 6, str);
    ISP_IAP_sectorErase(0x2000);
    ISP_IAP_writeData(0x21F0, pbuf, sizeof(pbuf));
    while(1);
}
