# Setup dnscrypt proxy



# Install dnscrypt-proxy
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y install dnscrypt-proxy resolvconf

# Setup config file
mv -v /home/user/QubesIncoming/dom0/templates/dnscrypt-proxy/dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml
chown -v -R _dnscrypt-proxy:root /etc/dnscrypt-proxy/
find /etc/dnscrypt-proxy/ -type d -exec chmod -v -R 550 {} \;
find /etc/dnscrypt-proxy/ -type f -exec chmod -v -R 440 {} \;

# Setup systemd service
#mv -v /home/user/QubesIncoming/dom0/templates/dnscrypt-proxy/dnscrypt-proxy.service /usr/lib/systemd/system/dnscrypt-proxy.service
#systemctl daemon-reload

# Enable systemd service
systemctl enable dnscrypt-proxy.service
systemctl enable dnscrypt-proxy.socket

# Configure resolvconf
echo nameserver 127.0.2.1 > /etc/resolvconf/resolv.conf.d/head