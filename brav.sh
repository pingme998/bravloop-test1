#!/bin/bash
#while :
#do
curl -L "$rclone_config_in_url" >/rclone.conf
cd /
#rclone copy 1:brav.tar.gz / --config=/rclone.conf
#tar -xf /brav.tar.gz
#cp /brav/rclone /usr/bin/rclone
mkdir /brav
chmod +x /usr/bin/rclone
#timeout -k 1500 1510 
brave-browser-stable --no-sandbox --disable-dev-shm-usage --disable-gpu --no-default-browser-check --disable-client-side-phishing-detection --deterministic-mode --user-data-dir=/brav
curl -L "$SELF"
rm /brav.tar.gz
therandom=$(date |sed 's/ /-/g')
tar -vcf "/brav-$therandom.tar.gz" /brav
rclone copy "/brav-$therandom.tar.gz" 1: --config=/rclone.conf
echo "brav-$therandom.tar.gz" 
curl "$PING=brav-$therandom.tar.gz"
sleep 5000
curl -L "PASS"
#done
