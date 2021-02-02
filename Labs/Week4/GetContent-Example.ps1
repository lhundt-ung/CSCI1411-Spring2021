#Create example data file
1..100 | ForEach-Object { Add-Content -Path LineNumbers.txt -Value "This is line $_" }


# Verify file
Get-Content -Path .\LineNumbers.txt


#Get first 5 lines
Get-Content -Path .\LineNumbers.txt -TotalCount 5

#Get first 25 lines
(Get-Content -Path .\LineNumbers.txt -TotalCount 25)[0]

#Get first 25 lines, then what?
(Get-Content -Path .\LineNumbers.txt -TotalCount 25)[-1]

# What does tail retrieve
Get-Content -Path .\LineNumbers.txt -Tail 5


# Set-Content Example
$date = Get-Date
Set-Content .\LineNumbers.txt "$date - Start of My log"
Get-Content .\LineNumbers.txt

#What's the difference between add-content and set-content