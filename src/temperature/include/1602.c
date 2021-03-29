/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-03-29 22:39:41
 * @LastEditTime: 2021-03-29 23:34:39
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/temperature/include/1602.c
 * @LICENSE: NONE
 */
#include "./1602.h"

SBIT(RS_1602, _P3, 6);
SBIT(RW_1602, _P3, 5);
SBIT(EN_1602, _P3, 4);

unsigned char RD_sta() //读状态函数
{
    unsigned char sta;
    RS_1602 = 0;
    RW_1602 = 1; //进入读 1602 状态模式
    EN_1602 = 1; //拉高使能信号
    sta = P2;    //将 1602 状态数据读取
    EN_1602 = 0; //拉低使能，完成读操作
    return sta;  //将状态值返
}

void Ready() //空闲检测函数
{
    P2 = 0xFF;
    while (RD_sta() & 0x80)
        ; //bit7 等于 1 表示忙，一直检测到 0 为止
}

void WR_Cmd(unsigned char cmd) //写指令函数
{
    Ready(); //检测 1602 是否处于空闲状态
    RS_1602 = 0;
    RW_1602 = 0; //进入写指令模式
    P2 = cmd;    //将指令数据输出
    EN_1602 = 1; //拉高使能信号
    EN_1602 = 0; //拉低使能，完成写操作
}

void WR_Dat(unsigned char dat) //写数据函数
{
    Ready(); //检测 1602 是否处于空闲状态
    RS_1602 = 1;
    RW_1602 = 0; //进入写数据模式

    P2 = dat; //将数据输出

    EN_1602 = 1; //拉高使能信号
    EN_1602 = 0; //拉低使能，完成写操作
}

void Init_1602() //1602 初始化函
{
    WR_Cmd(0x38); //设置 16x2 显示，5x7 点阵，8 位数据接口
    WR_Cmd(0x0C); //开显示，关闭光标
    WR_Cmd(0x06); //读或写完一个字符后，地址指针、光标均加 1
    WR_Cmd(0x01); //数据指针清零、所示显示清零
}

void Disp_1602_str(unsigned char row, unsigned char column, char *str)
{
    unsigned char addr;

    addr = (row - 1) * 0x40 + (column - 1); //组合成地址
    WR_Cmd(0x80 + addr);                    //写地址命令

    while (*str) //判断 str 字符串是否已结束
    {
        WR_Dat(*str++); //将 str 字符串数据依次写入
    }
}
