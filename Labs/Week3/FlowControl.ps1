#slide 7
$equityStr = Read-Host -Prompt 'Enter a number'
if($equityStr -gt 50)
{ Write-Host "Greater than 50? - True" }
elseif($equityStr -lt 50)
{ Write-Host "Less than 50? - True" }
elseif($equityStr -eq 20)
{ Write-Host "Must be 20 - True" }
else
{ Write-Host "Number must equal 50!" }





#slide 8
$matchingStr = "85.115.32.180 - - [01/Jan/2017:04:05:15 -0800] GET / HTTP/1.1 200 10211"
if($matchingStr -like "*85.115.32.180*")
{Write-Host "IP Address Found" }

if($matchingStr -notlike "*85.115.32.181*")
{Write-Host "IP Address Not Found" }





#Slide 9
$containmentStr = "85.115.32.180 - - [01/Jan/2017:04:05:15 -0800] GET / HTTP/1.1 200 10211"
if($containmentStr -contains "85.115.32.180")
{ Write-Host "IP Address Found"  }



$containmentStr = "apple","pear","peach","banana","grapefruit"
if($containmentStr -contains "bear")
{ Write-Host "Bear found!" }
elseif($containmentStr -contains "apple")
{ Write-Host "Apple found!" }
elseif($containmentStr -contains "peach")
{ Write-Host "Peach found!" }



#slide 10
$a = Read-Host -Prompt 'Enter a number'
Switch ($a)
{
    1 { “1 - Match”}
    2 { “2 - Match”}
    3 { “3 - Match”}
    4 { “4 - Match”}
    Default { “No Match Found”}
}

$a = Read-Host -Prompt 'Enter a number'
if($a -eq 1){ “1 - Match”}
if($a -eq 2){ “2 - Match”}
if($a -eq 3){ “3 - Match”}
if($a -eq 4){ “4 - Match”}
if($a -ne 1 -and $a -ne 2 -and $a -ne 3 -and $a -ne 4){ “No Match Found”}


#Slide 12
for($i = 0; $i -le 1; $i)
{ Write-Host "i equals: $i" }

#Slide 13
$web = Invoke-WebRequest "https://ung.edu" -UseBasicParsing
$webArr = $web.RawContent.Split("`r`n")
foreach($line in $webArr)
{ if($line -like "*.js*")
    {Write-Host "$line"}
}
#How would you only get the .js file names?


#Slide 14
$x = "4"
While ($x -eq "4")
{$x = Read-Host -Prompt '2 + 2 =?'
 Start-Sleep 2
}


#Slide 15
$x = 0
do { Write-Host "X equals $x";$x++ } while ( $x -le 100 )