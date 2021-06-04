#!/bin/bash
# 初期設定


# 自動 
sudo echo 14 > /sys/class/gpio/export
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 9:00
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 9:30
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 9:45
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 10:35
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 10:45
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 11:35
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 11:45
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 12:35
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 13:15
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 14:05
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 14:15
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 15:05
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 15:15
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 16:05
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 16:15
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 17:20
echo "echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction" | at 17:30
echo "echo 14 > /sys/class/gpio/unexport" | at 17:31
