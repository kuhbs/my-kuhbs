# Setup wireguard



# Install wireguard
DEBIAN_FRONTEND=noninteractive apt-get -y install wireguard resolvconf
chmod -v 700 /etc/wireguard
mv -v /home/user/QubesIncoming/dom0/templates/wireguard/configs/*.conf /etc/wireguard/
chmod -v 600 /etc/wireguard/*.conf
chown -vR root:root /etc/wireguard

# Setup random config selection script
mv -v /home/user/QubesIncoming/dom0/templates/wireguard/wireguard-config-select.sh /usr/sbin/
chmod -v 700 /usr/sbin/wireguard-config-select.sh
chown -v root:root /usr/sbin/wireguard-config-select.sh

# Setup systemd service
mv -v /home/user/QubesIncoming/dom0/templates/wireguard/wireguard.service /etc/systemd/system/
chmod -v 644 /etc/systemd/system/wireguard.service
systemctl daemon-reload
systemctl enable wireguard.service
