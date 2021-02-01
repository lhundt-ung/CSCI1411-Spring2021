# Convert Fahrenheit to Celsius
#Dynamic Type Conversion

function ConvertFahrenheitToCelsius($fahrenheit)
{
    
    Write-Host "Before subtraction: " + $fahrenheit.GetType()

    #String - Int?
    $celsius = ($fahrenheit - 32)

    #Dynamic Type Conversion
    Write-Host "After subtraction: " + $celsius.GetType()

    $celsius = $celsius / 1.8
    Write-Host "After division: " + $celsius.GetType()

    return $celsius
}


$fahrenheit = Read-Host 'Input a temperature in Fahrenheit'


$result =ConvertFahrenheitToCelsius($fahrenheit)
Write-Host "$result Celsius"