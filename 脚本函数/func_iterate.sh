#!/usr/bin/env bash
#actorial calculates the factorial of a number.
function factorial {
	if [ $1 -eq 1 ]
	then
		echo 1  # the echo is likely to be return
	else
		local temp=$[ $1 - 1 ]
		local result=`factorial $temp`
		echo $[ $result * $1 ]
	fi
}

read -p "Please input a value: " value
result=`factorial $value`
echo "The factorial of $value is: $result"
