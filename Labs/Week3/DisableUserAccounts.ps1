#Disable User accounts User1-9
#Find two CMDLETS 
$users = get-localUser -Name User*

$Users

#foreach($user in $users){
#    Disable-LocalUser $user
#}


