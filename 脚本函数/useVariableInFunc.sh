#!/usr/bin/env bash

# passing parameters to a function

function addem {
	if [ $# -eq 0 ] || [ $# -gt 2 ]
	then
		echo -1
	elif [ $# -eq 1 ]
	then
		echo $[ $1 + $1 ]
	else
		echo $[ $1 + $2 ]
	fi
}

echo -n "Adding 10 and 15:"
value=`addem 10 15`
echo $value

echo -n "Let's try adding just one number: "
value=`addem 10`
echo $value

echo -n "Now trying adding no number: "
value=`addem`
echo $value

echo -n "Finally, try adding three or more numbers: "
value=`addem 10 15 20`
echo "The result of adding 10,15,20 is in this function is $value"

echo -n "Adding 100 and 200:"
value=`addem 100 200`
echo "The result of adding 100 and 200 is: $value"

function multiply {
        if [ $# -eq 0 ] || [ $# -gt 2 ]
        then
                 echo -1
        elif [ $# -eq 1 ]
        then
                 echo $[ $1 * $1 ]
        else
                 echo $[ $1 * $2 ]
        fi

}
echo -n "multiply two numbers 2 and 3:"
value=`multiply 2 3`
echo $value

