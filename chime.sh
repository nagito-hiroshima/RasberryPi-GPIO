#!/bin/bash
# GPIO3を制御する


# 自動 
(echo 14 > /sys/class/gpio/export;echo out > /sys/class/gpio/gpio14/direction;sleep 5s;echo 14 > /sys/class/gpio/unexport;) 
