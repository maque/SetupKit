#!/bin/bash

# Preparing redsoack transparent socket

export curdir=`dirname $0`

# sudo redsocks -c ${curdir}/redsocks.conf

OWNER=$USER

if [ "$OWNER" == "" ] ; then
OWNER="sys_bamboo"
echo "Using default user sys_bamboo"
fi

echo "Setup redsocks for user: $OWNER"

# Setup our kernel options
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo sh -c "echo 1 > /proc/sys/net/ipv4/tcp_syncookies"
sudo sh -c "echo 1 > /proc/sys/net/ipv4/conf/all/rp_filter"
sudo sh -c "echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts"
sudo sh -c "echo 1 > /proc/sys/net/ipv4/icmp_ignore_bogus_error_responses"
sudo iptables -t nat -N REDSOCKS
sudo iptables -t nat -A REDSOCKS -d 0.0.0.0/8 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 10.0.0.0/8 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 127.0.0.0/8 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 163.33.7.0/24 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 169.254.0.0/16 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 172.16.0.0/12 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 192.168.0.0/16 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 224.0.0.0/4 -j RETURN
sudo iptables -t nat -A REDSOCKS -d 240.0.0.0/4 -j RETURN

sudo iptables -t nat -A REDSOCKS -p tcp -j REDIRECT --to-ports 12345
sudo iptables -t nat -A OUTPUT -p tcp -j REDSOCKS

# DOCKER:
sudo iptables -t nat -A PREROUTING -i docker0 -p udp -j ACCEPT
sudo iptables -t nat -A PREROUTING -i docker0 -p tcp -j REDSOCKS

