#!/usr/bin/env bash

#退出状态码，最大为255，超过则进行模运算
#testing the exit status
var1=10
var2=20
var3=$[ $var1 + $var2 ]
echo The answer is $var3
var4=99
var5=100
var6=$[ $var4 * $var5 ]
echo "The result value is $var6"

exit 6

#echo $? will be 6


