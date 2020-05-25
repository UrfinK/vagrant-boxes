#!/bin/bash

SRV_ROOT=/opt/p4server

# prepare user incl. workspace
useradd p4 --home /home/p4
mkdir -p /home/p4/P4/workspace-server
/bin/cp -rf /vagrant/userscripts/sources/server.properties /home/p4/P4/workspace-server
chown -R p4:p4 /home/p4/

# create init link
mkdir $SRV_ROOT
touch $SRV_ROOT/p4server-initscript
chmod u+x $SRV_ROOT/p4server-initscript

ln -sf $SRV_ROOT/p4server-initscript /etc/init.d/p4server
