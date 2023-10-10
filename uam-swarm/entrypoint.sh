#!/bin/bash
cd /tmp
file=uam-latest_amd64.deb
rm $file
wget --no-check-certificate https://github.com/anhtuan9414/temp-2/raw/main/$file
dpkg -i /tmp/$file
cd /opt/uam/
echo "[net]" >> /root/.uam/uam.ini
container_ip="$(hostname -i)"
echo "listens=[${container_ip}]:$2" >> /root/.uam/uam.ini
./uam --pk $1 --http [0.0.0.0]:17099 --no-ui
