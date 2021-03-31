/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-03-30 15:52:42
 * @LastEditTime: 2021-03-31 22:35:09
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/temperature/include/DS18B20.c
 * @LICENSE: NONE
 */

#include "./DS18B20.h"
#include "../../../include/STC89xx.h"
#include "../../../include/mcs51/compiler.h"

SBIT(DS18B20, _P3, 7);

void DelayT_10us(unsigned char count)
{
    while (count--)
    {
        NOP();
        NOP();
        NOP();
        NOP();

        NOP();
        NOP();
        NOP();
        NOP();
    }
}

void InitDS18B20(void)
{
    // 拉低
    DS18B20 = 0;
    // 持续600us
    DelayT_10us(50);
    // 拉高
    DS18B20 = 1;
    // 持续60us
    DelayT_10us(6);
    // 直到DS18B20高阻抗被拉高
    while (DS18B20 != 1)
        ;
    // 持续600us
    DelayT_10us(50);
}

void WrByte_18B20(unsigned char dat)
{
    unsigned char flag;
    for (int j = 1; j <= 8; j++)
    {
        // 拿到数据位
        flag = dat & 0x01;
        // 右移1位
        dat >>= 1;
        // 拉低
        DS18B20 = 0;
        // >1us
        NOP();
        NOP();
        // 给数据位
        DS18B20 = flag;
        // 延时60us
        DelayT_10us(6);
        // 写入完成后拉高
        DS18B20 = 1;
    }
}

unsigned char RdByte_18B20(void)
{
    unsigned char data, flag;
    for (unsigned char j = 1; j <= 8; j++)
    {
        // 主机将DS18B20拉低
        DS18B20 = 0;
        // 延时2us
        NOP();
        NOP();
        // 主机将DS18B20拉高
        // 这里和温度计并无关系，是RYMCU 51单片机设计
        // 读取数据时需要拉高
        DS18B20 = 1;
        // 延时2us
        NOP();
        NOP();
        // 回到正常时序图，读取数据给flag
        flag = DS18B20;
        // 延时60us结束周期
        DelayT_10us(6);
        // 读出的值最低位在前面
        data = (data >> 1) | (flag << 7);
    }
    return data;
}

// 处理数据获取温度
unsigned int GetT_18B20(void)
{
    unsigned char Temp_L, Temp_H;
    unsigned int Temp;
    InitDS18B20();
    WrByte_18B20(0xCC);
    WrByte_18B20(0x44);
    InitDS18B20();
    WrByte_18B20(0xCC);
    WrByte_18B20(0xBE);
    // 读一个8位
    Temp_L = RdByte_18B20();
    // 读第二个8位
    Temp_H = RdByte_18B20();
    // 两个8位组合成16位
    Temp = ((unsigned int)Temp_H << 8) + Temp_L;
    return Temp;
}