#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Updating package lists"
echo "=============================="
apt update

echo "=============================="
echo "Installing arc theme"
echo "=============================="
apt install arc-theme -y
