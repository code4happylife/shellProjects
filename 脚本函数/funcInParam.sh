#!/usr/bin/env bash

x=0
if [[ -n $1 ]]; then
	echo "第一个参数为：$1"
	x=$1
else
	echo "第一个参数为空"
fi

y=0
if [[ -n $2 ]]; then
	echo "第二个参数为：$2"
	y=$2
else
	echo "第二个参数为空"
fi

z=0
if [[ -n $3 ]]; then
        echo "第三个参数为: $3"
        z=$3
else
        echo "第三个参数为空"
fi


paramsFunction() {
	echo "函数第一个入参：$1"
	echo "函数第二个入参：$2"
        echo "函数第三个入参：$3"
}

paramsFunction $x $y $z
