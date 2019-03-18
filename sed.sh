#!/bin/bash

:<<EOF
    1.全称: stream editor
    2.文本替换
    - s/pattern/replace/g 全局替换并打印
    -i 替换原内容
    -i.bak 替换原内容并备份
    - /^$/d 删除空行
    - & 匹配到原内容
EOF