#!/bin/bash

cp /vagrant/userscripts/sources/template_listener.ora $ORACLE_HOME/network/admin/listener.ora

chown oracle:oinstall -R $ORACLE_HOME/network/admin/listener.ora
