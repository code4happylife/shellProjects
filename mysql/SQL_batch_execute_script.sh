#!/usr/bin/env bash

user='root'
password='root'
database='dctest'

for f in `ls ./*.sql`
do
	echo ${f};
	mysql -u${user} -p${password} -f ${database} -e "source $f";
done
echo 'OK!'

<<'COMMENT'
MariaDB [(none)]> update mysql.user set authentication_string=password('root'), plugin = 'mysql_native_password' where user = 'root';
Query OK, 4 rows affected (0.00 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [(none)]> flush privileges;
Query OK, 0 rows affected (0.00 sec)

 mysqldump -u root -p dctest > dctest.sql
Enter password: 

COMMENT
