#!/bin/bash

# Write a script that satisfies the following
# 1. Output todays date
# 2. Variable to store Target IP address passed as argument
# 3. Function that runs nmap against target IP address and returns Open Ports (include column headers)
# 4. Function that runs nmap against target IP address and responds back if system is running "VNC (protocol 3.3)"
# 5. Run functions and output to text file

date

var=$1
echo $var

function openports {
   nmap $var | grep -B 1 'open'  
}
openports > log.txt

function vnc {
    var2=$(nmap -sV $var | grep 'vnc')
    if [[ $var2 = *"vnc"* ]]; then
        echo $var2
    fi 
}
vnc >> log.txt

