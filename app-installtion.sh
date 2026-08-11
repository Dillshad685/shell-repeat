#!/bin/bash

if [ $(id -u) -eq 0 ]; then
    dnf install redis -y &
else
    echo "sudo user not exist"
fi
