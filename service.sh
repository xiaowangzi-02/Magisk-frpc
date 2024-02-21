MODDIR=${0%/*}

# Check network connection function
check_network() {
    ping -c 1 dns.alidns.com > $MODDIR/log_network.txt 2>&1
    return $?
}

# Wait for network connection
while ! check_network
do
    echo "Waiting for network..."
    sleep 1
done

nohup $MODDIR/bin/frpc -c $MODDIR/etc/frpc.toml > $MODDIR/log_frpc.txt 2>&1 &