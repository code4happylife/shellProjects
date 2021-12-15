#! /bin/bash
# Use read to get a variable test_str
echo "Give me a input"
read test_str
# Use case statement to do some simple logic
case $test_str in
        aa)
                echo "aa"
                ;;
        bb)
                echo "bb"
                ;;
        *)
                echo "error input"
esac
