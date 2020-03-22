#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

DOCKER_TMP=/tmp/docker-ce_amd64.deb;

echo "=============================="
echo "Removing the old docker installer if it exists"
echo "=============================="
[ -f $DOCKER_TMP ] && sudo rm $DOCKER_TMP

echo "=============================="
echo "Downloading docker installer"
echo "=============================="
wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_18.06.3~ce~3-0~ubuntu_amd64.deb \
	-O $DOCKER_TMP

echo "=============================="
echo "Installing docker"
echo "=============================="
sudo dpkg -i $DOCKER_TMP
sudo apt-get install -f

echo "=============================="
echo "Removing the docker installer"
echo "=============================="
[ -f $DOCKER_TMP ] && sudo rm $DOCKER_TMP
