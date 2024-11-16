<#
    if
    if-else
    nested if-else
    switch

#>

cls
$a=100
if($a -eq 10){
    Write-Host "Equal to 10" -ForegroundColor Yellow
}
else{
    Write-Host "Not equal to 10 but $a" -ForegroundColor Red
}