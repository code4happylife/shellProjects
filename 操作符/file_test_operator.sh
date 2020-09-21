#!/usr/bin/env bash

file="/etc/hosts"
file2="/usr"
if [[ -r ${file} ]]; then
	echo "${file} 文件可读"
else
	echo "${file} 文件不可读"
fi

if [[ -r ${file2}  ]]; then
	echo "${file2} is readable"
else
	echo "${file2} is not readable"
fi

if [[ -w ${file} ]]; then
	echo "${file} 文件可写"
else
	echo "${file} 文件不可写"
fi

if [[ -w ${file2} ]]; then
	echo "${file2} is writeable"
else
	echo "${file2} is not writeable"
fi

if [[ -x ${file} ]]; then
	echo "${file} 文件可执行"
else
	echo "${file} 文件不可执行"
fi

if [[ -x ${file2} ]]; then
	echo "${file2} is executeable"
else
	echo "${file2} is not executeable"
fi

if [[ -f ${file} ]]; then
	echo "${file} 文件为普通文件"
else
	echo "${file} 文件为特殊文件"
fi

if [[ -f ${file2} ]]; then
	echo "${file2} is normal file"
else
	echo "${file2} is special file"
fi


if [[ -d ${file} ]]; then
	echo "${file} 文件是个目录"
else
	echo "${file} 文件不是个目录"
fi

if [[ -d ${file2} ]]; then
	echo "${file2} is a directory"
else
	echo "${file2} is not a directory"
fi

if [[ -s ${file} ]]; then
	echo "${file} 文件不为空"
else
	echo "${file} 文件为空"
fi
if [[ -e ${file} ]]; then
	echo "${file} 文件存在"
else
	echo "${file} 文件不存在"
fi

if [[ -e ${file2} ]]; then
	echo "${file2} is  existed"
else
	echo "${file2} is not exist"
fi
#  Output:(根据文件的实际情况，输出结果可能不同)
#  /etc/hosts 文件可读
#  /etc/hosts 文件可写
#  /etc/hosts 文件不可执行
#  /etc/hosts 文件为普通文件
#  /etc/hosts 文件不是个目录
#  /etc/hosts 文件不为空
#  /etc/hosts 文件存在
