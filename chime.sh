#!/bin/bash
# GPIO3を制御する
sudo echo 14 > /sys/class/gpio/export

# GPIO3を書き込み可能にする
sudo echo in > /sys/class/gpio/gpio14/direction


# 自動 
(echo 0 > /sys/class/gpio/gpio14/value;sleep 5s;cat /sys/class/gpio/gpio14/value;sleep 5s;echo 1 > /sys/class/gpio/gpio14/value) 
