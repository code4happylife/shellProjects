#! /bin/bash
:<<EOF
打印金字塔
EOF
# 判断命令行参数是否为空
if [[ $1 == '' ]];then
        level=3
else
        level=$1
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
