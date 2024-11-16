cls
$p = Read-Host "enter a website to check its pinging or not"
 
if ( Test-Connection $p -Count 1 -ErrorAction SilentlyContinue ){
    Write-Host "It's pinging" -ForegroundColor Green
}
else {
Write-Host "It's not pinging" -ForegroundColor Red
}