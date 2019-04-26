#!/bin/bash

echo " Welcome to my yum config script"

mount -o loop /dev/sr0 /mnt/

cd /mnt/

ls

cd Packages/

rpm -ivh vsftpd-3.0.2-22.el7.x86_64.rpm

cp /mnt/* /var/ftp/pub -rvf

cd /var/ftp/pub/

ls

cd

rpm -qa vsftpd
rpm -qa createrepo

echo "[server]
name = server
baseurl = file:///var/ftp/pub
enabled = 1
gpgcheck = 0" > /etc/yum.repos.d/server.repo

createrepo -v /var/ftp/pub/

yum clean up

yum repolist

yum install nfs*
