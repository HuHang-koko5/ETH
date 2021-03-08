$protocol = 'stratum'
$eth_addr = '0x84a43440Ad98787F40502613933260610b784f2C'
$worker_name = 'koko5'
$pools = 'asia1.ethermine.org'
$ports = 4444, 14444
$args = '-U', '--exit', '--stdout'
$miner = 'ethminer'

foreach($h in $pools){
    foreach($port in $ports){
        $args += "-P ${protocol}://$eth_addr.$worker_name@${h}:$port"
    }
}

while(1){Invoke-Expression "./$miner $args"}