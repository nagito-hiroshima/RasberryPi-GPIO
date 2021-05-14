#!/bin/bash
# GPIO3を制御する


# 自動 
(sudo echo 4 > /sys/class/gpio/export;echo out > /sys/class/gpio/gpio4/direction;sleep 5s;echo in > /sys/class/gpio/gpio4/direction) | at 16:20
