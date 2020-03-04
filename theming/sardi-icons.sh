#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Installing sardi icons"
echo "=============================="

SARDI_TMP=/tmp/sardi.tar.gz;
ICONS_DIRECTORY=${HOME}/.icons

# cleaning tmp
if [[ -f ${SARDI_TMP} ]]; then
    rm -f ${SARDI_TMP}
fi;

# if there is no .icons dir create it
if [[ -d ${ICONS_DIRECTORY} ]]; then
    mkdir -p ${ICONS_DIRECTORY}
fi;

# get latest sardi icons
wget https://sourceforge.net/projects/sardi/files/latest/download -O ${SARDI_TMP}

# extract the icons to the .icons dir
tar -zxf ${SARDI_TMP} -C ${ICONS_DIRECTORY}

# cleaning tmp
if [[ -f ${SARDI_TMP} ]]; then
    rm -f ${SARDI_TMP}
fi;
