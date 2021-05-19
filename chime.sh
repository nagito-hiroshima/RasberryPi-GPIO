#!/bin/bash
# 初期設定
# sudo echo 14 > /sys/class/gpio/export;

# 自動 
echo "out > /sys/class/gpio/gpio14/direction" | at 9:30
echo "in > /sys/class/gpio/gpio14/direction" | at 9:45