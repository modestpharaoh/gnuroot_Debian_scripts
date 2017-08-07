#!/bin/bash

cd /root
apt-get update && apt-get upgrade
apt-get install ssh ffmpeg git execstack imagemagick luminance-hdr python-pip nano vim net-tools wget 

# fix x264 package
git clone http://git.videolan.org/git/x264.git
cd x264
./configure
make
make install
execstack -c /usr/lib/arm-linux-gnueabihf/libx264.so.142

# install googlemaps library 
python2.7 -m pip install -U googlemaps

# install busybox to /bin
/support/busybox --install -s /bin
