/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-19 22:20:52
 * @LastEditTime: 2021-03-20 21:40:54
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/chuankou.c
 * @LICENSE: NONE
 */

#include "../../include/STC89xx.h"
#include "../../include/mcs51/lint.h"

#define unchar unsigned char
#define unit unsigned int

#define FOSC 11059200 // 单片机晶振频率
#define BAUD 9600     // 波特率设置为9600
SBIT(LED0, _P1, 0);   // LED0
SBIT(LED1, _P1, 1);   // LED1
// SCON
SFR(RY_SCON, 0x98);
SBIT(RY_SM0, 0x98, 7);
SBIT(RY_SM1, 0x98, 6);
SBIT(RY_REN, 0x98, 4);
// PCON
SFR(RY_PCON, 0x87);
SBIT(RY_SMOD, 0x87, 7);
// TMOD
SFR(RY_TMOD, 0x89);
// T1
SFR(RY_TH1, 0x8D);
SFR(RY_TL1, 0x8B);

void main()
{
    // 配置串口工作方式 SM0,SM1 为 0,1
    // SCON = 0b01010000 = 0x50
    // 该模式 SM0 = 0,SM1 = 1,8 位 UART 波特率可变
    RY_SM0 = 0;
    RY_SM1 = 1;
    // REN = 1,允许接收串口数据
    RY_REN = 1;
    // 初始化 SMOD
    // SMOD = 0 ,波特率不加倍
    RY_SMOD = 0;
    // 配置定时器为工作模式 2,8 位自动重装模式
    RY_TMOD = 0x20;
    // 定时器1赋予初始值
    RY_TH1 = 256 - FOSC / 32 / 12 / BAUD;
    RY_TL1 = 256 - FOSC / 32 / 12 / BAUD;
    // 串口中断和定时器中断会冲突，所以关闭定时器中断
    ET1 = 0;
    // 开启定时器
    TR1 = 1;
    // 允许串口中断
    ES = 1;
    // 允许总中断
    EA = 1;
    while (1)
        ;
}

void Uart_r(void) __interrupt(4)
{
    // 接收中断
    if (RI == 1)
    {
        // 先把接收中断清零
        RI = 0;
        // 将接收的数据+1
        SBUF += 1;
        // 反转LED0
        if (LED0 == 0)
        {
            LED0 = 1;
        }
        else
        {
            LED0 = 0;
        }
    }
    // 发送中断
    if (TI == 1)
    {
        // 将发送中断清零
        TI = 0;
        // 反转LED1
        if (LED1 == 0)
        {
            LED1 = 1;
        }
        else
        {
            LED1 = 0;
        }
    }
}
