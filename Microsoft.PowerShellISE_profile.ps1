cls
Write-Host "Username : $env:USERNAME"
Write-Host "Internet : " -NoNewline
if ( Test-Connection microsoft.com -Count 1 -ErrorAction SilentlyContinue ){
    Write-Host "Connected" -ForegroundColor Green
}
else {
Write-Host "No Internet" -ForegroundColor Red
}