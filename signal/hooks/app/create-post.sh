#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-signal.conf <<'EOF'
assign [class="app-signal"] "10|CHAT"
EOF
i3-msg reload

