#!/bin/bash

cp /vagrant/userscripts/sources/template_sqlnet.ora $ORACLE_HOME/network/admin/sqlnet.ora

chown oracle:oinstall -R $ORACLE_HOME/network/admin/sqlnet.ora