cls
function Use-PingValid{
if (ping 192.168.10.11 -n 1 | Select-String "ttl"){}
#else {}
}

function Use-PingInValid{
if (ping 192.168.10.12 -n 1 | Select-String "ttl"){}
#else {}
}

function Use-TestValid{
if ( Test-Connection -ComputerName 192.168.10.11 -Count 1 -ErrorAction SilentlyContinue ){}
#else {}
}

function Use-TestInValid{
if ( Test-Connection -ComputerName 192.168.10.12 -Count 1 -ErrorAction SilentlyContinue ){}
#else {}
}


function cmd-efnc{
    $p1=$p2=$t1=$t2=0
    foreach ($i in 1..5){

        $p1 += (Measure-Command {Use-PingValid}).TotalMilliseconds
        $t1 += (Measure-Command {Use-TestValid}).TotalMilliseconds
        $p2 += (Measure-Command {Use-PingInValid}).TotalMilliseconds
        $t2 += (Measure-Command {Use-TestInValid}).TotalMilliseconds
    }

    Write-Host "average time taken by successful ping command is $($p1/5) ms" -ForegroundColor Green
    Write-Host "average time taken by unsuccessful ping command is $($p2/5) ms" -ForegroundColor Red
    Write-Host "average time taken by successful Test-Connection command is $($t1/5) ms" -ForegroundColor Green
    Write-Host "average time taken by unsuccessful Test-Connection command is $($t2/5) ms" -ForegroundColor Red

}

cmd-efnc
