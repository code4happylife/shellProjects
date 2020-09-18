#! /usr/bin/env bash
ctrlc_count=0
function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [[ $ctrlc_count == 1 ]];then
		echo "Stop that."
	elif [[ $ctrlc_count == 2 ]]; then
		echo "Once more Ctrl+C and I will quit. "
	else
		echo "That's it, I quit"
		exit
	fi
}

trap no_ctrlc SIGINT

while true
do
	echo "SLEEP 10 seconds"
	sleep 10
done

 << COMMENT
SLEEP 10 seconds
SLEEP 10 seconds
^C
Stop that.
SLEEP 10 seconds
^C
Once more Ctrl+C and I will quit. 
SLEEP 10 seconds
^C
That's it, I quit

COMMENT
