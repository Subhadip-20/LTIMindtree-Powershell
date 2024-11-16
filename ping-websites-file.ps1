cls
$web = Get-Content .\website.txt

foreach($w in $web){
   if( Test-Connection $w -Count 1 -ErrorAction SilentlyContinue )
        { Write-Host "$w"  -ForegroundColor Green}
   else
        { Write-Host "$w"  -ForegroundColor Red }
}