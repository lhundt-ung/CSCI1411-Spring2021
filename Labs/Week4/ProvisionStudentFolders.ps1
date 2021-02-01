#Data in
$csv = Import-Csv C:\Users\Administrator\CSCI1411-Spring2021\Labs\Week4\students.csv
#$csv = Import-Csv .\students.csv

#View our properties of each Object
$csv.GetType()
$csv[0].GetType()

$csv
$csv | format-list
$csv | Get-Member
$csv | Get-Member -MemberType NoteProperty

$csv.email
$csv[0].email




# Data Out
foreach($student in $csv)
{
  $id = $student.id
  New-Item "C:\Class\$id" -ItemType Directory
  Write-Host "Creating folder C:\Class\$id"
}