#!/bin/bash

START_TIME=$(date +%s)
name1=Ram
name2=Soma

echo "Hi $name1 I am fine what about you  $name2"
echo "Please enter mobile number"
read -s MOBILE_NUMBER
echo "Mobile number is $MOBILE_NUMBER"

END_TIME=$(date +%s)

echo "Script execution time: $((END_TIME - START_TIME))"

