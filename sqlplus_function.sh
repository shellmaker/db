function reset_db
{
        if [ $usr_input == 1 ]  
        then
        sqlplus -s $USR/$pwd@$SID << EOF

        delete from table1 where component = 'ABC';
        delete from table2 where component = 'ABC';
        exit
EOF
        else if [ $usr_input == 2 ]

        delete from table1 where component = 'XYZ';
        delete from table2 where component = 'XYZ';
        exit
EOF
fi
}
