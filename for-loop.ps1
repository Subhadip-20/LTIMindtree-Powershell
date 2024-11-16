cls
$arr1 = @(1..100)
for($i=0; $i -lt $arr1.Length; $i++){
    Write-Output "$i"
    sleep -Milliseconds 50
}