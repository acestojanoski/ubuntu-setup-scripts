#!/bin/bash

# Author: Aleksandar Stojanoski

TEAMVIEWER_TMP=/tmp/teamviewer_amd64.deb;

echo "=============================="
echo "Removing the old teamviewer installer if it exists"
echo "=============================="
if [[ -f ${TEAMVIEWER_TMP} ]]; then
	rm ${TEAMVIEWER_TMP}
fi

echo "=============================="
echo "Downloading teamviewer installer"
echo "=============================="
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O ${TEAMVIEWER_TMP}

echo "=============================="
echo "Installing teamviewer"
echo "=============================="
dpkg -i ${TEAMVIEWER_TMP}
apt install -f

echo "=============================="
echo "Removing the teamviewer installer"
echo "=============================="
rm ${TEAMVIEWER_TMP}
