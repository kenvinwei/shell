#!/bin/bash

# :<< 注视代码段

:<<EOF
    1.遍历for
    2.流程控制if else
    3.流程控制case esac
    4.流程控制while
EOF

SUM=0
LOOP_LIMIT=10

for (( VAR = 0; VAR < ${LOOP_LIMIT}; ++VAR )); do
    SUM=`expr ${SUM} + ${VAR}`
done

echo "SUM:"${SUM}

if [[ SUM -eq 45 ]]; then
    flag=0
elif [[ SUM -gt 45 ]]; then
    flag=1
elif [[ SUM -lt 45 ]]; then
    flag=-1
fi

case ${flag} in
    0)
        echo "SUM eq 45 flag:"${flag}
    ;;
    1)
        echo "SUM gt 45 flag:"${flag}
    ;;

    -1)
        echo "SUM lt 45 flag:"${flag}
    ;;
esac