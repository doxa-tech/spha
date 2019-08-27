#!/bin/bash

sudo -u spha ssh $1@146.185.163.64 -p $2 -o ConnectTimeout=10 -o PasswordAuthentication=false -o BatchMode=yes "cd /var/www/preview.waykup.ch/public_html/waykup.ch/ && git pull && echo $'User-agent: *\nDisallow: /' > robot.txt"
