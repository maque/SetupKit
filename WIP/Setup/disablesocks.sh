#!/bin/bash

#Preparing redsock transparent socket

OWNER=$USER

if [ "$OWNER" == "" ] ; then
OWNER="sys_bamboo"
echo "Using default user sys_bamboo"
fi

echo "Deleting redsocks configuration"
sudo iptables -t nat -D REDSOCKS -d 0.0.0.0/8 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 10.0.0.0/8 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 127.0.0.0/8 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 163.33.7.0/24 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 169.254.0.0/16 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 172.16.0.0/12 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 192.168.0.0/16 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 224.0.0.0/4 -j RETURN
sudo iptables -t nat -D REDSOCKS -d 240.0.0.0/4 -j RETURN

sudo iptables -t nat -D REDSOCKS -p tcp -j REDIRECT --to-ports 12345
sudo iptables -t nat -D OUTPUT -p tcp  -j REDSOCKS

sudo iptables -t nat -X REDSOCKS
echo "Done"

