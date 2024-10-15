#/bin/bash


apt update && apt upgrade -y
apt install iotop htop ripgrep mc iptraf-ng rlwrap ncdu -y
apt install build-essential linux-headers-$(uname -r) -y

# включаем автологин под пользователем kali
sed -i -e "s/#autologin-user=/autologin-user=kali/g" /etc/lightdm/lightdm.conf
sed -i -e "s/#autologin-user-timeout=0/autologin-user-timeout=0/g" /etc/lightdm/lightdm.conf
# cat /etc/lightdm/lightdm.conf | grep autologin

# выключаем автоблокировку экрана
echo "Hidden=true" >> /etc/xdg/autostart/light-locker.desktop
xset s 0 0 

# install Havoc
# sudo apt install -y git build-essential apt-utils cmake libfontconfig1 libglu1-mesa-dev libgtest-dev libspdlog-dev libboost-all-dev libncurses5-dev libgdbm-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev mesa-common-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5websockets5 libqt5websockets5-dev qtdeclarative5-dev golang-go qtbase5-dev libqt5websockets5-dev libspdlog-dev python3-dev libboost-all-dev mingw-w64 nasm 
cd /opt
#git clone https://github.com/HavocFramework/Havoc.git
git clone https://github.com/RalfHacker/Havoc.git
cd Havoc
make

# Меняем время отстука агентов
sed -i -e "s/Sleep = 2/Sleep = 0/g" /opt/Havoc/data/havoc.yaotl
