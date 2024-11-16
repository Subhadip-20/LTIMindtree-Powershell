$newObj = @{
    key1 = "abc"
    key2 = "def"
    key3 = "ghi"
    key4 = "jkl"
}

#create a new Object

$obj2 = New-Object psobject -Property $newObj

$obj2 | Get-Member