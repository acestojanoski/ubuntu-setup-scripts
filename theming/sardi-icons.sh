#!/bin/bash

# cleaning tmp
[ -f /tmp/sardi.tar.gz ] && sudo rm -f /tmp/sardi.tar.gz
# if there is no .icons dir create it
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

# get latest sardi icons
wget https://sourceforge.net/projects/sardi/files/latest/download -O /tmp/sardi.tar.gz

# extract the icons to the .icons dir
tar -zxf /tmp/sardi.tar.gz -C $HOME"/.icons"

# cleaning tmp
[ -f /tmp/sardi.tar.gz ] && sudo rm -f /tmp/sardi.tar.gz
