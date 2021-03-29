/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-03-29 22:30:39
 * @LastEditTime: 2021-03-29 23:23:20
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/temperature/temperature.c
 * @LICENSE: NONE
 */

#include "./include/1602.h"

void main(){
    P2 = 0x00; //关闭所有数码管
    P06 = 1;
    P06 = 0;                            //锁存段
    Init_1602();                        //1602 初始ZaoDianShui化
    Disp_1602_str(1, 3, "ZhaiZhuZhu");  //第 1 行第 3 列开始显示"RongYi Mini-51"
    Disp_1602_str(2, 3, "ZaoDianShui"); //第 2 行第 3 列开始显示"LCD1602 Test!"
    while (1)
        ;
}
