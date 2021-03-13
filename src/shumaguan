/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-10 15:38:17
 * @LastEditTime: 2021-03-11 21:49:22
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/shumaguan.c
 * @LICENSE: NONE
 */

#include "STC89xx.h"

SBIT(LE_L, _P0, 6);
SBIT(LE_R, _P0, 7);

void mian()
{
    P2 = 0b00000110;
    LE_L = 1;
    LE_L = 0;

    P2 = 0b11111110;
    LE_R = 1;
    LE_R = 0;
}