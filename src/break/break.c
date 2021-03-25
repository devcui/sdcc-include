/*
 * @Author: devcui
 * @Email: devcui@outlook.com
 * @Date: 2021-03-13 15:08:13
 * @LastEditTime: 2021-03-13 20:06:16
 * @LastEditors:devcui 
 * @Description: Basic description
 * @FilePath: /led/src/break.c
 * @LICENSE: NONE
 */

#include "../../include/STC89xx.h"
#include "../../include/mcs51/lint.h"

#define T_NUMBER_1MS (65536 - FOSC / 12 / 1000)

SBIT(ALL_EA, 0xA8, 7);
SBIT(INT0_EX0, 0xA8, 0);
SBIT(INT0_IT0, 0x88, 0);
int move = 0;
int count = 0;

int main()
{
    ALL_EA = 1;
    INT0_EX0 = 1;
    INT0_IT0 = 1;
    while (1);
    return 0;
}

void blink() __interrupt(0)
{
    P1 = ~(0x01 << move);
    if (move >= 8)
    {
        move = 0;
    }
    else
    {
        move++;
    }
}
