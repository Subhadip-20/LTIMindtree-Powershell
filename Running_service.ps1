
#while ($true){
#    if ($($serv.Status) -eq "running"){
#        Write-Host "$($serv.Name)"
#    }
#}

#Get-Service | Select-Object Name, Status



Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name, DisplayName

Get-Service | `
Where-Object {$_.Status -eq "Running"} | `
Select-Object Name, DisplayName