#Select-String
Get-Content .\access.log | Select-String -SimpleMatch "honeypot"

$hits = Get-Content .\access.log | Select-String -SimpleMatch "honeypot"
$hits[0]

#Simple Match
Select-String -Path .\access.log -SimpleMatch "honeypot"

#Simple Match note the -Pattern Argument
Select-String -Path .\*.* -Pattern "function" -CaseSensitive 


#Simple Equity and Advanced Match operations
(5+5) -eq (7+3)

