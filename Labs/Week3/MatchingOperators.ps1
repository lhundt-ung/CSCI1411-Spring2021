#Matching Operators

$matchingStr = "85.115.32.185 - - [01/Jan/2017:04:05:15 -0800] GET / HTTP/1.1 200 10211"
if($matchingStr -like "85.115.32.*"){
Write-Host "IP Address Found" 
}

if($matchingStr -like "*HTTP*"){
Write-Host "Found HTTP"}


if($matchingStr -notlike "*85.115.32.181*"){
Write-Host "IP Address Not Found" 
}