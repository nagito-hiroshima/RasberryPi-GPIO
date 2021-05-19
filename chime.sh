#!/bin/bash
# GPIO3を制御する
sudo echo 4 > /sys/class/gpio/export;
echo out > /sys/class/gpio/gpio4/direction;

# 自動 
(sudo echo 1 > /sys/class/gpio/gpio4/value;sleep 5s;echo 0 > /sys/class/gpio/gpio4/value) 
