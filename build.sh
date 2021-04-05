#!/usr/bin/env bash
###
 # @Author: cuihaonan
 # @Email: devcui@outlook.com
 # @Date: 2021-03-29 21:30:19
 # @LastEditTime: 2021-04-05 18:31:37
 # @LastEditors: cuihaonan
 # @Description: Basic description
 # @FilePath: /sdcc-include/build.sh
 # @LICENSE: NONE
### 

cleanSpace(){
    current=`exec pwd`
    cd $1 && rm -rf *
    cd $current
}

cleanSpace ./out/

#./tool-sdcc/bin/sdcc ./src/led/led1.c -o /Users/ferried/Projects/mcs51/out/out.ihx
# sdcc ./src/i2c/lcd.c -o /Users/devcui/Projects/sdcc-include/out/out.ihx

# sdcc -c ./src/temperature/include/1602.c -o ./src/temperature/lib/ 
# sdcc -c ./src/temperature/include/DS18B20.c -o ./src/temperature/lib/ 
# sdcc -c ./src/temperature/temperature.c -o ./src/temperature/lib/ 
# sdcc  ./src/temperature/lib/1602.rel ./src/temperature/lib/DS18B20.rel ./src/temperature/lib/temperature.rel -o ./out/out.ihx

# cleanSpace ./src/i2c/lib/ \
#     && sdcc -c ./src/i2c/include/1602.c -o ./src/i2c/lib/ \
#     && sdcc -c ./src/i2c/include/I2C.c -o ./src/i2c/lib/ \
#     && sdcc -c ./src/i2c/include/AT24C256.c -o ./src/i2c/lib/ \
#     && sdcc -c ./src/i2c/main.c -o ./src/i2c/lib/ \
#     && sdcc ./src/i2c/lib/main.rel ./src/i2c/lib/1602.rel ./src/i2c/lib/AT24C256.rel ./src/i2c/lib/I2C.rel -o ./out/out.ihx


# cleanSpace ./src/ir/lib/ \
#     && sdcc -c ./src/ir/include/1602.c -o ./src/ir/lib/ \
#     && sdcc -c ./src/ir/include/infrared.c -o ./src/ir/lib/ \
#     && sdcc -c ./src/ir/main.c -o ./src/ir/lib/ \
#     && sdcc ./src/ir/lib/main.rel ./src/ir/lib/1602.rel ./src/ir/lib/infrared.rel -o ./out/out.ihx


cleanSpace ./src/DS1302/lib/ \
    && sdcc -c ./src/DS1302/include/1602.c -o ./src/DS1302/lib/ \
    && sdcc -c ./src/DS1302/include/DS1302.c -o ./src/DS1302/lib/ \
    && sdcc -c ./src/DS1302/main.c -o ./src/DS1302/lib/ \
    && sdcc ./src/DS1302/lib/main.rel ./src/DS1302/lib/1602.rel ./src/DS1302/lib/DS1302.rel -o ./out/out.ihx