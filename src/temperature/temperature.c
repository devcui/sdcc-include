/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-03-29 22:30:39
 * @LastEditTime: 2021-03-31 22:31:35
 * @LastEditors: cuihaonan
 * @Description: 单片机每秒采集一次温 度值，并将温度值显示到液晶显示模块上。用定时器中断来时实现 1s 的定时
 * @FilePath: /sdcc-include/src/temperature/temperature.c
 * @LICENSE: NONE
 */

#include "./include/1602.h"
#include "./include/DS18B20.h"
#include "../../include/STC89xx.h"
#include "../../include/mcs51/lint.h"

// 晶振频率
#define FOSC 11059200
// 定时器初始值计算
#define T_1ms (65536 - FOSC / 12 / 1000)
unsigned int Temp;
unsigned char str[10] = {0};
unsigned int count = 0;

void main()
{
    // 定时器模式
    TMOD = 0x01;
    // 装载初始值
    TL0 = T_1ms;
    TH0 = T_1ms >> 8;
    // 启动定时
    TR0 = 1;
    // 定时器中断
    ET0 = 1;
    // 总中断
    EA = 1;

    // 1602初始化
    Init_1602();
    // 第一行第三列开始显示
    Disp_1602_str(1, 3, "temperature");

    while (1)
    {
        // 1s进行一次温度采集显示
        if (count >= 1000)
        {
            // 先关闭中断，防止定时器中断影响温度传感器的读写
            EA = 0;
            // 重新计时
            count = 0;
            // 采集16位温度信息
            Temp = GetT_18B20();
            // 假如拿到的16位为  0000 0111 1101 0000 >> 4 =  0000 0111 1101  = 125
            // 125/10 = 12
            str[0] = (Temp >> 4) / 10 + '0'; // 右移4位，获得温度整数部分
            // 125%10 = 5
            str[1] = (Temp >> 4) % 10 + '0';
            str[2] = '.';
            // 0000 0111 1101 1000 >>3 = 0000 0111 1101 1 =  125.5
            // 125.5%10 = 5.5
            // 有余数直接按0.5算
            if ((Temp >> 3) % 10)
            {
                str[3] = '5';
            }
            // 否则按0算
            else
            {
                str[3] = '0';
            }
            str[4] = '\0';
            Disp_1602_str(2, 3, str);
            // 处理完毕开启中断
            EA = 1;
        }
    }
}

// 定时器进入中断后
void timer0() __interrupt(1)
{
    // 重装初始值
    TL0 = T_1ms;
    TH0 = T_1ms >> 8;
    count++;
}
