#!/usr/bin/env bash

################### if 语句 ###################
# 写成一行
if [[ 1 -eq 1 ]]; then
	echo "1 -eq 1 result is: true";
fi
# Output: 1 -eq 1 result is: true
################## if statement ##############
if [[ "linux" -eq "linux" ]];then
	echo "linux -eq linux result is :true"
fi
# 写成多行
if [[ "abc" -eq "abc" ]]
then
	echo ""abc" -eq "abc" result is: true"
fi
# Output: abc -eq abc result is: true

###################if then fi syntax###########
if [[ "great" -eq "great" ]]
then
	echo " 'great' -eq 'great' result is: true"
fi
################### if else 语句 ###################
if [[ 2 -ne 1 ]]; then
	echo "true"
else
	echo "false"
fi
# Output: true
###################if else demo######################
weather="sunny"
if [[ $weather -eq "sunny" ]];then
	echo "Let's go out play..."
else
	echo "Just stay at home..."
fi
################### if elif else 语句 ###################
x=10
y=20
if [[ ${x} > ${y} ]]; then
	echo "${x} > ${y}"
elif [[ ${x} < ${y} ]]; then
	echo "${x} < ${y}"
else
	echo "${x} = ${y}"
fi
# Output: 10 < 20
####################if elif else statement###############
i=33
j=44
if [[ $i > $j ]];then
	echo "$i > $j"
elif [[ $i < $j ]];then
	echo "$i < $j"
else
	echo "$i = $j"
fi
