#!/usr/bin/expect -f
set timeout 30
set host "your host"
set username "your username"
set password "your password"

spawn git push
expect {
    "Username for '$host':" {
        send "$username\r"
        exp_continue;
    }
    "Password for '$host':" {
        send "$password\r"
    }
}
interact
