#!/usr/bin/env bash

# 单引号
printf '%d %s\n' 1 "abc"
#  Output:1 abc
printf '%d\t%s\n' 100 "linux"
# 双引号
printf "%d %s\n" 1 "abc"
#  Output:1 abc
printf "%s %d\n" "Shell" 99

# 无引号
printf %s abcdef
#  Output: abcdef(并不会换行)
printf %d 999
# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出
printf "%s\n" abc def
#  Output:
#  abc
#  def
printf "%d\n" 99 88
printf "%s %s %s\n" a b c d e f g h i j
#  Output:
#  a b c
#  d e f
#  g h i
#  j
printf "%d %d %d\n" 10 20 30 40 50 60 70
# 如果没有参数，那么 %s 用 NULL 代替，%d 用 0 代替
printf "%s and %d \n"
#  Output:
#   and 0

# 格式化输出
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876
#  Output:
#  姓名     性别   体重kg
#  郭靖     男      66.12
#  杨过     男      48.65
#  郭芙     女      47.99
printf "%-10s %-8s %-4.2f\n" mark male 66.6666
