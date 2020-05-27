#!/bin/bash

cd /etc/samba/
/bin/cp -f smb.conf smb.conf_org_new_box
mv /vagrant/userscripts/sources/smb.zip .
unzip -o smb.zip
rm -f smb.zip

service smb stop
service smb start

# new user
printf "oracle\noracle" | smbpasswd -a -s oracle

# autostart samba service
systemctl enable smb