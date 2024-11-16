$ht1 = [ordered]@{"Name"="Sub" ; "Class"="37.1" ; "Comp"="Ltimindtree"}
$ht1

#adding a new key-value pair
$ht1.Add("Roll","30")
$ht1

#Modifying a value 
$ht1["Name"] = "Subhadip Das"
$ht1

#removing a value
$ht1.Remove("Roll")
$ht1

#other operatons
$ht1.Keys
$ht1.Values