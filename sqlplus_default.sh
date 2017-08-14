sqlplus -s /nolog << EOF
CONNECT admin/password;

whenever sqlerror exit sql.sqlcode;
set echo off 
set heading off

@pl_script_1.sql
@pl_script_2.sql

exit;
EOF 
