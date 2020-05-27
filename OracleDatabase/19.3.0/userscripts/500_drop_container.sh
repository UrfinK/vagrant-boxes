#!/bin/bash

echo '1. DeletePluggableDatabase'
su -l oracle -c "dbca -deletePluggableDatabase -pdbName P4DEV12CLIN -sourceDB ORCLCDB -sysDBAPassword Operator12! -silent"

echo '2. DeleteDatabase'
# ging aber schickt unschön in Hintergrund
# su -l oracle -c "dbca -deleteDatabase -sourceDB orclcdb -sysDBAUserName sys -sysDBAPassword Operator12! -silent & echo $? & exit 0"
su -l oracle -c "dbca -deleteDatabase -sourceDB orclcdb -sysDBAUserName sys -sysDBAPassword Operator12! -silent ; echo $? ; exit 0"

echo '3. remove path'
#rm -rf /opt/oracle/oradata/ORCLCDB/

echo '4. modify oratab'
# edit /etc/oratab => ORCLCDB -> #ORCLCDB +  P4DEV12CLIN -> #P4DEV12CLIN
sed -i 's/^ORCLCDB/#ORCLCDB/g' /etc/oratab
sed -i 's/^P4DEV12CLIN/#P4DEV12CLIN/g' /etc/oratab