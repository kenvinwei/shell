#!/usr/bin/expect -f
set timeout 30
#without prefix http://
set host "your host"
set username "your username"
set password "your password"

spawn git push
expect {
    "Username for 'http://$host':" {
        send "$username\r"
        exp_continue;
    }
    "Password for 'http://$username@$host':" {
        send "$password\r"
    }
}
interact
