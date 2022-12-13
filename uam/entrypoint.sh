#!/bin/sh
cd /tmp
apt update && apt -yq install wget libglib2.0-0 ca-certificates dnsmasq
update-ca-certificates
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
dpkg -i uam-latest_amd64.deb
cd /opt/uam/
./uam --pk $1 --http [0.0.0.0]:17099 --no-ui
