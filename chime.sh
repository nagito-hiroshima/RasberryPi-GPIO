#!/bin/bash
# GPIO3を制御する
sudo echo 3 > /sys/class/gpio/export

# GPIO3を書き込み可能にする
<<<<<<< HEAD
sudo echo in > /sys/class/gpio/gpio14/direction


# 自動 
(echo 0 > /sys/class/gpio/gpio14/value;sleep 5s;cat /sys/class/gpio/gpio14/value;sleep 5s;echo 1 > /sys/class/gpio/gpio14/value) 
=======
sudo echo out > /sys/class/gpio/gpio3/direction


# 自動 
(echo 1 > /sys/class/gpio/gpio3/value;sleep 5s;cat /sys/class/gpio/gpio3/value;sleep 5s;echo 0 > /sys/class/gpio/gpio3/value) 
>>>>>>> parent of a447783... aaaaa
