#!/usr/bin/env bash

#连接数据库
mysql=`which mysql`
#发送单个命令
$mysql information_schema -u root -e "show databases;"

#发送多个命令
$mysql information_schema -u root << EOF
show tables;
select * from INNODB_SYS_TABLES;
EOF
