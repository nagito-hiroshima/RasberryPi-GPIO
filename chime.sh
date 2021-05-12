#!/bin/bash
# root権限昇格
#sudo su -l

# GPIO3を制御する
sudo echo "26" > /sys/class/gpio/export

# GPIO3を書き込み可能にする
#echo "out" > /sys/class/gpio/gpio26/direction

# GPIO3をOFFにする(LEDが消える)
#echo 0 > /sys/class/gpio/gpio26/value

# GPIO3をONにする(LEDが点灯する)
#echo 1 > /sys/class/gpio/gpio26/value

# 自動 
#(echo 0 > /sys/class/gpio/gpio26/value;sleep 10ms;echo 1 > /sys/class/gpio/gpio26/value) | at 9:20
