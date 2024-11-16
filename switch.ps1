cls
$ans = Read-Host "
Select options from the following:
    1. check IP address
    2. ping
    3. List hostname
    4. Display today's date and time
    5. exit
"

Switch($ans){
    1{ (Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "Manual"}).IPAddress }
    2{ Test-Connection }
    3{ HOSTNAME.EXE}
    4{ Get-Date}
    5{ break}
    default { Write-Warning "invalid selection" }
}