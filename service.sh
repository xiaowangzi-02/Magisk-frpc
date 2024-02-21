MODDIR=${0%/*}

# # 检查网络连接的函数
# check_network() {
#     ping -c 1 dns.alidns.com > $MODDIR/log_network.txt 2>&1
#     return $?
# }

# # 等待网络连接
# while check_network
# do
#     echo "Waiting for network..."
#     sleep 5
# done

$MODDIR/bin/nginx -p $MODDIR -c $MODDIR/etc/nginx/nginx.conf