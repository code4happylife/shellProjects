#!/usr/bin/env bash

# testing signal trapping

trap "echo 'Sorry! I have trapped Ctrl-C' " SIGINT SIGTERM

echo this is a test program

count=1

while [ $count -le 10 ]
do
	echo "Loop #$count"
	sleep 5
	count=$[ $count + 1 ]
done

<<COMMENT
this is a test program
Loop #1
^CSorry! I have trapped Ctrl-C
Loop #2
^CSorry! I have trapped Ctrl-C
Loop #3
^CSorry! I have trapped Ctrl-C
Loop #4
^CSorry! I have trapped Ctrl-C
Loop #5
^CSorry! I have trapped Ctrl-C
Loop #6
^CSorry! I have trapped Ctrl-C
Loop #7
^CSorry! I have trapped Ctrl-C
Loop #8
^CSorry! I have trapped Ctrl-C
Loop #9
^CSorry! I have trapped Ctrl-C
Loop #10
^CSorry! I have trapped Ctrl-C

COMMENT
