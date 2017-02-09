#!/bin/bash
#sudo apt-get update
#sudo apt-get upgrade -y
#sudo visudo
USER_SCRIPT=$USER
#sudo USER_SCRIPT=$USER_SCRIPT bash -c 'echo "${USER_SCRIPT} ALL=(ALL:ALL) ALL" | (EDITOR="tee -a" visudo)'
#sudo apt install redsocks
#sudo systemctl stop redsocks
#mkdir -p /home/${USER_SCRIPT}/tools/redsocks/
#cp enablesocks.sh /home/${USER_SCRIPT}/tools/redsocks/
#cp disablesocks.sh /home/${USER_SCRIPT}/tools/redsocks/
#cp redsocks.conf /home/${USER_SCRIPT}/tools/redsocks/
read -r -d '' redsocks_setup  << EOF
[Unit]
Description=Redsocks transparent SOCKS proxy redirector
After=network.target

[Service]
Type=forking
EnvironmentFile=/etc/default/redsocks
ExecStartPre=/home/${USER_SCRIPT}/tools/redsocks/enablesocks.sh
ExecStart=/usr/sbin/redsocks -c \${CONFFILE}
ExecStopPost=/home/${USER_SCRIPT}/tools/redsocks/disablesocks.sh

[Install]
WantedBy=multi-user.target
EOF


#echo "$redsocks_setup" | sudo tee /lib/systemd/system/redsocks.service
#echo "CONFFILE=\"/home/${USER_SCRIPT}/tools/redsocks/redsocks.conf\"" | sudo tee /etc/default/redsocks
#sudo systemctl daemon-reload
#sudo systemctl start redsocks

#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

#sudo apt install firefox -y

#wget http://download-cf.jetbrains.com/go/gogland-163.10615.6.tar.gz
#wget https://storage.googleapis.com/golang/go1.7.5.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzf go1.7.5.linux-amd64.tar.gz
#rm go1.7.5.linux-amd64.tar.gz
#mkdir ~/Programming/GO
#sudo apt install terminator -y
#echo "EXPORT PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
#echo "EXPORT GOPATH=~/Programming/GO" >> ~/.bashrc
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

