#Containment Operators

#Will the if statement be True or False? Why?
$containmentStr = "85.115.32.180 - - [01/Jan/2017:04:05:15 -0800] GET / HTTP/1.1 200 10211"
if($containmentStr -contains "85.115.32.180*")
{ Write-Host "IP Address Found"  }


#What text will be returned to the user? Why?
$containmentArr = "apple","pear","peach","banana","grapefruit"

if($containmentArr -contains "bear")
{ Write-Host "Bear found!" }
elseif($containmentArr -contains "apple")
{ Write-Host "Apple found!" }
elseif($containmentArr -contains "peach")
{ Write-Host "Peach found!" }