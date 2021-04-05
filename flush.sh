#!/usr/bin/env bash
###
 # @Author: cuihaonan
 # @Email: devcui@outlook.com
 # @Date: 2021-04-05 13:06:49
 # @LastEditTime: 2021-04-05 18:31:28
 # @LastEditors: cuihaonan
 # @Description: Basic description
 # @FilePath: /sdcc-include/flush.sh
 # @LICENSE: NONE
### 

echo "查看USB，请更换成自己的USB串口"
ls /dev/tty.*
echo "默认串口为/dev/tty.usbserial-14120"
python3 ./tool-stcgal/stcgal.py -a -P stc89 -b 9600 -p /dev/tty.usbserial-14120 out/out.ihx
