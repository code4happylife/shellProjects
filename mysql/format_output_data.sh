#!/usr/bin/env bash

#redirecting SQL output to a variable

MYSQL=`which mysql`
dbs=`$MYSQL dctest -u root -Bse 'show tables;'`
for db in $dbs
do
	echo $db
done


#使用xml输出数据
$MYSQL dctest -u root -X -e 'select * from student'

#使用table标签输出数据
$MYSQL dctest -u root -H -e 'select * from student'

<<'COMMENT'
student
<?xml version="1.0"?>

<resultset statement="select * from student
" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <row>
        <field name="stu_id">1</field>
        <field name="stu_name">jack</field>
  </row>

  <row>
        <field name="stu_id">2</field>
        <field name="stu_name">lucy</field>
  </row>

  <row>
        <field name="stu_id">3</field>
        <field name="stu_name">tom</field>
  </row>

  <row>
        <field name="stu_id">4</field>
        <field name="stu_name">jerry</field>
  </row>

  <row>
        <field name="stu_id">5</field>
        <field name="stu_name">luis</field>
  </row>
</resultset>
<TABLE BORDER=1><TR><TH>stu_id</TH><TH>stu_name</TH></TR><TR><TD>1</TD><TD>jack</TD></TR><TR><TD>2</TD><TD>lucy</TD></TR><TR><TD>3</TD><TD>tom</TD></TR><TR><TD>4</TD><TD>jerry</TD></TR><TR><TD>5</TD><TD>luis</TD></TR></TABLE>

COMMENT
