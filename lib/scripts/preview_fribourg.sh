#!/bin/bash

ssh $FRIBOURG_USER@146.185.163.64 -p $JSPORT -o ConnectTimeout=10 -o PasswordAuthentication=false -o BatchMode=yes "cd /var/www/preview.fribourg.eebulle.ch/public_html/ && git pull"
