#!/bin/bash
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "Start installing zsh"
aptitude install zsh
echo "End installing zsh"
sleep 1
echo "Start downloading config file"
wget http://formation-debian.via.ecp.fr/fichiers-config/zshrc
wget http://formation-debian.via.ecp.fr/fichiers-config/zshenv
wget http://formation-debian.via.ecp.fr/fichiers-config/zlogin
wget http://formation-debian.via.ecp.fr/fichiers-config/zlogout
wget http://formation-debian.via.ecp.fr/fichiers-config/dir_colors
echo "End downloading config file"
sleep 2
echo "moving config file"
mv zshrc zshenv zlogin zlogout /etc/zsh/
mv dir_colors /etc/
