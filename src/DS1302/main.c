/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-05 15:50:40
 * @LastEditTime: 2021-04-05 18:28:05
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/DS1302/main.c
 * @LICENSE: NONE
 */

#include "./include/DS1302.h"
#include "./include/1602.h"
#include "../../include/STC89xx.h"
#include "../../include/mcs51/lint.h"

// 振率
#define FOSC 11059200
// 定时器初始值
#define T_1ms (65536 - FOSC / 12 / 1000)
SBIT(FM, _P0, 0);
SBIT(DU, _P0, 6);
SBIT(WE, _P0, 7);
// 500ms标志位
unsigned char T_flag = 0;
// 字符临时存储变量
unsigned char CurrentTime[23] = "";
unsigned char SetTime[7] = {0x56, 0x58, 0x23, 0x01, 0x06, 0x02, 0x21};
unsigned char str[23] = "";

void main()
{
    P10 = 1;
    Init_1602();

    P2 = 0xFF;
    WE = 1;
    WE = 0;

    TMOD = 0x01;
    TL0 = T_1ms;
    TH0 = T_1ms >> 8;
    TR0 = 1;
    ET0 = 1;
    EA = 1;

    Init_1302(SetTime);

    while (1)
    {
        if (T_flag) //500ms
        {
            T_flag = 0;

            GetTime(CurrentTime); 

            str[0] = '2';
            str[1] = '0';
            str[2] = (CurrentTime[6] >> 4) + '0'; 
            str[3] = (CurrentTime[6] & 0x0F) + '0';
            str[4] = '-';
            str[5] = (CurrentTime[4] >> 4) + '0'; 
            str[6] = (CurrentTime[4] & 0x0F) + '0';
            str[7] = '-';
            str[8] = (CurrentTime[3] >> 4) + '0'; 
            str[9] = (CurrentTime[3] & 0x0F) + '0';
            str[10] = '\0';
            str[11] = (CurrentTime[2] >> 4) + '0';
            str[12] = (CurrentTime[2] & 0x0F) + '0';
            str[13] = ':';
            str[14] = (CurrentTime[1] >> 4) + '0';
            str[15] = (CurrentTime[1] & 0x0F) + '0';
            str[16] = ':';
            str[17] = (CurrentTime[0] >> 4) + '0'; 
            str[18] = (CurrentTime[0] & 0x0F) + '0';
            str[19] = ' ';
            str[20] = (CurrentTime[5] >> 4) + '0'; 
            str[21] = (CurrentTime[5] & 0x0F) + '0';
            str[22] = '\0';

            Disp_1602_str(1, 4, str); 
            Disp_1602_str(2, 3, str + 11);
        }
    }
}

void timmer0() __interrupt(1)
{
    if(P10 == 1){
        P10 = 0;
    }else{
        P10 = 1;
    }
    static unsigned int T_500ms = 0;
    TL0 = T_1ms;
    TH0 = T_1ms >> 8;
    T_500ms++;
    if (T_500ms >= 500)
    {
        T_500ms = 0;
        T_flag = 1;
    }
}