#1. Write a function to get two numbers from user and add them together


function add-Numbers(){
    $x = Read-Host -Prompt "Enter first number"
    $y = Read-Host -Prompt "Enter second number"

    [int]$x + [int]$y
}

#add-Numbers



#2. Write a function to get two numbers from user and add them together using argument
$a = Read-Host -Prompt "Enter first number"
$b = Read-Host -Prompt "Enter second number"


function add-Numbers2($x,$y){
    [int]$x + [int]$y
}

add-Numbers2 $a $b




#3. Write a function to get two numbers from user and add them together using argument
#This time enforce numbers only
