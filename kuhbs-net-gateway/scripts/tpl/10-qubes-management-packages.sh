# Setup packages required for update, clock VM, ...



DEBIAN_FRONTEND=noninteractive apt-get -y install qubes-core-agent-dom0-updates systemd-timesyncd

tee /etc/systemd/timesyncd.conf <<'EOF'
[Time]
# Use public NTP pool hosts instead of single large providers.
# Pool members rotate, so the gateway does not pin time sync to Cloudflare/Google.
NTP=0.debian.pool.ntp.org 1.debian.pool.ntp.org 2.debian.pool.ntp.org 3.debian.pool.ntp.org
FallbackNTP=0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org
EOF

install -d -m 0755 /etc/systemd/system/systemd-timesyncd.service.d
tee /etc/systemd/system/systemd-timesyncd.service.d/kuhbs-ndp-only.conf <<'EOF'
[Unit]
ConditionHost=ndp-kuhbs-net-gateway
EOF
systemctl daemon-reload
systemctl enable systemd-timesyncd.service
