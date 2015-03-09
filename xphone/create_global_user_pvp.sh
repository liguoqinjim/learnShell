#!/bin/bash

user="root"
passwd="1234"
tmp_file="table.sql"
host="127.0.0.1"
port=3306


create_global_user_pvp_table_sql(){
cat << EOF > $tmp_file
	CREATE TABLE t_global_user_pvp(
		userid int unsigned not null,
		pvp_value int unsigned not null,
		pvp_point int unsigned not null,
		pvp_value_last int unsigned not null,
		pvp_value_max int unsigned not null,
		pvp_value_temp int unsigned not null,
		primary key (userid)
	)ENGINE=innodb CHARSET=UTF8;
EOF
}


create_global_user_pvp_table_sql
cat $tmp_file | mysql -u root -p$passwd -h $host -P $port "test"
