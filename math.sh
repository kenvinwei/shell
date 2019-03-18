#!/bin/bash

a=1
b=2
# "+" 两边必须要有空格
echo "result:" `expr ${a} + ${b}`

if [[ ${n} -eq 0 ]];then
    echo "n not null"
else
    echo "n not exit"
fi