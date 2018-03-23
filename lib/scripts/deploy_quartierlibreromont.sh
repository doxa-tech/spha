#!/bin/bash

sudo -u spha ssh $1@146.185.163.64 -p $2 -o ConnectTimeout=10 -o PasswordAuthentication=false -o BatchMode=yes "cd /var/www/quartierlibreromont.ch/public_html/quartierlibreromont.ch/ && git pull"
