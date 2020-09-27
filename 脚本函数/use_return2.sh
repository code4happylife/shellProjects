#! /usr/bin/env bash
function triple_value(){
	read -p "please input a number:" value
	echo  "The triple value of it will be:"
	return $[ $value * 3 ]
}

triple_value
echo "The result is $?"
