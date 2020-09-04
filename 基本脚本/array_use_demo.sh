#!/usr/bin/env bash

################### 创建数组 ###################
nums=( [ 2 ] = 2 [ 0 ] = 0 [ 1 ] = 1 )
colors=( red yellow "dark blue" )
new_arr=(a b c d)
################### 访问数组的单个元素 ###################
echo ${nums[1]}
# Output: 1
val=${new_arr[1]}
echo "The second element of new_arr is $val"

################### 访问数组的所有元素 ###################
echo ${colors[*]}
# Output: red yellow dark blue
echo ${new_arr[*]}

echo ${colors[@]}
# Output: red yellow dark blue
echo ${new_arr[@]}

printf "+ %s\n" ${colors[*]}
# Output:
# + red
# + yellow
# + dark
# + blue

printf "+ %s\n" "${colors[*]}"
# Output:
# + red yellow dark blue

printf "+ %s\n" "${colors[@]}"
# Output:
# + red
# + yellow
# + dark blue

################### 访问数组的部分元素 ###################
echo ${nums[@]:0:2}
# Output:
# 0 1

################### 获取数组长度 ###################
echo ${#nums[*]}
# Output:
# 3
echo ${#new_arr[*]}
echo "The length of new_arr is:${#new_arr[*]}"
################### 向数组中添加元素 ###################
colors=( white "${colors[@]}" green black )
echo ${colors[@]}
# Output:
# white red yellow dark blue green black
another_arr=( "math" "${new_arr[@]}" "alphabet" )
echo ${another_arr[@]}
################### 从数组中删除元素 ###################
unset nums[0]
echo ${nums[@]}
# Output:
# 1 2
unset another_arr[0]
echo ${another_arr[@]}
