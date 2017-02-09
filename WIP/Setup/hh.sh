#!/bin/bash
sudo add-apt-repository ppa:ultradvorka/ppa 
sudo apt-get update 
sudo apt-get install hh -y 
hh --show-configuration >> ~/.bashrc
