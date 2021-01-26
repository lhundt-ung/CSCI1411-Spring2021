#Script that generates Local User Accounts

foreach ($num in 1..9){
    New-LocalUser -Name "User$num" -Description "Non-admin user account" -NoPassword
    #Remove-LocalUser "User$num"
}

foreach($num in 1..3){
    New-LocalUser -Name "Admin$num" -Description "Admin User account" -NoPassword
    Add-LocalGroupMember -Group "Administrators" -Member "Admin$num"

    #Remove User Account
    #Remove-LocalUser "Admin$num"
}