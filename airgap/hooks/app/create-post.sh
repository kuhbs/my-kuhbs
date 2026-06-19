#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-airgap.conf <<'EOF'
assign [class="app-airgap"] "1|AIR"
EOF
i3-msg reload

