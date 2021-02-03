#Select-String
Get-Content .\access.log | Select-String -SimpleMatch "honeypot"

$hits = Get-Content .\access.log | Select-String -SimpleMatch "honeypot"
$hits[0]

#Simple Match
Select-String -Path .\access.log -SimpleMatch "honeypot"

#Simple Match note the -Pattern Argument
Select-String -Path .\*.* -Pattern "function" -CaseSensitive 


#Simple Equity and Advanced Match operations
(5+5) -eq (7+4)


'123-45-6789' -match '\d\d\d-\d\d-\d\d\d\d'
'123-45-6789' -match '\d{3}-\d{2}-\d{4}'