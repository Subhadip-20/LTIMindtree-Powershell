cls
while ("true")
{
    cls
    $d=Get-Date
    Write-Host "The current date is $($d.Day)/$($d.Month)/$($d.Year)"
    Write-Host "The current time is $($d.Hour):$($d.Minute):$($d.Second)"
    sleep(1)
}