#!/bin/bash

list=(1 "a" 2 "b")

printf "first element:%-5s\n" ${list[0]}
printf "second element:%-5s\n" ${list[1]}

list+=("go")

printf "last element:%-5s\n" ${list[4]}

//打印所有元素
echo ${list[*]}
echo ${list[@]}


//循环读取
for var in ${list[*]}; do
    echo "ele:"${var}
done


for (( i = 0; i < ${#list[*]}; i++ )); do
    echo "get:"${list[i]}
done

# 命令必须用 `cmd`
for file in `ls .`; do
    echo ${file}
done
