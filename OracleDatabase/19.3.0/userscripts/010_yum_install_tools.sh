#!/bin/bash

yum -y install dos2unix
yum -y install gcc
# Samba 
yum -y install samba
yum -y install samba-client
# 32 bit glibc für AppServer
yum -y install glibc.i686
# start-stop-daemon für AppServer
# per <um nicht verfügbar TODO anpassen
# yum -y install start-stop-daemon

# Download file
wget -O ~/start-stop-daemon.tar.gz http://developer.axis.com/download/distribution/apps-sys-utils-start-stop-daemon-IR1_9_18-2.tar.gz
# Extract the directory
mkdir ~/start-stop-daemon
tar zxvf ~/start-stop-daemon.tar.gz -C ~/start-stop-daemon
# Compile and move executable
gcc ~/start-stop-daemon/apps/sys-utils/start-stop-daemon-IR1_9_18-2/start-stop-daemon.c -o ~/start-stop-daemon/start-stop-daemon
cp ~/start-stop-daemon/start-stop-daemon /usr/sbin/
# Clean up
rm -rf ~/start-stop-daemon
rm -f ~/start-stop-daemon.tar.gz
