/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-07 11:28:47
 * @LastEditTime: 2021-03-07 13:37:07
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/key.c
 * @LICENSE: NONE
 */

#include "../../include/STC89xx.h"

// 模拟电报
// 按下k1 定时 1ms*1000 = 1s,蜂鸣器持续响1s (T0)
// 按下k2 定时 1ms*1000*2 = 2s,蜂鸣器持续响2s (T1)
// 这里直接使用 stc89.h里的东西了

#define FOSC 11059200
#define T_NUMBER_MS (65536 - FOSC / 12 / 1000)
int count1 = 0;
int count2 = 0;
int main()
{
    TMOD = 0b00010001;
    while (1)
    {

        // 低电平触发key1
        if (P10 == 0 && TF0 == 0)
        {
            P00 = 0;
            TL0 = T_NUMBER_MS;
            TH0 = T_NUMBER_MS >> 8;
            TR0 = 1;
            P16 = 0;
        }
        // 低电平触发key2
        if (P11 == 0 && TF1 == 0)
        {
            P00 = 0;
            TL1 = T_NUMBER_MS;
            TH1 = T_NUMBER_MS >> 8;
            TR1 = 1;
            P17 = 0;
        }
        // T0计时结束
        if (TF0 == 1)
        {

            TF0 = 0;
            TL0 = T_NUMBER_MS;
            TH0 = T_NUMBER_MS >> 8;
            count1++;
            if (count1 >= 50)
            {
                P00 = 1;
                count1 = 0;
                P16 = 1;
                // T0终止计时
                TR0 = 0;
            }
        }
        // T1计时结束
        if (TF1 == 1)
        {

            TF1 = 0;
            TL1 = T_NUMBER_MS;
            TH1 = T_NUMBER_MS >> 8;
            count2++;
            if (count2 >= 300)
            {
                P00 = 1;
                count2 = 0;
                P17 = 1;
                // T1终止计时
                TR1 = 0;
            }
        }
    }
    return 0;
}
