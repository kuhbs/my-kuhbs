#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-browse.conf <<'EOF'
assign [class="browse"] "8|BROWSE"
for_window[title="LibreWolf"] move_to_workspace "8|BROWSE"
for_window[title="Chromium"] move_to_workspace "8|BROWSE"
for_window[title="Firefox"] move_to_workspace "8|BROWSE"
EOF
i3-msg reload

