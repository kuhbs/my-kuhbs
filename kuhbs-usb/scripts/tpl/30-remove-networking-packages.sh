# This script is copied from kuhbs-for-qubes/install/templates/usr/share/kuhbs/setup-scripts/kuhbs/setup/remove-networking-packages.sh
# because it needs networking packages to download multiboot-usb, but it needs to remove networking packages after
# and the custom scripts run AFTER the default setup-scripts

# Uninstall everything required for VMs that have anything to do with networking, like having a netvm or providing network to other VMs
DEBIAN_FRONTEND=noninteractive apt-get --yes remove --purge qubes-core-agent-networking lsof tcpdump wireshark bind9-host iftop apt-transport-https net-tools
