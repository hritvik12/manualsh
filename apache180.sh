#!/bin/bash

echo " Welcome to apache config "

sudo yum install httpd* -y


wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/1.conf'
echo "input your ip address"

read ip_address

echo "<virtualhost $ip_address:80>"  > /etc/httpd/conf.d/1.conf




cp 1.conf /etc/httpd/conf.d/

wget https://raw.githubusercontent.com/hritvik12/hritviksc/master/index.html 

cp index.html /var/www/html/

systemctl restart httpd

curl www.google.com

