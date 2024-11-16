Get-Date | Get-Member | Format-Table -AutoSize -Wrap

cls
$nam = Read-Host "enter a service "
$svr = Get-Service -Name $nam

Write-Host "$($svr.Name) is $($svr.Status)"