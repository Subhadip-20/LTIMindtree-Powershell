cls
function Get-Sum{
     param (
    [Parameter(Mandatory=$true, HelpMessage = "Enter 1st number")][int]$num1 ,
    [Parameter(Mandatory=$true, HelpMessage = "Enter 2nd number")][int]$num2
    
    )

    Write-Host "Hey sum of $num1 and $num2 is $($num1+$num2)"
}

#Get-SUm -num1 1 -num2 u