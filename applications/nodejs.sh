#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Installing nodejs and npm"
echo "=============================="
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt-get install -y nodejs
