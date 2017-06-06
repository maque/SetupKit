#!/bin/bash
TEMP=$(pwd)
cd /tmp
wget https://storage.googleapis.com/golang/go1.7.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.7.5.linux-amd64.tar.gz
rm go1.7.5.linux-amd64.tar.gz
mkdir ~/Programming/GO
echo "EXPORT PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "EXPORT GOPATH=~/Programming/GO" >> ~/.bashr
