#!/bin/bash

if [[ -f /tmp/virtualbox_amd64.deb ]]; then
	sudo rm /tmp/virtualbox_amd64.deb
fi

sudo wget https://download.virtualbox.org/virtualbox/6.0.10/virtualbox-6.0_6.0.10-132072~Ubuntu~bionic_amd64.deb -O /tmp/virtualbox_amd64.deb

sudo dpkg -i /tmp/virtualbox_amd64.deb
sudo apt install -f

sudo rm /tmp/virtualbox_amd64.deb
