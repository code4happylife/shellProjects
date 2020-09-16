#!/usr/bin/env bash

var1=10.45
var2=43.67
var3=33.2
var4=71

var5=`bc << EOF
scale=4
a1 = $var1 * $var2
b1 = $var3 * $var4
a1 + b1
EOF
`

#variable=$(bc << EOF
#Options
#Statements
#Expressions
#EOF)
#
echo The final answer for this mess is $var5

j=100
k=3
l=$(bc << EOF
scale=5
temp = $j * $j
result = $k * $k
(temp + result) / 3
EOF
)
echo "The final answer for this is $l"

echo "you can use bash calculator like this:"
a=14

c=$(bc << EOF
scale=3
d = $a * $a * 3.14
d
EOF
)
echo "The area of a circle with radius $a is : $c"

echo "you can figure out the time now divided by 1600 is:"
time_now=`date +%s`
result=$(bc <<EOF
scale=4
temp = $time_now / 1600
temp
EOF
)
echo "The time in seconds is:$time_now, and its value divided by 1600 is:$result"
