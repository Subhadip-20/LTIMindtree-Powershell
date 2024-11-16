cls
Write-Host "Hello World"
$name = Read-Host "Enter your name "
Write-Host "Hello " -NoNewline 
Write-Host "$name" -ForegroundColor DarkMagenta -BackgroundColor Cyan
$v1