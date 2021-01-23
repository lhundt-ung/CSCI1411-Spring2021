<#
.SYNOPSIS
  Assignment #1 - PowerShell Basics
.DESCRIPTION
  The goal of this assignment is to get you familiar with PowerShell basic concepts. 
  You will demonstrate your knowledge in Variables, Arrays, and CMDLETs.
  There are a total of 12 problems in this assignment.
.NOTES
  Version:        1.0
  Author:         <Your Name>

#>

#----------------------------------------------------------[Variables]-------------------------------------------------------
### You can store all types of values in PowerShell variables. A variable is a unit of memory in which values are stored. 
### 1. Create a two int variables $i and $x and assign the value to 200 and 305 respectively.
## YOUR CODE HERE



### 2. Now, add $i and $x together and store the value in another variable $y. Then output $z to the console.
## YOUR CODE HERE



### 3. Divide $y by $i and round the answer to the two closest decimal places and store the value in variable $z. Then output $z to the console.
## YOUR CODE HERE



### 4. In PowerShell strings and number variables can added together. Create a variable $str and set it 
### to "The value of z is: " add $str and $z together. Then output $str to the console.
## YOUR CODE HERE



#----------------------------------------------------------[Arrays]-------------------------------------------------------
### Arrays are powerfull datatype that can store a collection of items.
### 1. Create an array ($arr) and set it to a collection of integers (10,20,30,40,50,60,70,80,90,100)
## YOUR CODE HERE



### 2. Write out the sum value of the 2nd and last item in the array. (10,->20<-,30,40,50,60,70,80,90,->100<-)
## YOUR CODE HERE



#----------------------------------------------------------[CMDLET]-------------------------------------------------------
### This section examines the use of CMDLETs to find information. It begins with a large set of data returned. Next it will continue to 
### continue to filter out unneccessary data until the desired set of data is returned.
### 1. Output all files including inside of subfolders in C:\Windows\System32\driverStore using the cmdlet Get-ChildItem
## HINT: You will need to use two additional parameters to recusively retrieve files in sub-directories
## HINT: 1829 items returned
## YOUR CODE HERE



### 2. Output all ".sys" files in C:\Windows\System32\driverStore using the cmdlet: Get-ChildItem
## HINT: 362 files returned
## YOUR CODE HERE



### 3. Output all ".sys" files larger than 500 KB (Length > 500KB) in C:\Windows\System32\driverStore using the cmdlet: Get-ChildItem
## HINT: 72 files returned
## YOUR CODE HERE



### 4. Output all ".sys" files that start with the letter s and 
### larger than 500 KB (Length > 500KB) in C:\Windows\System32\driverStore using the cmdlet: Get-ChildItem
## HINT: 2 files returned
## YOUR CODE HERE



### 5. Now that the two files we were looking for are found, let's export them out to CSV file named findings.csv
## HINT: 1 CSV file should output to the current directory
## YOUR CODE HERE



### 6. Over 1000 CMDLETS are available, research and find the cmdlet to get content from a web page. For this exercise, pull
### the content of https://ung.edu
## YOUR CODE HERE



#----------------------------------------------------------[Complete]-------------------------------------------------------------

