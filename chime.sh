#!/bin/bash
# GPIO3を制御する
sudo echo 14 > /sys/class/gpio/export;
echo out > /sys/class/gpio/gpio14/direction;
echo 1 > /sys/class/gpio/gpio14/value;

# 自動 
(sudo echo 0 > /sys/class/gpio/gpio14/value;sleep 5s;echo 1 > /sys/class/gpio/gpio14/value) 
