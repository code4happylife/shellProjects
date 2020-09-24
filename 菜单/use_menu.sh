#!/usr/bin/env bash

function menu {
	clear
	echo
	echo -e "\t\t****************\n"
	echo -e "\t\tSys Admin Menu\n"
	echo -e "\t1. Display disk space"
	echo -e "\t2. Display logged on users"
	echo -e "\t3. Display memory usage"
	echo -e "\t4. Display kernal message"
	echo -e "\t0. Exit program\n\n"
	echo -en "\t\tEnter option:"
	read -n 1 option
}

function diskspace {
	clear
	df -k
}

function whoseon {
	clear
	who
}

function menusage {
	clear
	cat /proc/meminfo
}

function kernalmessage(){
	clear
	uname -r
}

while [ 1 ]
do
	menu
	case $option in
		0)
			break ;;
		1)
			diskspace ;;
		2)
			whoseon ;;
		3)
			menusage ;;
		4)
			kernalmessage ;;
		*)
			clear
			echo "Sorry, you input the wrong selection" ;;
	esac
	echo -en "\n\n\t\tHit any key to continue"
	read -n 1 line # read -n number, 定义输入文本的长度
done
clear
