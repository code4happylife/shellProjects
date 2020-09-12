#!/usr/bin/env bash

################### 声明变量 ###################
name="world"
echo "hello ${name}"
# Output: hello world
name1="linux"
echo "hello ${linux}"
################### 输出变量 ###################
folder=$(pwd)
echo "current path: ${folder}"
date_time=$(date)
echo "current time: ${date_time}"

################### 只读变量 ###################
rword="hello"
echo ${rword}
# Output: hello
readonly rword
# rword="bye"  # 如果放开注释，执行时会报错
statement_word="great"
echo ${statement_word}
readonly statement_word
statement_word="Meet"
#./variable_demo.sh:行24: statement_word: 只读变量
################### 删除变量 ###################
dword="hello" # 声明变量
echo ${dword} # 输出变量值
# Output: hello

unset dword # 删除变量
echo ${dword}
# Output: （空）
aa="nice"
echo ${aa}
unset aa
echo ${aa}

################### 系统变量 ###################
echo "UID:$UID"
echo LOGNAME:$LOGNAME
echo User:$USER
echo HOME:$HOME
echo PATH:$PATH
echo HOSTNAME:$HOSTNAME
echo SHELL:$SHELL
echo LANG:$LANG

################### 自定义变量 ###################
days=10
user="admin"
echo "$user logged in $days days age"
days=5
user="root"
echo "$user logged in $days days age"
job="engineer"
salary=1000
echo "The $job has a salary of :$ $salary"

# Output:
# admin logged in 10 days age
# root logged in 5 days age

################### 从变量读取列表 ###################
colors="Red Yellow Blue"
colors=$colors" White Black"

for color in $colors
do
	echo " $color"
done

cities="Flaw Highway Nikolo"
for city in $cities
do
	echo " $city"
done
