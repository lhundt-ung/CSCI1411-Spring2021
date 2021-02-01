#CMDLETs and objects
Get-Process

$processes = Get-Process



$processes | measure
$processes | Get-Member

$processes[0] | fl *

Get-Process | Where-Object {$_.PriorityClass -eq "Normal"}
