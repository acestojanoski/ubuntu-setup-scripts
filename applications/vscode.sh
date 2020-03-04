#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Installing visual studio code"
echo "=============================="

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

apt install apt-transport-https -y
apt update
apt install code -y
