#!/bin/bash 
checkCommand() {
    type $1 > /dev/null  2>&1
    if [ $? -ne 0 ]; then
        echo "error : $1 must be installed!"
        echo "install exit"
        exit 1
    fi
}

checkCommand "go"
checkCommand "php"
checkCommand "abc"
