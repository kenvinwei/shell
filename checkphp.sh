#!/bin/bash

#git提交前检测php语法，避免不小心引起线上问题

git status|grep -E ".php$" | awk -F ":" '{cmd="php -l "$NF};system(cmd)'