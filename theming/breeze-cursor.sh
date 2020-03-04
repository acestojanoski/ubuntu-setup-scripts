#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Updating package lists"
echo "=============================="
apt update

echo "=============================="
echo "Installing breeze cursor theme"
echo "=============================="
apt install breeze-cursor-theme -y
