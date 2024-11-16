cls
Write-Host "Username : $env:USERNAME"
Write-Host "Internet : " -NoNewline
if ( Test-Connection microsoft.com -Count 1 -ErrorAction SilentlyContinue ){
    Write-Host " Connected" -ForegroundColor Green
}
else {
Write-Host "No Internet" -ForegroundColor Red
}

foreach ($i in 1..50)
{
    Write-Host "#" -NoNewline -ForegroundColor Yellow
    sleep -Milliseconds 50
}


cd C:\Powershell
cls