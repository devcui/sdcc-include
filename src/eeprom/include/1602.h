/*
 * @Author: cuihaonan
 * @Email: devcui@outlook.com
 * @Date: 2021-03-29 22:34:24
 * @LastEditTime: 2021-03-30 15:57:25
 * @LastEditors: cuihaonan
 * @Description: Basic description
 * @FilePath: /sdcc-include/src/temperature/include/1602.h
 * @LICENSE: NONE
 */


#ifndef __1602_H__
#define __1602_H__
extern unsigned char RD_sta();
extern void Ready();
extern void WR_Cmd(unsigned char cmd);
extern void WR_Dat(unsigned char dat);
extern void Init_1602();
extern void Disp_1602_str(unsigned char row, unsigned char column, char *str);
#endif