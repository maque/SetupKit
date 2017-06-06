#!/bin/bash
sudo apt-get install qemu-kvm libvirt-bin virt-manager lib32ncurses5 lib32z1 lib32stdc++6 -y
sudo gpasswd -a USER libvirtd
