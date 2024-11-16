cls
$ans = Read-Host "
Select options from the following:
    1. open outlook
    2. open chrome
    3. notepad
    4. exit
"
Switch($ans){
    1{ Start-Process outlook}
    2{ Start-Process chrome }
    3{ notepad.exe }
    4{ break }
    default { Write-Warning "Invalid Input"}
}