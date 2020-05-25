#!/bin/bash

# get filesystem
cd /u01/app/oracle/oradata/ORCLCDB/P4DEV12CLIN
mkdir -p AUSTAUSCH/P4DEV12CLIN
cd AUSTAUSCH/P4DEV12CLIN
mv /vagrant/userscripts/sources/xml.zip .
unzip xml.zip
rm -f xml.zip
cd ..
chown oracle:dba -R .
# all directories to 755
find . -type d -exec chmod 755 {} \;
# all files to 644
find . -type f -exec chmod 644 {} \;

# create shortcuts
ln -s /u01/app/oracle/oradata/ORCLCDB/P4DEV12CLIN/AUSTAUSCH/P4DEV12CLIN/xml/DEV_LOCAL/ /AUSTAUSCH_DEV_LOCAL
ln -s /u01/app/oracle/oradata/ORCLCDB/P4DEV12CLIN/AUSTAUSCH/P4DEV12CLIN/xml/PRAESI_LOCAL/ /AUSTAUSCH_PRAESI_LOCAL
