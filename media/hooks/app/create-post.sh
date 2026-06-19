#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-media.conf <<'EOF'
assign [class="media"] "13|MEDIA"
EOF
i3-msg reload

