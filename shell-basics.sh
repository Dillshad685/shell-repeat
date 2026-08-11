#!/bin/bash

START_TIME=$(date +%s)
#name1=Ram
#name2=Soma

echo "Hi $1 I am fine what about you  $2"
echo "Please enter mobile number"
read -s MOBILE_NUMBER
echo "Mobile number is $MOBILE_NUMBER"
echo "please enter pincode:$3"
echo "enter pin code:$3"
Leaders=("Dilma" "Haneef")
echo "Leaders:${Leaders[@]}"
echo "Leaders:${Leaders[0]}"
echo "all variables:$@"
echo "who is running:$USER"
echo "present working directory:$PWD"
echo "home directory:$HOME"
echo "PID of this script:$$"
echo "previous script output:$?"
echo "current running script:$0"
END_TIME=$(date +%s)

echo "Script execution time: $((END_TIME - START_TIME))seconds"

