cls
$arr1 = @("a","b","c")
$c=0
while ( $c -lt $arr1.Length){
    $arr1[$c]
    $c +=1
    sleep -Milliseconds 500
}