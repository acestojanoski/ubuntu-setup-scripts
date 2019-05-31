#!/bin/bash

sudo apt install i3 i3lock i3status dmenu feh lxappearance compton j4-dmenu-desktop gsimplecal -y

cd && sudo rm -rf bumblebee-status
git clone git://github.com/tobi-wan-kenobi/bumblebee-status
