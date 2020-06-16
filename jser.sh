#!/usr/bin/expect -f
set timeout 30
set host "host.jumpserver.com"

set username "your username"

set password "your password"

spawn ssh -p2222 $username@$host
expect {
    "assword" {
        send "$password\r"
    }
}
interact
