cls
function Get-Uname{
     param (
    [Parameter(Mandatory=$true, HelpMessage = "Enter your name")][string]$name ,
    [int]$age
    
    )

    Write-Host "Hey $name and your age is $age"
}

#Get-Uname -name "Subhadip" -age 60