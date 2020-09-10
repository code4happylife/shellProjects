#!/usr/bin/env bash

# 输出普通字符串
echo "hello, world"
#  Output: hello, world
echo "hello, shell and linux"
# 输出含变量的字符串
echo "hello, \"zp\""
#  Output: hello, "zp"
# output string
echo "hello,\"shell\""

# 输出含变量的字符串
name=zp
echo "hello, \"${name}\""
#  Output: hello, "zp"
age=18
echo "I tell you my age is:\"${age}\""
# 输出含换行符的字符串
echo "YES\nNO"
#  Output: YES\nNO
echo -e "YES\nNO" # -e 开启转义
#  Output:
#  YES
#  NO

echo -e "Telephone\tMobilePhone"

# 默认会换行
echo "YES"
echo "NO"
#  Output:
#  YES
#  NO
echo "True"

echo -e "YES\c" # -e 开启转义 \c 不换行
echo -e "NO\c"
#  Output:
#  YESNO
date_time=`date +%Y%m%d-%H:%M:%S`
echo "YES ${date_time}"

# 输出内容定向至文件
echo "test" > test.txt
echo "got it" >> test.txt
# 输出执行结果
echo `pwd`
#  Output:(当前目录路径)
echo `free -m`
