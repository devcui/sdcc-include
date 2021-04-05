/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-05 15:51:02
 * @LastEditTime: 2021-04-05 18:13:47
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/DS1302/include/DS1302.c
 * @LICENSE: NONE
 */

#include "./DS1302.h"
#include "../../../include/STC89xx.h"

SBIT(CE_LINE, _P0, 5);
SBIT(IO_LINE, _P0, 4);
SBIT(SCLK_LINE, _P0, 3);

void WrByte_1302(unsigned char dat)
{
    unsigned char j;
    unsigned int flag;
    for (j = 1; j <= 8; j++)
    {
        // 拿到当前位的数据
        flag = dat & 0x01;
        // 放到IO线上
        IO_LINE = flag;
        // 上升沿
        SCLK_LINE = 0;
        SCLK_LINE = 1;
        // 将数据移动到下一位
        dat >>= 1;
    }
    // 拉低CE
}

unsigned char RdByte_1302(void)
{
    unsigned char dat = 0;
    unsigned int flag;
    unsigned char j;

    for (j = 1; j <= 8; j++)
    {
        // 下降沿
        SCLK_LINE = 1;
        SCLK_LINE = 0;
        // 从IO线上读数据
        flag = IO_LINE;
        // 读取的数据放到最前面
        dat = (dat >> 1) | (flag << 7);
    }
    return dat;
}

void WrSingle_1302(unsigned char addr, unsigned char dat)
{
    // 拉高CE
    CE_LINE = 1;
    // 写入地址和控制命令
    WrByte_1302(addr);
    // 写入数据
    WrByte_1302(dat);
    // 拉低CE完成时序
    CE_LINE = 0;
    // 最后拉低SCLK(恢复初始化)
    SCLK_LINE = 0;
}

unsigned char RdSingle_1302(unsigned char addr)
{
    unsigned char dat;
    // 拉高CE
    CE_LINE = 1;
    // 写入指令和地址
    WrByte_1302(addr);
    dat = RdByte_1302();
    // 拉低CE
    CE_LINE = 0;
    return dat;
}

void Init_1302(unsigned char *time)
{
    unsigned char j;
    CE_LINE = 0;
    SCLK_LINE = 0;
    // 解除写保护
    WrSingle_1302(0x8E, 0x00);

    for (j = 0; j <= 6; j++)
    {
        // 写入7个时钟数据
        WrSingle_1302(0x80 + 2 * j, time[j]);
    }
}

void GetTime(unsigned char *currentTime)
{
    unsigned char j;
    CE_LINE = 0;
    SCLK_LINE = 0;
    for (j = 0; j <= 6; j++)
    {
        *currentTime = RdSingle_1302(0x81 + 2 * j);
        currentTime++;
    }
}