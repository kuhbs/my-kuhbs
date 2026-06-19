# Setup apt-cacher-ng



DEBIAN_FRONTEND=noninteractive apt-get --yes install apt-cacher-ng

cp -v /home/user/QubesIncoming/dom0/templates/apt-cacher-ng/acng.conf /etc/apt-cacher-ng/acng.conf
chown -v root:root /etc/apt-cacher-ng/acng.conf
chmod -v 644 /etc/apt-cacher-ng/acng.conf

systemctl enable apt-cacher-ng.service

install -d -m 0755 /etc/systemd/system/apt-cacher-ng.service.d
tee /etc/systemd/system/apt-cacher-ng.service.d/kuhbs-ndp-only.conf <<'EOF'
[Unit]
ConditionHost=ndp-kuhbs-net-gateway
EOF
systemctl daemon-reload
