#!/bin/bash

ssh $ROMONT_USER@146.185.163.64 -p $JSPORT -o ConnectTimeout=10 -o PasswordAuthentication=false -o BatchMode=yes "cd /var/www/romont.eebulle.ch/public_html/eebulle.romont/ && git pull"
