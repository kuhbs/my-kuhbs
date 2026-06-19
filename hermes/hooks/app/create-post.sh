#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-hermes.conf <<'EOF'
assign [class="hermes"] "2|SURF"
EOF
i3-msg reload

