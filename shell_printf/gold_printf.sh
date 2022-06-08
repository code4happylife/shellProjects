#! /bin/bash
:<<EOF
打印金字塔
EOF
level=$1
if [[ !'$level' ]];then
        level=3
fi
for (( i=1;i<=$level;i++ ))
do
#循环打印空格
        for (( j=1;j<=$level-$i;j++ ))
        do
                printf " "
        done
#打印*
        if [[ $i == 1 ]];then
                printf "*"
        else
                for (( k=1;k<=$i*2-1;k++ ))
                do
                        printf "*"
                done
        fi
        printf "\n"
done
