#!/usr/bin/env bash

# send data to the the table in the MYSQL database

MYSQL=`which mysql`

if [ $# -ne 2 ]
then
	echo "Usage:id,name"
else
	#./insert_data_intoDB.sh 1 jack
	#脚本变量一定要用双引号，字符串变量使用单引号
	statement=" insert into student values($1, '$2')"
	$MYSQL dctest -u root << EOF
	$statement
EOF
	if [ $? -eq 0 ]
	then
		echo Data successfully added
	else
		echo Problem adding data
	fi
fi



 << 'COMMENT'
#MariaDB [dctest]> CREATE TABLE `student`(`stu_id` INT UNSIGNED AUTO_INCREMENT,`stu_name` VARCHAR(100) NOT NULL, PRIMARY KEY(`stu_id`)) DEFAULT CHARSET=utf8;
Query OK, 0 rows affected (0.01 sec)

MariaDB [dctest]> select * from student;
+--------+----------+
| stu_id | stu_name |
+--------+----------+
|      1 | jack     |
+--------+----------+
1 row in set (0.00 sec)

COMMENT
