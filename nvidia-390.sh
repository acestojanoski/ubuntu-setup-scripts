#!/bin/bash

echo "Updating package lists"
sudo apt update

echo "Removing old nvidia packages"
sudo apt purge "^nvidia-.*" -y

echo "Installing nvidia driver 390 and core packages"
sudo apt install nvidia-driver-390 nvidia-prime nvidia-settings -y
