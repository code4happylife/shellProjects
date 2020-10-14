#!/usr/bin/env bash

path=/dir1/dir2/dir3/test.txt
path_new=/path1/path2/path3/python.py
echo ${path##*/}  
echo ${path_new##*/}
#${name##word} 从name的头部开始删除与word匹配的最长部分，然后返回剩余部分
#获取文件名  test.txt
#            test.py
echo ${path##*.} 
echo ${path_new##*.}
#获取后缀  txt
#          py

#不带后缀的文件名
temp=${path##*/}
echo ${temp%.*}
temp1=${path_new##*/}
echo ${temp1%.*}
#${name%word} 从name的尾部开始删除与word匹配的最小部分，然后返回剩余部分
#test

#获取目录
echo ${path%/*} 
echo ${path_new%/*}
#/dir1/dir2/dir3
#/path1/path2/path3
