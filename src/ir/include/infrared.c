/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-04-04 23:09:09
 * @LastEditTime: 2021-04-05 12:22:11
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/ir/include/infrared.c
 * @LICENSE: NONE
 */

#include "../../../include/STC89xx.h"
#include "../../../include/mcs51/lint.h"
#include "./infrared.h"

#define HIGH_IR 1
#define LOW_IR 0
// 如下所有时间都是按照每 1.09us计时一次的 次数
#define Min_9ms 8000
#define Max_9ms 10000
#define Min_4_5ms 3500
#define MAX_4_5ms 5000
#define Min_560us 300
#define Max_560us 700
#define Max_1680us 1300
#define Min_1680us 1800
#define Time_16ms 16000

// LED
SBIT(LED1, _P1, 1);
// 红外接收引脚
SBIT(IR_out, _P3, 3);
// 红外接收标志位
unsigned char Flag_IR = 0;
// 数据位
unsigned long Data_IR;

// 初始化TR0,外部中断1
void InitIR()
{
    // -------IR
    // IR初始化
    IR_out = 1;

    // -------T0
    // 由于是头文件，所以不知道TMOD里面是什么情况，但是后面的M1,M0不变，所以初始化先清除后几位
    TMOD &= 0xF0;
    // timer0 初始化
    // M1=0,M0=1模式,TH0,TL0合并位16位定时器
    // 这里用 |= 也是为了保证前面的不变
    TMOD |= 0x01;
    // 开始计数
    TR0 = 1;
    // 关闭定时器0中断
    ET0 = 0;

    // ------INT1
    // 下降沿触发
    IT1 = 1;
    // IT1中断开
    EX1 = 1;
    // 总中断开
    EA = 1;
}

unsigned int T_Count(unsigned int flag)
{
    // 清除TH0,TL0
    TH0 = 0;
    TL0 = 0;
    // 开定时器0中断
    TR0 = 1;
    // 判断IR引脚是否等同于flag
    // 如果等同于flag
    while (IR_out == flag)
    {
        // 比较计时器高8位和16ms高8位
        // 如果超过了16ms跳出循环
        if (TH0 > (Time_16ms >> 8))
        {
            break;
        }
    }
    // 关闭定时器0
    TR0 = 0;
    // 返回结果
    // TH0 高8位 * 256 + TL0 低八位
    return (TH0 * 256 + TL0);
}

// Int1 中断 对应的函数是 2
void Int1() __interrupt(2)
{
    unsigned int i;
    unsigned int T_Low;
    unsigned int T_High;
    // 用户码 头 9ms载波 + 4.5ms 高电平
    // 9ms引导码的低电平
    T_Low = T_Count(LOW_IR);
    // 4.5ms引导码的高电平
    T_High = T_Count(HIGH_IR);

    // 判断引导码是否正确
    // 比较1.09us的次数,推算出时常
    if (T_Low < Min_9ms || T_Low > Max_9ms || T_High < Min_4_5ms || T_High > MAX_4_5ms)
    {
        // INT1 中断关闭
        IE1 = 0;
        return;
    }
    // 接收4个字节数据，共计32位
    // 第一个字节 用户码
    // 第二个字节 用户反码
    // 第三个字节 数据码
    // 第四个字节 数据反码
    for (i = 0; i < 32; i++)
    {
        // 560us 低电平
        T_Low = T_Count(LOW_IR);
        // 560us/1680us高电平
        T_High = T_Count(HIGH_IR);
        // 判断位电平正确性
        if (T_Low < Min_560us || T_Low > Max_560us || T_High < Min_560us || T_High > Max_1680us)
        {
            // 关闭INT1中断
            IE1 = 0;
            return;
        }
        // 高位补0
        Data_IR >>= 1;
        if (T_High > Min_1680us)
        {
            // 取数据
            Data_IR |= 0x80000000;
        }
    }
    // 接收完毕,置位(存一个值)
    Flag_IR = 1;
    // 关闭INT1中断
    IE1 = 0;
}