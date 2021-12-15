#! /bin/bash
# Get a input number and Generate a Random number
echo Please input a number:
read test_var
random_num=$RANDOM
echo $test_var
echo $random_num

#Compare
if [[ $test_var > $random_num ]]; then
        echo The random number is not that big  !
else
        echo The random number is bigger than what you guess !
fi
