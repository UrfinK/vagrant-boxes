ALTER SESSION SET CONTAINER=P4DEV12CLIN;

create tablespace PHOENIX_ACT datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_ACT.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_DAT1 datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_DAT1_01.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_DAT2 datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_DAT2_01.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_DAT3 datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_DAT3_01.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_DIC datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_DIC_01.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_IDX1 datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_IDX1_01.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_PRT datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_PRT.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_PWP datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_PWP.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_SST datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_SST.DBF' size 20m autoextend on next 10m maxsize unlimited;

create tablespace PHOENIX_HIST datafile '/opt/oracle/oradata/ORCLCDB/P4DEV12CLIN/PHOENIX_HIST.DBF' size 20m autoextend on next 10m maxsize unlimited;

quit;