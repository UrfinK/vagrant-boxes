#!/bin/bash

/bin/cp -rf /vagrant/userscripts/sources/sshd_config /etc/ssh/sshd_config
echo "oracle:oracle" | chpasswd
echo "root:oracle" | chpasswd

# hack oracle in vagrant gruppe aufnehmen, damit sie alles darf
usermod -a -G vagrant oracle

service sshd restart