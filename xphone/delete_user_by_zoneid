#!/bin/bash

user="root"
passwd="1234"
tmp_file="table.sql"
host="127.0.0.1"
port=3306

zone_id=3

delete_from_userinfo_zone(){
cat << EOF > $tmp_file
	#$1是传进来的第一个参数
	DELETE FROM t_userinfo_zone_$1 where zone_id = $zone_id;
EOF
}

dbx=1
table_index=0
database_index=0
while [ $table_index -lt 10 ] ; do
	#tbx=`printf "%01d" $table_index`
	#create_user_soul_table_sql $tbx
	#"test" 是数据库的名字
	#cat $tmp_file | mysql -u $root --password="$passwd" -h $host -P $port "test"
	#cat $tmp_file | mysql -u root -p$passwd -h $host -P $port "user_1"
	$datebase_index = 0;
	while[$database_index -lt 10];do
		tbx = printf "%01d" $table_index
		delete_from_userinfo_zone $tbx
		
		db_name = printf "user_%d" $database_index
		cat $tmp_file | mysql -u root -p$passwd -h $host -P $port $db_name
	done
done
