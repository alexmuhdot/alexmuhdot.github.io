pkg install root-repo
pkg install x11-repo

apt-get update
 apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade -y

pkg install proxychains-ng -y
pkg install tor -y
pkg install git -y
pkg install nmap -y
pkg install perl -y
pkg install ruby -y
pkg install openssh -y
pkg install dirb -y


pkg install python -y
pip3 install --upgrade pip 


echo "bell-character = ignore" >> .termux/termux.properties
echo "alias c='clear'" >> ../usr/etc/bash.bashrc

echo "alias l='ls -a'" >> ../usr/etc/bash.bashrc

echo "alias pc='proxychains4 -q'" >> ../usr/etc/bash.bashrc

echo "alias pct='pc curl ifconfig.me'" >> ../usr/etc/bash.bashrc

echo "alias ipt='curl ifconfig.me'" >> ../usr/etc/bash.bashrc

echo "alias nmapvx='nmap -sC -sV -Pn -p- --script vulners -vv'" >> ../usr/etc/bash.bashrc

sed -i '18 s/./#&/' ../usr/etc/proxychains.conf

sed -i '10 s/.//' ../usr/etc/proxychains.conf

exit
