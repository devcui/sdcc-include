/*
 * @Author: ferried
 * @Email: harlancui@outlook.com
 * @Date: 2021-03-20 22:08:16
 * @LastEditTime: 2021-03-21 00:16:21
 * @LastEditors: ferried
 * @Description: Basic description
 * @FilePath: /led/src/chuankou2.c
 * @LICENSE: NONE
 */
#include <STC89xx.h>
#include <mcs51/lint.h>

#define unchar unsigned char
#define uint unsigned int

#define FOSC 11059200
#define BADU 9600

unchar busy = 0;

void Usart_init(void);
void Send_String(char *s);

void main()
{
    Usart_init();

    EA = 1;
    Send_String("RY-51 STC89C52 Uart test !\n");
    while (1)
        ;
}

void Ustar_r(void) __interrupt(4)
{
    if (RI == 1)
    {
        RI = 0;
        SBUF += 1;
        if (P10 = 1)
        {
            P10 = 0;
        }
        else
        {
            P10 = 1;
        }
    }
    if (TI == 1)
    {
        TI = 0;
        if (P11 == 1)
        {
            P11 = 0;
        }
        else
        {
            P11 = 1;
        }
        busy = 0;
    }
}

void Usart_init(void)
{
    SCON = 0x50;
    PCON = 0;
    TMOD = 0x20;
    TH1 = TL1 = 256 - FOSC / 32 / 12 / BADU;
    ET1 = 0;
    TR1 = 1;
    ES = 1;
}

void Send_String(char *s)
{
    while (*s)
    {
        while (busy)
            ;
        busy = 1;
        SBUF = *s++;
    }
}
