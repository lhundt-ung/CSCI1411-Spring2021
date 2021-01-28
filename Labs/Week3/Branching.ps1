#How many branches
$equityStr = Read-Host -Prompt 'Enter a number'

# Greater than 50
if($equityStr -gt 50)
{ Write-Host "Greater than 50? - True" }
elseif($equityStr -eq 20)
{ Write-Host "Must be 20 - True" }
elseif($equityStr -lt 50)
{ Write-Host "Less than 50? - True" }
else
{ Write-Host "Number must equal 50!" }

