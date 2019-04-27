#!/bin/bash
echo "Hello World"
echo "1. yum 2.dnsfinal 3.mariadb 4.samba 5.useradd"
read CHOICE


case "$CHOICE" in
"1")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/yummy.sh' -P/
. yummy.sh;;

"2")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/hritviksc/master/dnssfinal.sh' -P /
. dnssfinal.sh;;

"3")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/maria.sh' -P /
. maria.sh;;
"4")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/sambas.sh' -P /
. sambas.sh;;
"5")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/useradd.sh' -P /
. useradd.sh;;



esac

