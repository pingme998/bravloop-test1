#!/bin/bash
curl -L "rclone_config_in_url" >/rclone.conf
git clone https://github.com/pingme998/bravloop-test1
mv /bravloop-test1 /app
chmod +x /app/entrypoint.sh
chmod +x /app/conf.d/websockify.sh
bash /app/entrypoint.sh
