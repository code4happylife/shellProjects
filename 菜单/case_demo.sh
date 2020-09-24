#! /usr/bin/env bash
function hello(){
	clear
	echo -e "\t Hello, my friend, have a nice day today. Please be happy ! ^_^ :)"
}

function goodbye(){
	clear
	echo -e "\t Hello, my friend, see you next time, bye ! ^_^ :)"
}

function have_lunch(){
	clear
        echo -e "\t Hello, my friend, it's time for you to have lunch ! ^_^ :)"
}

function menu(){
	clear
	echo
	echo -e "\t###This is a menu information###\n"
	echo -e "\t1.You get hello from linux server.\n"	
	echo -e "\t2.You get goodbye from linux server.\n"
	echo -e "\t3.You get lunch notification from linux server.\n"
	echo -e "\t0.You exit the menu.\n"
	echo -e "\tEnter your option:\n"
	read -n 1 option
}


while [ 1 ]
do
	menu
	case $option in
		1)
			hello ;;
		2)
			goodbye ;;
		3)	
			have_lunch ;;
		0)
			exit ;;
		*)
			echo -e "Your input is illegal...\n"
	esac

echo  -e "\n\n\n"
echo  -e "Please type any character to continue...\n"
read -n 1 line

done
