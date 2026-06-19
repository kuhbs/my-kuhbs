#!/bin/bash

set -e -x

# Snitch needs downstream VM names, IPs, labels, class, and template because DispVM policy is keyed by base
hook_dir=$(dirname "$0")
sudo install -d -m 0755 /usr/local/lib/qubes-snitch
sudo install -m 0644 "$hook_dir/qubes-snitch-sources.py" /usr/local/lib/qubes-snitch/sources.py
sudo tee /etc/qubes-rpc/qubes.SnitchSources >/dev/null <<'EOF'
#!/bin/sh
SNITCH_VM=app-kuhbs-net-firewall exec python3 /usr/local/lib/qubes-snitch/sources.py
EOF
sudo chmod 755 /etc/qubes-rpc/qubes.SnitchSources

# Only the snitch firewall VM may query the dom0 source identity service
sudo tee /etc/qubes/policy.d/30-qubes-snitch.policy <<'EOF'
qubes.SnitchSources * app-kuhbs-net-firewall @adminvm allow
qubes.SnitchSources * @anyvm @adminvm deny
EOF

# Install the i3 workspace assignment for this kuhb
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-net-firewall.conf <<'EOF'
assign [class="app-kuhbs-net-firewall"] "12|SNITCH"
EOF
i3-msg reload
