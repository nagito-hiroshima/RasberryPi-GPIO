#!/bin/bash
# GPIO3を制御する
sudo echo 4 > /sys/class/gpio/export

# 自動 
(echo out > /sys/class/gpio/gpio4/direction;sleep 5s;echo in > /sys/class/gpio/gpio4/direction) 
