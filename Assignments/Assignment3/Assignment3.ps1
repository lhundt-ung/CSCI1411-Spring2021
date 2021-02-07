<#
.SYNOPSIS
    Assignment 3 - Parsing text files
.DESCRIPTION
    Our Security monitoring systems have alerted us of a suspicious IP address that is 
    attempting to access multiple systems on the network. This assignment we will be examing 
    two log files with over 300K lines of data. We will use our techniques learned in class to 
    find critical information for our investigation. And hopefully no sensitive data was stolen.
.INPUTS
    Access.log, Auth.log
.OUTPUTS
    Data Found
.NOTES
    Version:        1.0
    Author:         <Your Name>
    Creation Date:  
    References: Select-String: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-6
         Write-Host: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-6
.EXAMPLE
    Assignment3.ps1
#>

#----------------------------------------------------------[Declarations]----------------------------------------------------------
$AssignmentNumber = "3"
#--------------------------------------[Helping Functions]--------------------------------------
# DO NOT MODIFY
# EXAMPLE USECASE: howMany($results)
function howMany($obj)
{
    Write-Host "Number of hits: " $obj.count
}

# DO NOT MODIFY
# EXAMPLE USECASE: howMany -cc 5 -ssn 15
# cc is the number of Credit Cards Stolen
# ssn is the number of Social secuirty numbers stolen
function incidentCost($cc,$ssn)
{
    $totalUsers = $cc + $ssn
    
    ## Credit Card's lost
    Write-Host "Estimated hacker's stolen credit card data sale: " ($cc*5) " USD"

    ## SSN's lost
    Write-Host "Estimated hacker's stolen Social Security Number data worth: " ($ssn*1) " USD"

    ## Business cost to response of a breach
    ## https://www.pandasecurity.com/mediacenter/security/cost-of-a-data-breach/
    Write-Host "Estimated loss and impact of the breach: " ($totalUsers*150) " USD"
}

#--------------------------------------[Assignment Code]--------------------------------------
##### IMPORTANT ############################################################################################
# Make sure your shell window is currently in the Assignment3 folder.                                      #
# For example, you should see PS C:\Users\administrator\CSCI1411-Spring2021\Assignments\Assignment3>                           #
# One way is to run "cd C:\Users\administrator\CSCI1411-Spring2021\Assignments\Assignment3" before starting the assignment     #
# Run ls to verify you see all 1 file and two directories                                                  #
#. Assignment3.ps1, Logs, and Data                                                                         #
############################################################################################################



## 1. Search all files located in your .\Logs folder.  
## You will need to find all entries with "187.76.80.202". Follow the instructions below...
## - Create a variable called $findings
## - Assign the output of Select-String CMDLET to $findings
## - Select-String should find all of the matches for 187.76.80.202
## - You will use -Path and -Pattern Parameters
## - Next, output your findings by simply writing your variable $findings out on the next line
## HINT: Class slides and lab examples from class may help.
## YOUR CODE BELOW HERE




# 2. Once complete, lets confirm the number of matches
## A helper function called howMany has been provided to you
## howMany takes one argument. See above section called Helper functions for reference
## HINT: Your returned count should be: 475
## YOUR CODE BELOW HERE




## 3. To make it easier for searching in the future, lets build a function!
## The structure of the function has been provided below.
## Your job is to complete the function in areas that say "YOUR CODE BELOW HERE"
## Example of Function: logSearcher -dir "C:\Users\Student\Documents\*" -text "SAMPLE" -showLogs $True
function logSearcher($dir,$text,$showLogs)
{
    ## Create a variable called $results to store your results
    ## Set $results equal to your Select-String code from Number 1.
    ## For your -Path paramter use $dir, and -Pattern $text
    ## YOUR CODE BELOW HERE



    ## A ShowLogs parameter is used in this function. 
    ## Using the argument $True the matching logs will be outputed to the screen, $False will not
    ## Write a simple if statement to check if $showLogs is equal to $True
    ## Inside of your statement, just the variable $results is needed
    ## YOUR CODE BELOW HERE



    ## Use The helper function howMany to output the count of results.
    ## YOUR CODE BELOW HERE

}

## 4. Since we know the attacker's IP has hit some of our servers, let's test our new function out.
## A suspicious login from the attacker's IP is showing attempts from "tonystark"
## - Execute logSearcher on all files in the .\Logs folder 
## - text argument as "tonystark"
## - showLogs as $True
## HINT: Number of findings should show 254
## YOUR CODE BELOW HERE




## 5. Notice any suspicious activity from the logs? Any files opened by the hacker?
## Run LogSearcher one more time to see how many csv files were opened.
## Number of findings should show 5
## YOUR CODE BELOW HERE



## 6. Yikes, let's find out if those files have any sensitive data. Instead of scanning the Logs folder, lets switch to the Data folder
## Use Select-String to search all files in the directory .\Data for Social Security Numbers.
## - SSN in 1234-12-1234 format
## - HINT: Slide 6 from class may help.
## YOUR CODE BELOW HERE





## 7. Oh no, any Credit Card Numbers stolen? Credit Cards will be in 16 digit format with no dashes(-). Example 1234123412341234
## Use Select-String to search all files in the directory .\Data for Credit Card Numbers.
## HINT: Select-String –Path ".\Data\*" -Pattern ?
## YOUR CODE BELOW HERE





## 8. With a major data breach on our hands, we must inform the CEO the expected financial loss to the business.
## A helper function has been provided called incidentCost
## Each type of sensitive data above can be used arguments for this function
## HINT: Estimated loss to the business is greater than $200K
## YOUR CODE BELOW HERE