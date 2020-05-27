#!/bin/bash

mkdir -p /u01/app/oracle/oradata/P4DEV12CLIN/DUMPS/
chown -R oracle:oinstall /u01/app/oracle/oradata/P4DEV12CLIN

mkdir -p /u01/app/oracle/oradata/P4DEV12CLIN/AUSTAUSCH/P4DEV12CLIN
chown -R oracle:oinstall /u01/app/oracle/oradata/P4DEV12CLIN/AUSTAUSCH

mkdir -p /u01/app/oracle/oradata/P4DEV12CLIN/XML
chown -R oracle:oinstall /u01/app/oracle/oradata/P4DEV12CLIN/XML