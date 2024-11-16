if(Test-Path $profile){
Write-Host "File Present" -ForegroundColor Green
}
else {
    Write-Host "File not present" -ForegroundColor Red
    Write-Host "Creating file" -ForegroundColor Green
    sleep 2
    New-Item -ItemType File -Path $profile -Force
    Write-Host "File Created" -ForegroundColor Green
}