#!/bin/bash

git status|grep "modified" | awk '{cmd="php -l "$2};system(cmd)'