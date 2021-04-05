/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-05 22:41:34
 * @LastEditTime: 2021-04-05 22:57:39
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/step/main.c
 * @LICENSE: NONE
 */

#include "../../include/STC89xx.h"
#include "../../include/mcs51/lint.h"

unsigned char MotorCode[8] = = {0xDF, 0xCF, 0xEF, 0x5F, 0x7F, 0x3F, 0xBF, 0x9F};

#define FOSC 11059200
#define T_2ms (65536 - FOSC / 12 * 2 / 1000)
SBIT(DU, _P0, 6);
// 转动角度
unsigned long angle = 180;
// 节拍初始值
unsigned long beats = 0;

void main()
{
    // 锁存
    P2 = 0x00;
    DU = 1;
    DU = 0;
    // 计算节拍
    beats = (angle * 4096) / 360;
    // 定时器
    TMOD = 0x01;
    TL0 = T_2ms;
    TH0 = T_2ms >> 8;
    TR0 = 1;
    ET0 = 1;
    EA = 1;

    while (1)
        ;
}

void timmer0() __interrupt(1)
{
    static unsigned char index = 0;
    TL0 = T_2ms;
    TH0 = T_2ms >> 8;
    if (beats != 0)
    {
        P2 = MotorCode[index];
        index++;
        if (index >= 8)
        {
            index = 0;
            beats--;
        }
    }
}

// void main()
// {
//     // 锁存
//     P2 = 0x00;
//     DU = 1;
//     DU = 0;

//     // 定时器
//     TMOD = 0x01;
//     TL0 = T_2ms;
//     TH0 = T_2ms >> 8;
//     TR0 = 1;
//     ET0 = 1;
//     EA = 1;

//     while (1)
//         ;
// }

// void timer0() __interrupt(1)
// {
//     static unsigned char index = 0;
//     TL0 = T_2ms;
//     TH0 = T_2ms >> 8;
//     P2 = MotorCode[index];
//     index++;
//     if (index > 8)
//     {
//         index = 0;
//     }
// }
