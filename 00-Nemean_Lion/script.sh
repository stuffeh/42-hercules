#!/bin/bash
#if ! [ $(id -u) = 0 ]; then
#	echo "This script must be run as root!"
#	exit 1
#fi
sudo -kSs << EOF
jelly
whoami

cp /etc/ssh/sshd_config /etc/ssh/sshd_config_BAK
sed -i "s/#Port 22/Port 2222/g" /etc/ssh/sshd_config
/etc/init.d/ssh restart
