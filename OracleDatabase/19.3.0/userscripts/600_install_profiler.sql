--ALTER SESSION SET CONTAINER=P4DEV12CLIN;

conn sys/"Operator12!"@P4DEV12CLIN as sysdba 

@$ORACLE_HOME/rdbms/admin/proftab.sql

@$ORACLE_HOME/rdbms/admin/profload.sql

create public synonym plsql_profiler_data for plsql_profiler_data;

create public synonym plsql_profiler_units for plsql_profiler_units;

create public synonym plsql_profiler_runs for plsql_profiler_runs;

create public synonym plsql_profiler_runnumber for plsql_profiler_runnumber;

grant select,insert,update,delete on plsql_profiler_data to public;

grant select,insert,update,delete on plsql_profiler_units to public;

grant select,insert,update,delete on plsql_profiler_runs to public;

grant select on plsql_profiler_runnumber to public;

quit;