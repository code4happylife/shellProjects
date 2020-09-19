#!/usr/bin/env bash

# 大于小于号必须转义，否则shell会将它们当做重定向符号而把字符串值当做文件名处理
# 大于小于号顺序和sort命令所采用的有所不同
# mis-using string comparisons

val1=baseball
val2=hockey

################### 使用-gt 表示大于号 ##################
if [[ $val1 -gt $val2 ]]
then
	echo "$val1 is greater than $val2"
else
	echo "$val1 is less than $val2"
fi

################### 正确使用大于小于号 ###################
if [[ $val1 -gt $val2 ]]
then
	echo "$val1 is greater than $val2"
else
	echo "$val1 is less than $val2"
fi

################### test gt lt operator #################
a=77
b=5
if [[ $a -gt $b ]]
then
	echo "$a is greater than $b"
else
	echo "$a is less than $b"
fi
