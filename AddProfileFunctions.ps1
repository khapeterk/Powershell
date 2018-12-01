$content = Get-Content $PROFILE
$shouldAdd = ($content -eq $Null) -or ($content -notlike "*. C:\LocalRepo\Powershell\ProfileFunctions.ps1*")
if ($shouldAdd){
    add-content $PROFILE ". C:\LocalRepo\Powershell\ProfileFunctions.ps1"
}
code $PROFILE
