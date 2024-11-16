cls
function Get-IP{ (Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "Manual"}).IPAddress }
function Get-Ping{ Test-Connection -ComputerName 192.168.10.11 -Count 1 -ErrorAction SilentlyContinue }
function Get-Hostname{ HOSTNAME.EXE}
function Get-Dat{ Get-Date -Format "dddd dd/MM/yyyy HH:mm"}
$ans = Read-Host "
Select options from the following:
    1. check IP address
    2. ping
    3. List hostname
    4. Display today's date and time
    5. exit
"

Switch($ans){
    1{ Get-IP }
    2{ Get-Ping }
    3{ Get-Hostname }
    4{ Get-Dat }
    5{ break}
    default { Write-Warning "invalid selection" }
}