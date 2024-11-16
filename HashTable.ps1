Out-File .\newOutput.txt -Append
$dat = Get-Date
Write-output "-----------------------------------------------------------------------" | Out-File .\newOutput.txt -Append
$dat | Out-File .\newOutput.txt -Append
Write-output "-----------------------------------------------------------------------" | Out-File .\newOutput.txt -Append
$ht1 = @{}
$ht1.GetType() | Out-File .\newOutput.txt -Append

$ht2 = @{"Name"="Sub" ; "Class"="37.1" ; "Comp"="Ltimindtree"}
$ht2 | Out-File .\newOutput.txt -Append

$ht3 = [ordered]@{"Name"="Sub" ; "Class"="37.1" ; "Comp"="Ltimindtree"}
$ht3 | Out-File .\newOutput.txt -Append