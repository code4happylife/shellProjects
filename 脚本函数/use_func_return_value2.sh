#!/usr/bin/env bash

function test(){
	a=$1
	b=$[ $a * 3 ]
	echo $b

}

temp=`test 3`
echo -e "The result is value $temp"




