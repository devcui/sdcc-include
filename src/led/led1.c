/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-05 20:36:17
 * @LastEditTime: 2021-03-06 18:08:46
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/main.c
 * @LICENSE: NONE
 */
#include "../../include/STC89xx.h"

int i;
int flag = 0;

void main()
{
    while (1)
    {
        P00 = 0;
        P1 = ~(0x01 << flag);
        P00 = 1;
        for (i = 0; i < 2000; i++)
            ;
        if (flag > 8)
        {
            flag = 0;
        }
        else
        {
            flag++;
        }
    }
}
