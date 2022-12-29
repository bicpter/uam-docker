#!/bin/sh
cd /tmp
apt update && apt -yq install wget libglib2.0-0 ca-certificates dnsmasq wondershaper
update-ca-certificates
wondershaper eth0 $2 $3 &
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
dpkg -i uam-latest_amd64.deb
cd /opt/uam/
echo "[net]" >> /root/.uam/uam.ini
container_ip="$(hostname -i)"
echo "listens=[${container_ip}]:4156" >> /root/.uam/uam.ini
./uam --pk $1 --http [0.0.0.0]:17099 --no-ui
