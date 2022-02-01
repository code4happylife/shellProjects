#! /bin/bash
# description: define while loop
# date: Tue Feb  1 15:57:49 CST 2022
i=1
while [[ $i -le 100 ]]
do
        if [[ $((i%2)) -eq 0  ]];then
                echo "$i is even"
        fi
i=$((i+1))
done
