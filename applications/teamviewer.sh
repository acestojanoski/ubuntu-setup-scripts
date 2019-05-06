#!/bin/bash

if [[ -f /tmp/teamviewer-* ]]; then
	sudo rm /tmp/teamviewer-*.deb
fi

sudo wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O /tmp/teamviewer_amd64.deb

sudo dpkg -i /tmp/teamviewer_amd64.deb
sudo apt-get install -f

sudo rm /tmp/teamviewer_amd64.deb
