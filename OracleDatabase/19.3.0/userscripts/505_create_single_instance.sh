#!/bin/bash

cp -f /vagrant/userscripts/sources/dbca* $ORACLE_HOME/assistants/dbca/templates/

chown oracle:oinstall -R $ORACLE_HOME/assistants/dbca/templates/dbca*

su -l oracle -c "dbca -silent -createDatabase -responseFile $ORACLE_HOME/assistants/dbca/templates/dbca.rsp  ; echo $? ; exit 0"

# edit /etc/oratab => P4DEV12CLIN:/opt/oracle/product/19c/dbhome_1:N -> P4DEV12CLIN:/opt/oracle/product/19c/dbhome_1:Y
# sed -i 's/^P4DEV12CLIN/#P4DEV12CLIN/g' /etc/oratab
# Lege Datei neu an
echo "P4DEV12CLIN:/opt/oracle/product/19c/dbhome_1:Y" > /etc/oratab