#!/usr/bin/env bash

echo "查看USB，请更换成自己的USB串口"
ls /dev/tty.*
echo "默认串口为/dev/tty.usbserial-14120"
python3 ./tool-stcgal/stcgal.py -a -P stc89 -b 9600 -p /dev/tty.usbserial-14120 out/out.ihx
