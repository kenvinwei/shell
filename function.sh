#!/bin/bash

:<<EOF
    1.函数使用
    2.函数怎么获取参数
    3.获取返回值
EOF

function Hello() {
    echo "hello world"
    echo "函数参数个数"${#}
    echo "参数得第一个参数"${1}
    local number=1

    for (( VAR = 0; VAR < ${#}; ++VAR )); do
        echo ${VAR}
    done

    for VAR in ${*}; do
        echo ${VAR}
    done
}


Hello 1 2 3 4


#返回值获取用 ${?}

function add() {
    SUM=0
    LOOP_LIMIT=10

    for (( VAR = 0; VAR < ${LOOP_LIMIT}; ++VAR )); do
        SUM=`expr ${SUM} + ${VAR}`
    done

    return ${SUM}
}

add

echo ${?}