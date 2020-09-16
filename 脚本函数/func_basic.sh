#!/usr/bin/env bash

# using a function in script

function func1 {
	echo "This is an example of a function"
}

count=1
while [ $count -le 5 ]
do
	func1
	count=$[ $count + 1 ]
done
echo "This is the end of the loop"
func1

function test_func()
{
	date_time=$(date +%Y-%m-%d-%H:%M:%S)
	echo "This is a funciton demo in bash, executed at $date_time"
}
iter=1
while [ $iter -le 6 ]
do
	test_func
	iter=$[ $iter + 1 ]
done

echo "This is the end of the loop"
test_func
echo "Finish !"

echo "Now this is the end of the script"
