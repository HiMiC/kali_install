#/bin/bash


apt update && apt upgrade -y
apt install iotop htop ripgrep mc iptraf-ng rlwrap




# install Havoc
cd /opt
#git clone https://github.com/HavocFramework/Havoc.git
git clone https://github.com/RalfHacker/Havoc.git
cd Havoc
make
