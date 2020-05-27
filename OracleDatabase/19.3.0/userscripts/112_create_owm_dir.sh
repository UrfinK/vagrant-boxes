#!/bin/bash

mkdir /home/oracle/owm
cd /home/oracle/owm
mv /vagrant/userscripts/sources/owm.zip .
unzip owm.zip
rm -f owm.zip
cd ..
chown oracle:oinstall -R owm