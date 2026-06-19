#!/bin/bash

set -e -x

# Remove the qrexec entry installed by the create hook so removed KUHBS state does not leave dom0 policy behind
sudo rm -f /etc/qubes-rpc/qubes.SnitchSources
sudo rm -f /etc/qubes/policy.d/30-qubes-snitch.policy

# Remove the i3 workspace assignment for this kuhb.
rm -f ~/.config/i3/config.d/kuhbs-net-firewall.conf
i3-msg reload
