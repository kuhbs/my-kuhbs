#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-element.conf <<'EOF'
assign [class="app-element"] "10|CHAT"
EOF
i3-msg reload

