#!/usr/bin/env bash

################### while 循环输出 0 ~ 9 的平方数 ###################
x=0
while [[ ${x} -lt 10 ]]; do
	echo $((x * x))
	x=$((x + 1))
done

# also mutiply three times
y=0
while [[ ${y} -lt 10 ]];do
	echo $((y * y * y ))
        y=$((y + 1))
done
#  Output:
#  0
#  1
#  4
#  9
#  16
#  25
#  36
#  49
#  64
#  81

################### while 循环输出 0 ~ 9 ###################
x=0
while echo ${x}
[[ ${x} -lt 9 ]]
do
	x=$((x + 1))
done

#can also like this
y=0
while [[ ${y} -lt 10 ]];do
	echo "===###==="
	echo ${y}
	y=$(( y + 1 ))
done
#	Output:
#	0
#	1
#	2
#	3
#	4
#	5
#	6
#	7
#	8
#	9

################### while 循环嵌套 for 循环 ###################
x=5
while [[ $x -ge 0 ]]
do
	echo "Outer loop: $x"
	for (( y = 1; $y < 3; y ++ ))
	do
		z=$[ $x * $y ]
		echo "Inner loop: $x * $y = $z"
	done
	x=$[ $x - 1 ]
done

#print out some stars
row=10
while [[ $row -gt 0 ]]
do
	for(( cols=1; $cols < 11; cols ++ ))
	do
		num=$[ $row * $cols   ]
		echo -n "*"
	done
	echo $num
	echo
	row=$[ $row - 1 ] 
done
