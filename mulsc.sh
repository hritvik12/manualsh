#!/bin/bash
echo "Hello World"
echo "1. yummy 2.dnsfinal 3.apache"
read CHOICE


case "$CHOICE" in
"1")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/yummy.sh' -P/
. yummy.sh;;

"2")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/hritviksc/master/dnssfinal.sh' -P /
. dnssfinal.sh;;

"3")
wget -A.conf 'https://raw.githubusercontent.com/hritvik12/manualsh/master/apache180.sh' -P /
. apache180.sh;;

esac

