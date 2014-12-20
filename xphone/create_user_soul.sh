#!/bin/bash

user="root"
passwd="1234"
tmp_file="table.sql"
host="127.0.0.1"
port=3306


create_user_soul_table_sql(){
cat << EOF > $tmp_file
	#$1是传进来的第一个参数
	CREATE TABLE t_user_soul_$1(
		userid int unsigned not null,
		soulid int unsigned not null,
		skill_level int unsigned not null default 1,
		whether_wear int unsigned not null defaule 0, 
		attach_attr binary(32) not null default 0x00000000,
		primary key (userid,soulid)
	)ENGINE=innodb CHARSET=UTF8;
EOF
}

dbx=1
table_index=0
while [ $table_index -lt 10 ] ; do
	tbx=`printf "%01d" $table_index`
	create_user_soul_table_sql $tbx
	#"test" 是数据库的名字
	#cat $tmp_file | mysql -u $root --password="$passwd" -h $host -P $port "test"
	cat $tmp_file | mysql -u root -p$passwd -h $host -P $port "test"
