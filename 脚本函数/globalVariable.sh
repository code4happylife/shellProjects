#!/usr/bin/env bash

# using a global variable to pass a value

function db1 {
	value=$[ $value * 2 ]
}

read -p "Enter a value: " value
db1
echo "The new value is : $value"

read -p "Enter a new value: " value1
function calcSquare() {
        result=$[ $value1 * $value1  ]

}
calcSquare
echo "The square of $value1 is :$result"
