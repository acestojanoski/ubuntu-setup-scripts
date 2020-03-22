#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Unmaintained"
echo "=============================="

# # don't allow to run the script as root
# [ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

# echo "=============================="
# echo "Installing sardi icons"
# echo "=============================="

# SARDI_TMP=/tmp/sardi.tar.gz
# ICONS_DIRECTORY=${HOME}/.icons

# # cleaning tmp
# [ -f $SARDI_TMP ] && sudo rm -f $SARDI_TMP

# # if there is no .icons dir create it
# [ ! -d $ICONS_DIRECTORY ] && mkdir -p $ICONS_DIRECTORY

# # get latest sardi icons
# wget https://sourceforge.net/projects/sardi/files/latest/download -O $SARDI_TMP

# # extract the icons to the .icons dir
# tar -zxf $SARDI_TMP -C $ICONS_DIRECTORY

# # cleaning tmp
# [ -f $SARDI_TMP ] && sudo rm -f $SARDI_TMP
