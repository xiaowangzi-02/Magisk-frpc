MODDIR=${0%/*}

until [ "$(getprop sys.boot_completed)" -eq 1 ]; do
  sleep 1
done

nohup $MODDIR/bin/frpc -c $MODDIR/etc/frpc.toml > $MODDIR/log.txt 2>&1 &