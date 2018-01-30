echo "none / cygdrive binary,posix=0,user 0 0" > /etc/fstab
wget -O ~/.minttyrc https://raw.githubusercontent.com/karlin/mintty-colors-solarized/master/.minttyrc--solarized-dark
echo "Term=xterm-256color" >> ~/.minttyrc

wget -O ~/.dir_colors https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
#echo "eval `dircolors ~/.dir_colors`" >> ~/.bashrc
echo "alias ls="ls --color"" >> ~/.bashrc
