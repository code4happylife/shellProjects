#!/usr/bin/expect
set user "root"
set password "qwer1234"
set host    "127.0.0.1"

#spawn will start a new process,such as ssh

set timeout 5
spawn ssh -o "StrictHostKeyChecking no" ${user}@${host}
expect {
"yes/no)?" { send "yes\r"; exp_continue }
"password:" { send "${password}\r" }
}


expect "root*"
send "df -h\r"
expect "root*"
send "cat /proc/cpuinfo\r"
expect "root*"
send "exit\r"


