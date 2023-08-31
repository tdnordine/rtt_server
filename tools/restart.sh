#!/bin/bash
pkill 'node$'
cd /home/ec2-user/develop/server
git pull origin master >> /var/log/landc.log 2>&1
cd public/almoravid
git pull origin master >> /var/log/landc.log 2>&1
cd ../nevsky
git pull origin master >> /var/log/landc.log 2>&1
cd ../plantagenet
git pull origin master >> /var/log/landc.log 2>&1
cd ../inferno
git pull origin master >> /var/log/landc.log 2>&1
cd ../..
sudo node server.js >> /var/log/landc.log 2>&1 < /dev/null &