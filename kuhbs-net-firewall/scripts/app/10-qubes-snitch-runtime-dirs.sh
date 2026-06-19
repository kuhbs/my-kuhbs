# systemd checks ReadWritePaths before ExecStart, so the AppVM persistent path must exist before service start
install -d -m 0755 /rw/usrlocal/qubes-snitch /rw/usrlocal/qubes-snitch/rules
