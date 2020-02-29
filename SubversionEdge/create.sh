#!/bin/bash

docker build --no-cache -t laohanw/lens_subversion:v1 .

expect <<EOF
spawn docker login
expect "Username:"
send "laohanw\n"
expect "Password:"
send "pAssW0rd!\n"
EOF
docker push laohanw/lens_subversion:v1
