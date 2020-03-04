#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Updating package lists"
echo "=============================="
apt update

echo "=============================="
echo "Installing papirus icons"
echo "=============================="
apt install papirus-icon-theme -y
