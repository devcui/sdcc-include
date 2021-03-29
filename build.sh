#!/usr/bin/env bash
###
 # @Author: cuihaonan
 # @Email: devcui@outlook.com
 # @Date: 2021-03-29 21:30:19
 # @LastEditTime: 2021-03-29 23:33:47
 # @LastEditors: cuihaonan
 # @Description: Basic description
 # @FilePath: /sdcc-include/build.sh
 # @LICENSE: NONE
### 
#./tool-sdcc/bin/sdcc ./src/led/led1.c -o /Users/ferried/Projects/mcs51/out/out.ihx
# sdcc ./src/i2c/lcd.c -o /Users/devcui/Projects/sdcc-include/out/out.ihx

sdcc -c ./src/temperature/include/1602.c \
  -o ./src/temperature/lib/ \
  && sdcc -c ./src/temperature/temperature.c \
    -o ./src/temperature/lib/ \
  && sdcc ./src/temperature/lib/temperature.rel ./src/temperature/lib/1602.rel -o ./out/out.ihx
