#!/bin/bash

FTP_DIR=/u01/app/oracle/oradata/P4DEV12CLIN/AUSTAUSCH/P4DEV12CLIN/xml/DEV_LOCAL
SFTP_GROUP=sftp_users

useradd 

adduser sftp                

echo "sftp:sftppwd"|chpasswd      


sed -i '/Match Group[ \t]*[\w]*/d' /etc/ssh/sshd_config
sed -i "/ChrootDirectory[ \t]*[\w]*/d" /etc/ssh/sshd_config
sed -i "/ForceCommand internal-sftp/d" /etc/ssh/sshd_config
sed -i  "/^Subsystem[ \t]*sftp/a Match Group ${SFTP_GROUP}\nChrootDirectory${FTP_DIR}\nForceCommand internal-sftp" /etc/ssh/sshd_config

