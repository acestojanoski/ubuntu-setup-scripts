#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Updating package lists"
echo "=============================="
apt update

echo "=============================="
echo "Removing old nvidia packages"
echo "=============================="
apt purge "^nvidia-.*" -y

echo "=============================="
echo "Installing nvidia driver 390 and core packages"
echo "=============================="
apt install nvidia-driver-390 nvidia-prime nvidia-settings -y
