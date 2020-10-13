#!/usr/bin/env bash

FILE=log.txt

count=1
cat ${FILE} | while read line
do
	echo "$count: $line"
	count=$[ $count + 1 ]
done
echo "Finished reading."

POET=poet.txt
line_num=1
cat ${POET} | while read line
do
	echo "$line_num#$line"
	line_num=$[ $line_num + 1 ]
done
echo "Finished reading poet.txt"
