#!/bin/bash
echo "The required packages are about to be installed:"
sleep 1
apt-get update && apt-get upgrade
apt-get install -y software-properties-common
add-apt-repository ppa:chris-lea/node.js
apt-get update && apt-get install -y python-software-properties python g++ make git nginx nodejs=0.10.18-1chl1~precise1

echo "Setting up services:"
sleep 1
service nginx start
# To be sure nginx is set to come up after a reboot
update-rc.d nginx defaults
