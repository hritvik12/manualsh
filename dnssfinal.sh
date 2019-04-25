#!/bin/bash

echo " Welcome to dns configration script"

yum install bind* -y

wget -A.conf 'https://raw.githubusercontent.com/hritvik12/hritviksc/master/named.conf'

cp named.conf /etc/

wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/forward1' -P /var/named/

echo "Input your Ip address sir"

read ip_address
  
echo www	IN	A	 $ip_address >> /var/named/forward1



chgrp named	/var/named/forward1

systemctl restart named

firewall-cmd --permanent --add-port=53/tcp

firewall-cmd --permanent --add-port=53/udp

firewall-cmd --reload

rm /etc/hosts

rm /etc/resolv.conf

nslookup www.google.com
echo "yourd ns is now configured"

