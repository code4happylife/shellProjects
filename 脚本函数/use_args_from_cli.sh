#!/usr/bin/env bash

# using a global variable to pass a value,the first arg is $1, the
#second arg is $2

function db1 {
	# $1和$2 不能从命令行中传递，只能调用函数时，手动传递
	echo $[ $1 * $2 ]
}

if [ $# -eq 2 ]
then
	value=`db1 $1 $2`
	echo "The result is $value"
else
	echo "Usage error: you should pass 2 args for this script, like db1 100 100"
fi



# Another function use args from command line
func_add_three_num(){
	echo $[ $1 + $2 + $3 ]
}

if [ $# -eq 3 ]
then
	result=$(func_add_three_num $1 $2 $3)
	echo "The three nums add together will be:"$result
else
	echo "Usage Error, to add 3 nums, you at least need to provide 3 nums, like func_add_three_num 100 100 100."
fi
