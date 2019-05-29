#!/bin/bash

rm -rf /tmp/Airblader

echo "Cloning i3-gaps"
git clone https://github.com/Airblader/i3.git /tmp/Airblader
cd /tmp/Airblader

echo "Compiling and installing"
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

rm -rf /tmp/Airblader
