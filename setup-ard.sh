#!/bin/bash 

git clone https://github.com/dattatraybhairi/ardpkg.git

cd ardpkg

cat pkg.part* > test.tar.xz

tar -xvf test.tar.xz

cd gitlfs/

cd arduino-1.8.13/

sudo ./install.sh

cd ..
 
sudo cp .arduino15 /home/vacus

sudo systemctl stop broker

sudo chmod 777 /dev/ttyUSB0

arduino

