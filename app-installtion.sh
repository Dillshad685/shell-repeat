#!/bin/bash

if [ $(id -u) -eq 0 ]; then
    dnf install mysql-server -y;&
else
    echo "sudo user not exist"
fi
