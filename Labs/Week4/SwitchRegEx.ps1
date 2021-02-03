#Switch using Regex and Warnings
switch -regex (Read-Host -Prompt "Enter a number")
{
    '\d\d\d-\d\d-\d\d\d\d' {
        Write-Warning 'message may contain a SSN'
    }
    '\d\d\d\d-\d\d\d\d-\d\d\d\d-\d\d\d\d' {
        Write-Warning 'message may contain a credit card number'
    }
    '\d\d\d-\d\d\d-\d\d\d\d' {
        Write-Warning 'message may contain a phone number'
    }
}