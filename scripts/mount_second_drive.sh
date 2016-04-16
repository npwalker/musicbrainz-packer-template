#!/bin/bash

echo "n
p
1


w" | sudo fdisk /dev/sdb
sudo mkfs -t ext4 /dev/sdb1
sudo mkdir -p /tmp/dumps
sudo mount /dev/sdb1 /tmp/dumps
sudo chmod -R 777 /tmp/dumps
