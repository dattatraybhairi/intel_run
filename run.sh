#!/bin/bash

git clone https://github.com/dattatraybhairi/script-for-disable-enable-turbo-mode-in-intel

cd script-for-disable-enable-turbo-mode-in-intel/

cp turbo-boost.sh /home/vacus/Desktop

cp mycronjob /home/vacus/Desktop

sudo cp social.py /home/vacus/Desktop

sudo chmod +x /home/vacus/Desktop/turbo-boost.sh

sudo /home/vacus/Desktop/turbo-boost.sh disable

sudo apt install lm-sensors -y

sudo apt install cpufrequtils -y

sensors

cpufreq-info

sudo crontab mycronjob

sudo systemctl restart broker

sudo systemctl status broker

echo "done"
