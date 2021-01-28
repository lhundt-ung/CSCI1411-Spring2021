#For/ForEach

#What will happen here?
for($i = 0; $i -le 1; $i=$i+1)
{ Write-Host "i equals: $i" }



$web = Invoke-WebRequest "https://ung.edu" -UseBasicParsing
$webArr = $web.RawContent.Split("`r`n")

foreach($line in $webArr)
{ 
    if($line -like "*.js*")
    {Write-Host "$line"}
}
#How would you only get the .js file names?