#!/bin/bash

#workaround grub popping up a menu during apt-get upgrade
#https://bugs.launchpad.net/ubuntu/+source/apt/+bug/1323772
sudo rm /boot/grub/menu.lst
sudo update-grub2

sudo apt-get autoremove -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get clean
