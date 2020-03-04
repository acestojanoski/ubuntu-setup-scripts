#!/bin/bash

# Author: Aleksandar Stojanoski

DOCKER_TMP=/tmp/docker-ce_amd64.deb;

echo "=============================="
echo "Removing the old docker installer if it exists"
echo "=============================="
if [[ -f ${DOCKER_TMP} ]]; then
	rm ${DOCKER_TMP}
fi

echo "=============================="
echo "Downloading docker installer"
echo "=============================="
wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_18.06.3~ce~3-0~ubuntu_amd64.deb \
	-O ${DOCKER_TMP}

echo "=============================="
echo "Installing docker"
echo "=============================="
dpkg -i ${DOCKER_TMP}
apt-get install -f

echo "=============================="
echo "Removing the docker installer"
echo "=============================="
rm ${DOCKER_TMP}
