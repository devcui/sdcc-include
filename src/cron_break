/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-07 10:01:02
 * @LastEditTime: 2021-03-07 10:50:20
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/cron_break.c
 * @LICENSE: NONE
 */
#include <STC89xx.h>
#include <mcs51/lint.h>
// 单片机晶振频率
#define FOSC 11059200
#define T_NUMBER_MS (65536 - FOSC / 12 / 1000)
// LED
SBIT(LED0, _P1, 0);
// TMOD
SFR(T_TMODE, 0x89);
// 高低8位
SFR(T_TL0, 0x8A);
SFR(T_TH0, 0x8C);
// T0的运行控制位,该位由软件置位和清零。当T_TR0=1时就允许T0开始计数。
SBIT(T_TR0, 0x88, 4);

// 计数器
unsigned int count = 0;

void main()
{
    // TMOD 定时器模式
    T_TMODE = 0x01;
    // 低8位
    T_TL0 = T_NUMBER_MS;
    // 高8位
    T_TH0 = T_NUMBER_MS >> 8;
    // 启动定时器
    T_TR0 = 0x01;
    // 允许定时器中断
    ET0 = 1;
    EA = 1;

    while (1)
        ;
}

void timmer0() __interrupt 1
{
    T_TL0 = T_NUMBER_MS;
    T_TH0 = T_NUMBER_MS >> 8;
    count++;
    if (count >= 50)
    {
        count = 0;
        // NOT LED0=~LED0
        if (LED0 == 0)
        {
            LED0 = 1;
        }
        else
        {
            LED0 = 0;
        }
    }
}