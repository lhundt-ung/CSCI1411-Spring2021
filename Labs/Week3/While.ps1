#While Loops

# What does Start-Sleep CMDLET do?
$x = $null

while ($x -ne "4")
{
 $x = Read-Host -Prompt '2 + 2 =?'
 #Start-Sleep 5
}


# What does $x++ do? 
# Describe what will happen when the loop is ran below
$x = 0
do { 
    Write-Host "X equals $x";$x++ } 
while ( $x -le 100 )