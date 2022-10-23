pkg install root-repo
pkg install x11-repo

pkg install proxychains-ng
pkg install tor
pkg install git
pkg install nmap
pkg install perl
pkg install ruby

pkg install python
pip3 install --upgrade pip
apt update
apt upgrade
apt-get install full-upgrade -y

echo "bell-character = ignore" >> .termux/termux.properties
echo "alias c='clear'" >> ../usr/etc/bash.bashrc

echo "alias l='ls -a'" >> ../usr/etc/bash.bashrc

echo "alias pc='proxychains4 -q'" >> ../usr/etc/bash.bashrc

echo "alias pcip='pc curl ifconfig.me" >> ../usr/etc/bash.bashrc

echo "alias ip='curl ifconfig.me'" >> ../usr/etc/bash.bashrc

sed -i '18 s/./#&/' ../usr/etc/proxychains.conf

sed -i '10 s/.//' ../usr/etc/proxychains.conf