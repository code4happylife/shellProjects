#! /bin/bash
:<<EOF
打印乘法口诀表
EOF
i=1
j=1
for (( i=1 ; i<=9 ; i++ ))
do
        for (( j=1 ; j<=$i; j++ ))
        do
                k=$(($i*$j))
                printf "%d*%d=%d " $i $j $k
        done
        printf "\n"

done
