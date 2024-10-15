#/bin/bash


apt update && apt upgrade -y
apt install iotop htop ripgrep mc iptraf-ng rlwrap ncdu

# включаем автологин под пользователем kali
sed -i -e "s/#autologin-user=/autologin-user=kali/g" /etc/lightdm/lightdm.conf
sed -i -e "s/#autologin-user-timeout=0/autologin-user-timeout=0/g" /etc/lightdm/lightdm.conf
# cat /etc/lightdm/lightdm.conf | grep autologin

# выключаем автоблокировку экрана
echo "Hidden=true" >> /etc/xdg/autostart/light-locker.desktop
xset s 0 0 

# install Havoc
cd /opt
#git clone https://github.com/HavocFramework/Havoc.git
git clone https://github.com/RalfHacker/Havoc.git
cd Havoc
make
