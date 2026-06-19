set -e -x


# Set kuhbs-net-gateway as default update VM for TemplateVMs
sed -i 's/target=sys-net/target=ndp-kuhbs-net-gateway/g' /etc/qubes/policy.d/90-default.policy

# Let StandaloneVMs use the same update proxy path as TemplateVMs
sed -i '\|^qubes\.UpdatesProxy[[:space:]]\+\*[[:space:]]\+@type:TemplateVM[[:space:]]\+@default[[:space:]]\+allow[[:space:]]\+target=ndp-kuhbs-net-gateway$|a qubes.UpdatesProxy      *   @type:StandaloneVM    @default    allow target=ndp-kuhbs-net-gateway' /etc/qubes/policy.d/90-default.policy

# Set default updatevm
qubes-prefs updatevm ndp-kuhbs-net-gateway

# Start the update VM
qvm-start ndp-kuhbs-net-gateway


# Change qubes-prefs defaults
qubes-prefs default-template     debian-13-minimal
qubes-prefs clockvm              ndp-kuhbs-net-gateway
qubes-prefs default-netvm        ndp-kuhbs-net-gateway
for i in sys-firewall sys-usb sys-net sys-whonix; do qvm-prefs $i autostart False; done

# NetVM for tpl-kuhbs-net-gateway was sys-net till now, change it to ndp-kuhbs-net-gateway
qvm-prefs tpl-kuhbs-net-gateway netvm ndp-kuhbs-net-gateway