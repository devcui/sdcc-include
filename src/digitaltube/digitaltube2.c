/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-14 12:04:10
 * @LastEditTime: 2021-03-18 22:32:33
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/break_2.c
 * @LICENSE: NONE
 */

#include "../../include/STC89xx.h"
#include "../../include/mcs51/lint.h"

// 单片机晶振频率
#define FOSC 11059200
#define T_1ms (65536 - FOSC / 12 / 1000)

// P06/P07
SBIT(DU, _P0, 6);
SBIT(WE, _P0, 7);

// 0-9,Abcdef,全亮全灭 值数组
int numbers[18] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71, 0xFF, 0x00};

// 共阴极:位置数组 1-4,全位置，空位置
int postion[4] = {0x0e, 0x0d, 0x0B, 0x07, 0x00, 0x0f};

int count = 0;
int number_flag = 0;
int position_flag = 0;
int T_count = 0;
int Sec = 0;
char Buf_LED[8] = {0};

int main()
{
    // 定时器模式
    TMOD = 0x01;
    // 定时
    TL0 = T_1ms;
    TH0 = T_1ms >> 8;

    // 启动定时器
    TR0 = 1;
    ET0 = 1;

    //总中断打开
    EA = 1;

    while (1)
        ;
    return 0;
}

void timmer0() __interrupt(1)
{
    // 重新装载初始值
    TL0 = T_1ms;
    TH0 = T_1ms >> 8;
    count++;
    if (count >= 500)
    {
        count = 0;
        // 0-7
        P2 = numbers[number_flag];

        // 锁存
        DU = 1;
        DU = 0;

        // 0-3
        P2 = postion[position_flag];
        WE = 1;
        WE = 0;

        number_flag++;
        if (number_flag >= 10)
        {
            number_flag = 0;
        }

        position_flag++;
        if (position_flag >= 4)
        {
            position_flag = 0;
        }
    }
}
