#!/bin/bash

# exit when any command fails
set -e

echo "Python 2.7.x is required to install and execute Pyrit."
sleep 0.5
read -p"Press enter to continue..."

echo -e "\n######################################"
echo "#      Installing dependencies       #"
echo "######################################"
sleep 3
# Scapy 2.x is required to use Pyrit's analyze/attack functions.
sudo apt-get -y install libpcap-dev
sudo pip install scapy==2.3.2

echo -e "\n######################################"
echo "#           Building Pyrit           #"
echo "######################################"
sleep 2
sudo python setup.py build
sleep 3

echo -e "\n######################################"
echo "#          Installing Pyrit          #"
echo "######################################"
sleep 2
sudo python setup.py install
sleep 3

cd cpyrit-cuda-0.4.0/

echo -e "\n######################################"
echo "#     Building cpyrit CUDA module    #"
echo "######################################"
sleep 2
sudo python setup.py build
sleep 3

echo -e "\n######################################"
echo "#    Installing cpyrit CUDA module   #"
echo "######################################"
sleep 2
sudo python setup.py install
sleep 3

echo -e "\nDone."
