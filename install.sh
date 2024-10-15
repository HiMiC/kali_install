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
sed -i -e "s/Sleep = 2/Sleep = 0/g" /opt/Havoc/profiles/havoc.yaotl

mkdir -p /opt/Havoc/data/extensions
wget https://gist.github.com/e24bca8407d69c8ea28d4bc9d423f85b.git -O /opt/Havoc/data/extensions/auto_suite.py

cd /opt/Havoc/data/extensions
wget --no-check-certificate --content-disposition https://gist.githubusercontent.com/p4p1/e24bca8407d69c8ea28d4bc9d423f85b/raw/auto_suite.py
wget --no-check-certificate --content-disposition https://gist.githubusercontent.com/p4p1/ac7b50eb5ec37529b8745e13718ed746/raw/havoc-fetch.py
wget --no-check-certificate --content-disposition https://gist.githubusercontent.com/jakobfriedl/f55bd4f870348e68e0eb27ad6a2fa48b/raw/ADOE.py
git clone https://github.com/p4p1/havoc-reporter.git
git clone https://github.com/icyguider/Shhhloader.git
git clone https://github.com/matro7sh/matro7sh_loaders.git
git clone https://github.com/matro7sh/matro7sh_loaders.git
git clone https://github.com/jakobfriedl/mitre4havoc.git
git clone https://github.com/p4p1/havoc-privkit.git
git clone https://github.com/Cipher7/havoc-SauronEye.git
git clone https://github.com/p4p1/havoc-ligolo.git
git clone https://github.com/Cipher7/havoc-PoolParty.git
git clone https://github.com/jakobfriedl/havoc-NoPowerShell.git
git clone https://github.com/p4p1/havoc-bloodhound.git
git clone https://github.com/m7rick/Havoc-DLLHijack.git


