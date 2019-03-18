#!/bin/bash

read var
echo "read:"${var}

echo "请输入参数:"

while :
    do
        read foo
        if test ${foo} == "q" -o ${foo} == "quit" -o ${foo} == "exit"; then
            break
        else
            echo "请输入参数:"
        fi
    done