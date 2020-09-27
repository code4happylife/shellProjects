function test1(){
	echo -e "This is the first parameter: $1"
	echo -e "This is the second parameter: $2"
	echo -e "This is the third parameter: $3"
	echo -e "All the parameter is "
	printf "%s\n" "$@"
	while [ 1 ]
	do
		echo "the process id: $$"
		sleep 3
	done

}

test1 1 2 3

