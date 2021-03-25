/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-06 21:20:54
 * @LastEditTime: 2021-03-06 23:41:55
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/cron.c
 * @LICENSE: NONE
 */

#include <STC89xx.h>

// 单片机晶振频率 单位(hz) 11059200 Hz
// 11059200Hz*10^-3  = 11059.2 GHz
// 11059.2GHz*10^3 = 11.0592 MHz
#define FOSC 11059200

// 假设设置定时器T0 每1毫秒溢出一次
#define T_NUMBER_1MS (65536 - FOSC / 12 / 1000)

// 获取TMOD_0和1
SFR(MOD_0, 0x89);
// T0 高低8位,存数
SFR(T_TL0, 0x8A);
SFR(T_TH0, 0x8C);
// T1 高低8位,存数
SFR(T_TL1, 0x8B);
SFR(T_TH1, 0x8D);
// TF0 T0中断溢出标志位,当最高位产生溢出时由硬件置“1”
SBIT(T_TF0, 0x88, 5);
// TF1 T1中断溢出标志位,当最高位产生溢出时由硬件置“1”
SBIT(T_TF1, 0x88, 7);
// TR0 T0的运行控制位,该位由软件置位和清零。当T_TR0=1时就允许T0开始计数。
SBIT(T_TR0, 0x88, 4);
// TR1 T1的运行控制位,该位由软件置位和清零。当T_TR1=1时就允许T1开始计数。
SBIT(T_TR1, 0x88, 6);
// 两个LED
SBIT(LED0, _P1, 0);
SBIT(LED1, _P1, 1);
// 两个计数器
unsigned int count1 = 0;
unsigned int count2 = 0;
void main()
{
    // 这里直接配置两个定时器的MOD,0x11 = 0x0001 0001
    // 0001:CT=0,M1=0,M0=1
    // TH0，TL0全用，组成一个16位定时器/计数器。
    // TH1，TL0全用，组成一个16位定时器/计数器。
    MOD_0 = 0b00010001;
    // T_TL0是 T0 定时器的低八位，高位自动没了
    T_TL0 = T_NUMBER_1MS;
    // T_TH0是 T0 定时器的高八位,右移8位,把低8位删掉,保留高8位
    T_TH0 = T_NUMBER_1MS >> 8;
    // 同理设置 T_TL1和T_TH1
    T_TL1 = T_NUMBER_1MS;
    T_TH1 = T_NUMBER_1MS >> 8;
    // 启动T0和T1
    T_TR0 = 0x01;
    T_TR1 = 0x01;
    while (1)
    {
        // T_TF0中断，证明一毫秒到了
        if (T_TF0 == 1)
        {
            // 软件清0
            T_TF0 = 0;
            T_TL0 = T_NUMBER_1MS;
            T_TH0 = T_NUMBER_1MS >> 8;
            count1 += 1;
            if (count1 >= 50)
            {
                count1 = 0;
                if (LED0 == 1)
                {
                    LED0 = 0;
                }
                else
                {
                    LED0 = 1;
                }
            }
        }
        // T_TF1中断，证明一毫秒到了
        if (T_TF1 == 1)
        {
            // 软件清0
            T_TF1 = 0;
            T_TL1 = T_NUMBER_1MS;
            T_TH1 = T_NUMBER_1MS >> 8;
            count2 += 1;
            if (count2 >= 50)
            {
                count2 = 0;
                if (LED1 == 1)
                {
                    LED1 = 0;
                }
                else
                {
                    LED1 = 1;
                }
            }
        }
    }
}