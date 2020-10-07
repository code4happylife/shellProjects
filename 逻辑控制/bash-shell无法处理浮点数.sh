#!/usr/bin/env bash

#bash shell 仅能处理浮点数值,test命令无法处理val1变量中存储的浮点值

#testing floating point numbers

val1=`echo "scale=4; 10 / 3" | bc`
echo "The test value is $val1"
if [ $val1 -gt 3 ]
then
	echo "The result is larger than 3"
fi

val2=`echo "scale=5; 3/9" |bc`
echo "The test value is $val2"
if [ $val2 -gt 0 ]
then
	echo "The result is larger than 0"
fi

<<COMMENT
The test value is 3.3333
./bash-shell无法处理浮点数.sh: 第 9 行:[: 3.3333: 期待整数表达式
The test value is .33333
./bash-shell无法处理浮点数.sh: 第 16 行:[: .33333: 期待整数表达式

COMMENT
