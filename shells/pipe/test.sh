#!/bin/bash

user="root"
passwd="1234"
host="127.0.0.1"
tmp_file="table.sql"
port=3306

#cat a.txt | echo "a"


# dbx=1
# table_index=0
# while [ $table_index -lt 10 ] ; do
# 	tbx=`printf "%01d" $table_index`
# 	create_user_item_table_sql $tbx
# 	cat $tmp_file | mysql -u $user --password="$passwd" -h $host -P $port "user_$dbx"
# 	table_index=`expr $table_index + 1`
# done 


cat a.sql | mysql -u $user --password="$passwd" -h $host -P $port "test"

