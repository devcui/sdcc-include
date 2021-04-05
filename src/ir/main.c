/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-05 00:49:37
 * @LastEditTime: 2021-04-05 15:03:23
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/ir/main.c
 * @LICENSE: NONE
 */
#include "./include/1602.h"
#include "./include/infrared.h"
#include "../../include/STC89xx.h"
#include "../../include/mcs51/lint.h"

unsigned char *Key_Str = 0;

void main()
{
    P10 = 1;
    unsigned char Key;
    Init_1602();
    InitIR();
    Disp_1602_str(1, 2, "Nebula-Pi IR");
    Disp_1602_str(2, 1, "KEY: ");
    while (1)
    {
        // 如果接收到32位被验证过的值了
        if (Flag_IR)
        {
            // 先置0
            Flag_IR = 0;
            // 首先，低位先存，所以数据码和反码在最前面16位
            // 32位 右移16，获取到数据码和数据反码
            Key = (unsigned char)(Data_IR >> 16);
            switch (Key)
            {
            case 69:
                Key_Str = "CH-";
                break;
            case 70:
                Key_Str = "CH";
                break;
            case 71:
                Key_Str = "CH+";
                break;
            case 68:
                Key_Str = "PREV";
                break;
            case 64:
                Key_Str = "NEXT";
                break;
            case 67:
                Key_Str = "PLAY/PAUSE";
                break;
            case 7:
                Key_Str = "-";
                break;
            case 21:
                Key_Str = "+";
                break;
            case 9:
                Key_Str = "EQ";
                break;
            case 22:
                Key_Str = "0";
                break;
            case 25:
                Key_Str = "100+";
                break;
            case 13:
                Key_Str = "200+";
                break;
            case 12:
                Key_Str = "1";
                break;
            case 24:
                Key_Str = "2";
                break;
            case 94:
                Key_Str = "3";
                break;
            case 8:
                Key_Str = "4";
                break;
            case 28:
                Key_Str = "5";
                break;
            case 90:
                Key_Str = "6";
                break;
            case 66:
                Key_Str = "7";
                break;
            case 82:
                Key_Str = "8";
                break;
            case 74:
                Key_Str = "9";
                break;
            default:
                Key_Str = "error!";
            }
            Disp_1602_str(2,5,"             ");
            Disp_1602_str(2, 5, Key_Str);
        }
    }
}

void wait2() __interrupt(2)
{
    if (P10 == 0)
    {
        P10 = 1;
    }
    else
    {
        P10 = 0;
    }
    WaitRed();
}
