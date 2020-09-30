#!/usr/bin/env bash

x=10
if [[ -n $1 ]]; then
	x=$1
fi

y=20
if [[ -n $2 ]]; then
	y=$2
fi

z=100
if [[ -n $3 ]]; then
	z=$3
fi

echo "x=${x}, y=${y}, z=${z}"

if [[ ${x} -eq ${y} ]]; then
	echo "${x} -eq ${y} : x 等于 y"
else
	echo "${x} -eq ${y}: x 不等于 y"
fi

if [[ ${x} -eq ${z} ]]; then
	echo "${x} -eq ${z}: x 等于 z"
else
	echo "${x} -eq ${z}: x 不等于z"
fi

if [[ ${x} -ne ${y} ]]; then
	echo "${x} -ne ${y}: x 不等于 y"
else
	echo "${x} -ne ${y}: x 等于 y"
fi

if [[ ${x} -gt ${y} ]]; then
	echo "${x} -gt ${y}: x 大于 y"
else
	echo "${x} -gt ${y}: x 不大于 y"
fi

if [[ ${x} -lt ${y} ]]; then
	echo "${x} -lt ${y}: x 小于 y"
else
	echo "${x} -lt ${y}: x 不小于 y"
fi

if [[ ${x} -lt ${z} ]]; then
	echo "${x} -lt ${z}: x 小于z"
else
	echo "${x} -lt ${z}: x 不小于z"
fi


if [[ ${x} -ge ${y} ]]; then
	echo "${x} -ge ${y}: x 大于或等于 y"
else
	echo "${x} -ge ${y}: x 小于 y"
fi

if [[ ${x} -ge ${z} ]]; then
	echo "${x} -ge ${z}: x 大于或等于 z"
else
	echo "${x} -ge ${z}: x 小于 z"
fi


if [[ ${x} -le ${y} ]]; then
	echo "${x} -le ${y}: x 小于或等于 y"
else
	echo "${x} -le ${y}: x 大于 y"
fi
if [[ ${x} -le ${z} ]]; then
	echo "${x} -le ${z}: x 小于或等于 z"
else
	echo "${x} -le ${z}: x 大于 z"
fi
#  Output:
#  x=10, y=20
#  10 -eq 20: x 不等于 y
#  10 -ne 20: x 不等于 y
#  10 -gt 20: x 不大于 y
#  10 -lt 20: x 小于 y
#  10 -ge 20: x 小于 y
#  10 -le 20: x 小于或等于 y
