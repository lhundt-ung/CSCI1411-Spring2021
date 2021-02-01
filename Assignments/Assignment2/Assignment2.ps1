<#
.SYNOPSIS
    Assignment #2 - Writing functions, passing arguments and returning values
.DESCRIPTION
    Luke is a rising leader of a group of rebels that must be stopped. All you know is his username: “Luke”
    A vulnerable JEDI login system is available for you to guess Luke’s password. Your job is to use
    a list of most commonly used passwords and attempt to sign in until a match is found.
    The fate of the universe depends on you elite hacking skills!
.INPUTS
    Victim's Username and Password dictionary file
.OUTPUTS
    Function bruteforce returns matched password
.NOTES
    Version:        1.0
    Author:         <Your Name>
    Creation Date:  9/5/2019
.EXAMPLE
    Assignment2.ps1
#>

#----------------------------------------------------------[Declarations]----------------------------------------------------------
$AssignmentNumber = "2"
#-----------------------------------------------------------[Assignment Code]------------------------------------------------------------

##### IMPORTANT ############################################################################################
# Make sure your shell window is currently in the Assignment2 folder.                                      #
# For example, you should see PS C:\Users\Administrator\CSCI1411-Spring2021\Assignments\Assignment2>                           #
# One way is to run "cd C:\Users\Administrator\CSCI1411-Spring2021\Assignments\Assignment2" before starting the assignment     #
# Run ls to verify you see all 3 files. Assignment2.ps1, Login.ps1, and 10k-most-common-passwords.txt      #
############################################################################################################


# First, you will need a variable with a list of most commonly used passwords to iterate through when trying to hack the users password.
# Create a variable that stores the content from the most commonly used password file. 
# *Important* Use the file path .\10k-most-common-passwords.txt
# YOUR CODE BELOW HERE 
$commonPasswordList = 

# Second,a variable is needed that stores the victim's username. HINT: 'Luke'
# YOUR CODE BELOW HERE
$victim = 

# Now you are ready to design your function. 
# Your function name will need 2 parameters.
# One for the username and one for the password list
# YOUR CODE BELOW HERE

{

    # Now you are ready to begin testing each password for your brute force attack! 
    # Write a foreach loop method to itereate through each common password in the password file. 
    # (Hint: You should be calling the variable that contains all passwords)
    # YOUR CODE BELOW HERE 

    {
        # You will need to build an array of user credentials to attack with.
        # 1. Create an empty array. 
        # 2. Add your victim's username variable to the array. HINT: To add items to an array you must use += operator
        # 3. Add a potential password to the array.
        # YOUR CODE BELOW HERE



        ## DO NOT MODIFY ##
        Write-Host "--------------"

        # The Invoke-Expression cmdlet is used to call other powershell scripts. 
        # Below will invoke Login.ps1 and pass a username and password.
        # Your job is to pass the user credential array created above.
        # Remember <user credential array variable> will need to be replaced with a variable name. Example: $arr
        # YOU MUST MODIFY LINE BELOW
        Invoke-Expression  "& `".\Login.ps1`" <user credential array variable>" -OutVariable out

    
        # Now, you have submitted a username and password to the login screen, next is to find out if we had a match.
        # Write an if-statement that will let you know a match has been found. 
        # (HINT: The $out varialbe will equal either "Access Denied" or "Access Granted"
        # YOUR CODE BELOW HERE

        {


            # Add a statement that will return password once a match is found
            # YOUR CODE BELOW HERE

        }
    } 
}


#-----------------------------------------------------------[Execution]------------------------------------------------------------
# Finally, you are ready to execute your function! Good Luck
# Example, [function name] $victim $commonPasswordsList
# One final hint, a password match should happen around 15 seconds :)
# YOUR CODE BELOW HERE 
