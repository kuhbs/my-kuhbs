set -e -x


# Remove standalone update proxy rule installed by KUHBS
if grep -q '^qubes\.UpdatesProxy[[:space:]]\+\*[[:space:]]\+@type:StandaloneVM[[:space:]]\+@default[[:space:]]\+allow[[:space:]]\+target=ndp-kuhbs-net-gateway$' /etc/qubes/policy.d/90-default.policy; then
  sed -i '/^qubes\.UpdatesProxy[[:space:]]\+\*[[:space:]]\+@type:StandaloneVM[[:space:]]\+@default[[:space:]]\+allow[[:space:]]\+target=ndp-kuhbs-net-gateway$/d' /etc/qubes/policy.d/90-default.policy
fi

# Restore default update VM for TemplateVMs
sed -i 's/target=ndp-kuhbs-net-gateway/target=sys-net/g' /etc/qubes/policy.d/90-default.policy

# Set default updatevm
qubes-prefs updatevm sys-net

# Start the update VM
qvm-start --skip-if-running sys-net

# Change back qubes-prefs defaults
qubes-prefs default-template     fedora-43-xfce
qubes-prefs clockvm              sys-net
qubes-prefs default-netvm        sys-firewall
qvm-prefs   default-dvm template fedora-43-xfce
for i in sys-firewall sys-usb sys-net sys-whonix; do qvm-prefs $i autostart True; done