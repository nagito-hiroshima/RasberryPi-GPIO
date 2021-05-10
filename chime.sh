#!/bin/bash
gpio_number=26
sudo echo "${gpio_number}" > /sys/class/gpio/export
sudo echo "out" > /sys/class/gpio/gpio${gpio_number}/direction


sudo echo "1" > /sys/class/gpio/gpio${gpio_number}/value | at 15:53

sudo echo "0" > /sys/class/gpio/gpio${gpio_number}/value | at 15:55
sudo echo 26 > /sys/class/gpio/unexport | at 15:56


#echo "mpg321 /home/pi/chime/chime.mp3"| at 9:30
#echo "mpg321 /home/pi/chime/chime.mp3" | at 9:45
#echo "mpg321 /home/pi/chime/chime.mp3" | at 10:35
#echo "mpg321 /home/pi/chime/chime.mp3" | at 10:45
#echo "mpg321 /home/pi/chime/chime.mp3" | at 11:35
#echo "mpg321 /home/pi/chime/chime.mp3" | at 11:45
#echo "mpg321 /home/pi/chime/chime.mp3" | at 12:35
#echo "mpg321 /home/pi/chime/chime.mp3" | at 13:15
#echo "mpg321 /home/pi/chime/chime.mp3" | at 14:05
#echo "mpg321 /home/pi/chime/chime.mp3" | at 14:15
#echo "mpg321 /home/pi/chime/chime.mp3" | at 15:05
#echo "mpg321 /home/pi/chime/chime.mp3" | at 15:15
#echo "mpg321 /home/pi/chime/chime.mp3" | at 16:05
#echo "mpg321 /home/pi/chime/chime.mp3" | at 16:15
#echo "mpg321 /home/pi/chime/chime.mp3" | at 17:30
