#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-thunderbird.conf <<'EOF'
assign [class="app-thunderbird"] "9|MAIL"
EOF
i3-msg reload

