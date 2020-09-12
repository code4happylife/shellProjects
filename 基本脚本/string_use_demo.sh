#!/usr/bin/env bash

################### 使用单引号拼接字符串 ###################
name1='white'
str1='hello, '${name1}''
str2='hello, ${name1}'
echo ${str1}_${str2}
# Output:
# hello, white_hello, ${name1}
name3='green'
str5='hello,'${name3}''
str6='hello, ${name3}'
echo ${str5}_${str6}

################### 使用双引号拼接字符串 ###################
name2="black"
str3="hello, "${name2}""
str4="hello, ${name2}"
echo ${str3}_${str4}
# Output:
# hello, black_hello, black
name4='pink'
str7="hello, "${name4}""
str8="hello, ${name4}"
echo ${str7}_${str8}
################### 获取字符串长度 ###################
text="12345"
echo "${text} length is: ${#text}"
# Output:
# 12345 length is: 5
text1="qwert"
echo "${text1} length is: ${#text1}"
# 获取子字符串
text="12345"
echo ${text:2:2}
# Output:
# 34
text="asdfghjkl"
echo ${text:3:4}
#fghj
################### 查找子字符串对应的索引 ###################
text="hello"
echo `expr index "${text}" ll`
# Output:
# 3
# 索引从 1 开始记录
string_test="linux world"
echo `expr index "${string_test}" w`
# 7

################### 判断字符串中是否包含子字符串 ###################
str="new_feature/"
result=$(echo "${str}" | grep "feature/")
if [[ "$result" != "" ]]; then
	echo "feature/ 是 ${str} 的子字符串"
else
	echo "feature/ 不是 ${str} 的子字符串"
fi

################### 截取关键字右边内容 ###################
full_branch="feature/1.0.0"
branch=`echo ${full_branch#feature/}`
echo "branch is ${branch}"
full_name="aaa_bbb"
right_half=`echo ${full_name#aaa_}`
echo "right half of ${full_name} is ${right_half}"
################### 截取关键字左边内容 ###################
full_version="0.0.1-SNAPSHOT"
version=`echo ${full_version%-SNAPSHOT}`
echo "version is ${version}"
full_address="california-kk"
left_address=`echo ${full_address%-kk}`
echo "left_address is ${left_address}"


################### 字符串分割成数组 ###################
str="0.0.0.1"
OLD_IFS="$IFS"
IFS="."
array=( ${str} )
IFS="$OLD_IFS"
size=${#array[*]}
lastIndex=`expr ${size} - 1`
echo "数组长度：${size}"
echo "最后一个数组元素：${array[${lastIndex}]}"
for item in ${array[@]}
do
	echo "$item"
done
ip_address="192.168.1.1"
OLD_IFS="$IFS"
IFS="."
array=( ${ip_address} )
IFS="$OLD_IFS"
ip_size=${#array[*]}
lastIndex=`expr ${ip_size} - 1`
firstIndex=`expr ${ip_size} - 4`
echo "IP地址对应的数组长度：${ip_size}"
echo "IP地址的第一段对应是：${array[${firstIndex}]}"
for element in ${array[@]}
do
	echo ${element}
done
################### 判断字符串是否为空 ###################
#-n 判断长度是否非零
#-z 判断长度是否为零

str=testing
str2=''
if [[ -n "$str" ]]
then
	echo "The string $str is not empty"
else
	echo "The string $str is empty"
fi

if [[ -n "$str2" ]]
then
	echo "The string $str2 is not empty"
else
	echo "The string $str2 is empty"
fi

if [[ -z $str2 ]]
then
	echo "==The string $str2 is empty=="
else
	echo "The string $str2 is not empty"
fi
#	Output:
#	The string testing is not empty
#	The string  is empty

################### 字符串比较 ###################
str=hello
str2=world
if [[ $str = "hello" ]]; then
	echo "str equals hello"
else
	echo "str not equals hello"
fi

if [[ $str2 = "hello" ]]; then
	echo "str2 equals hello"
else
	echo "str2 not equals hello"
fi

str3=linux
if [[ $str3 = "linux" ]];then
	echo "str3 equals linux"
else
	echo "str3 not equal linux"
fi
