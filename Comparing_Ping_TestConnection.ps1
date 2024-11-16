cls
function Use-PingValid{
Write-Host "Using Ping command(Valid): " -NoNewline -ForegroundColor Yellow
if (ping 192.168.10.11 -n 1 | Select-String "ttl"){Write-Host "Pinging with Ping" -ForegroundColor Green}
else {Write-Host "Ping unsuccessful" -ForegroundColor Red}
}

function Use-PingInValid{
Write-Host "Using Ping command(InValid): " -NoNewline -ForegroundColor Yellow

if (ping 192.168.10.12 -n 1 | Select-String "ttl"){Write-Host "Pinging with Ping" -ForegroundColor Green}
else {Write-Host "Ping unsuccessful" -ForegroundColor Red}
}

function Use-TestValid{
Write-Host "Using Test command(Valid): " -NoNewline 
if ( Test-Connection -ComputerName 192.168.10.11 -Count 1 -ErrorAction SilentlyContinue ){ Write-Host "It's pinging" -ForegroundColor Green}
else { Write-Host "It's not pinging" -ForegroundColor Red}
}

function Use-TestInValid{
Write-Host "Using Test command(InValid): " -NoNewline
if ( Test-Connection -ComputerName 192.168.10.12 -Count 1 -ErrorAction SilentlyContinue ){ Write-Host "It's pinging" -ForegroundColor Green}
else { Write-Host "It's not pinging" -ForegroundColor Red}
}


(Measure-Command {Use-PingValid}).TotalMilliseconds
(Measure-Command {Use-TestValid}).TotalMilliseconds
(Measure-Command {Use-PingInValid}).TotalMilliseconds
(Measure-Command {Use-TestInValid}).TotalMilliseconds