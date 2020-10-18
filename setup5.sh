#!/bin/bash 

sudo apt-get install git -y

sudo git clone https://VacusTechnology:Vacus%23321@github.com/VacusTechnology/socialDistancingGw

sudo git clone https://VacusTechnology:Vacus%23321@github.com/VacusTechnology/wifiConfigurationGw

cd socialDistancingGw/

sudo git checkout bangalore

cd deb/

sudo apt-get install ./gateway-bangalore_1.0.0_amd64.deb -y

cd ../wifiDeb

sudo apt-get install ./wificonfig_1.0.0_amd64.deb -y

echo setup finished

apt install net-tools -y 

apt install lm-sensors -y

wget https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.7.2-Linux-x86.deb

 wget https://download.anydesk.com/linux/anydesk_6.0.1-1_amd64.deb

sudo apt install ./VNC-Server-6.7.2-Linux-x86.deb -y

sudo apt install ./anydesk_6.0.1-1_amd64.deb -y

sudo systemctl start vncserver-x11-serviced.service

sudo anydesk

sudo systemctl status wificonfig.service

echo test wificonfig.service 

sudo -H -u vacus bash -c 'firefox http://localhost:8001/'

sudo systemctl status broker

sudo systemctl status gateway

sudo systemctl status counter

sudo systemctl status socialParamsConfig.service 

cat /sys/class/net/*/address

echo $(sensors)
