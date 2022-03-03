#!/bin/bash

mkdir /root/.config
snap install doctl
doctl auth init --access-token $API_KEY
~/stop-russia/automation/digitaocean/clear.sh
~/stop-russia/automation/digitaocean/init.sh 9

# cron
apt install cron
systemctl enable cron
(crontab -l 2>/dev/null; echo "* 3 * * * ~/stop-russia/automation/digitaocean/recreate_droplets.sh") | crontab -
