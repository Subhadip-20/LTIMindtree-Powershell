#Arrays 
cls
#method 1

$arr1 = 10,20,30,40
$arr1.GetType()

#method 2
$arr2 = @()
$arr2.GetType()

#method 3
$arr3 = @("10","abc","Hello")
$arr3.GetType()
$arr3

#method 4
$arr4 = @(1..10)
$arr4
$arr4.Length

#method 5
$arr5 = @(
    @(10,"abc",'a'),
    @(100,"abb",3),
    @(Get-Process)
    )
$arr5.GetType()
$arr5[0][1]
$arr5[-1][0]