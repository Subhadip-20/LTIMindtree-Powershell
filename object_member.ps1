#list all cmdlets with object keyword
Get-Command *-object
Get-Command -Noun object

cls

$obj = New-Object psobject
$obj.GetType()
$obj | Get-Member

#list all cmdlets with member keyword
Get-Command -Noun Member

Add-Member -InputObject $obj -MemberType NoteProperty -Name "Name" -Value "Subhadip"

Add-Member -InputObject $obj -MemberType NoteProperty -Name "Status" -Value "Sleeping"