#!/bin/bash
# GPIO3を制御する
sudo echo "37" > /sys/class/gpio/export

# GPIO3を書き込み可能にする
sudo echo "out" > /sys/class/gpio/gpio37/direction

# GPIO3をOFFにする(LEDが消える)
sudo echo 0 > /sys/class/gpio/gpio37/value

# GPIO3をONにする(LEDが点灯する)
sudo echo 1 > /sys/class/gpio/gpio37/value

# 自動 
#(echo 0 > /sys/class/gpio/gpio26/value;sleep 10ms;echo 1 > /sys/class/gpio/gpio26/value) | at 9:20
