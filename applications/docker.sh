#!/bin/bash

if [[ -f /tmp/docker-ce_amd64.deb ]]; then
	sudo rm /tmp/docker-ce_amd64.deb
fi

sudo wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_18.06.3~ce~3-0~ubuntu_amd64.deb -O /tmp/docker-ce_amd64.deb

sudo dpkg -i /tmp/docker-ce_amd64.deb
sudo apt-get install -f

sudo rm /tmp/docker-ce_amd64.deb
