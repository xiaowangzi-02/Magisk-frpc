MODDIR=${0%/*}

# 检查网络连接的函数
check_network() {
    ping -c 1 dns.alidns.com > /dev/null 2>&1
    return $?
}

# 等待网络连接
while check_network
do
    echo "Waiting for network..."
    sleep 5
done

nohup $MODDIR/bin/frpc -c $MODDIR/etc/frpc.toml > $MODDIR/log.txt 2>&1 &