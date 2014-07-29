#!/bin/bash
# NVIDIA-Installer-Squeeze
#
# GNU Public License V.3
if [ $USER != root ]; then
echo "¡Is necessary be root!"
exit 0
fi
echo "[Add Repository] [Please Wait]"
sleep 2
echo "deb http://ftp.debian.org/debian/ squeeze main contrib non-free" >> /etc/apt/sources.list
echo "[Update Repository]"
sleep 2
aptitude update
aptitude safe-upgrade
echo "[Installing Nvidia-Kernel-Module]"
sleep 2
VERSION=`uname -r`
aptitude install nvidia-kernel-$VERSION nvidia-glx
aptitude install nvidia-xconfig
nvidia-xconfig
echo "[Installing Nvidia-Settings]"
sleep 2
aptitude install nvidia-settings
echo "[Is necessary reboot to apply the changes]"
echo -n "[Do you want reboot now {y/n}]: " ; read var
case $var in
y)
reboot
;;
n)
exit
esac
