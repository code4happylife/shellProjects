#!/usr/bin/env bash

# using pattern matching

if [[ $USER == r* ]]
then
	echo "Hello $USER"
else
	echo "Sorry, I do not know you"
fi

if [[ $PWD == /root* ]]
then
	echo "Current directory is $PWD"
else
	echo "Sorry, can not locate current dir."
fi

a=1
b=2
c=$[ $a + $b ]
if [[ $c == 3 ]]
then
	echo "$a + $b is $c"
else
	echo "Wrong answer."
fi
