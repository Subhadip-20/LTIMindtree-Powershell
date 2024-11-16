cls 
foreach ($i in Get-Service){
    if ( $i | Where-Object {$_.Status -eq "Running"}){
        Write-Host $i -ForegroundColor Green
    }else{
        Write-Host $i -ForegroundColor Red 
    }
}
