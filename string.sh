#!/bin/bash

#echo 和 printf 区别 1.printf 格式化输出 2.echo自带换行


#变量赋值
foo="123"
echo "foo:"${foo}

#变量长度
echo "len foo:"${#foo}

#字符串截取
echo "substr:"${foo:0:2}

#格式化输出
printf "%-10s %-10s\n" 字符串 长度
printf "%-4s, %-10s\n" ${foo} ${#foo}
