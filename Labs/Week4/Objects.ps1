#CMDLETs and objects
Get-Process

$processes = Get-Process

$processes.GetType()

$processes | measure
$processes | Get-Member

Write-Host $processes.StartTime $processes.Name

$processes[0] | fl *

$processes | Where-Object {$_.PriorityClass -eq "Normal"}
