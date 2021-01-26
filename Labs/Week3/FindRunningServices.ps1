#Find all all services running and write out the total number
Get-Service | Where-Object{$_.Status -eq "Running"} | measure


