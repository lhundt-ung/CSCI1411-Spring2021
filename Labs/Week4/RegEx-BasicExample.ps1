
'This is my SSN: 123-45-6789' -match '\d\d\d-\d\d-\d\d\d\d'
'This is my SSN: 123-45-6789' -match '\d{3}-\d{2}-\d{4}'


#Array of string sentences
$data = @(
           "General text without meaning"
           "my ssn is 123-45-6789"
           "some other string"
           "another SSN 123-12-1234"
       )

$data
$data.GetType()
$data.count

$data[0]
$data -match '\d\d\d-\d\d-\d\d\d\d'
