#!/bin/bash

set -e -x

# Install the i3 workspace assignment for this kuhb.
mkdir -p ~/.config/i3/config.d
tee ~/.config/i3/config.d/kuhbs-surf.conf <<'EOF'
assign [class="surf"] 2
for_window[title="LibreWolf"] move_to_workspace "2|SURF"
for_window[title="Chromium"] move_to_workspace "2|SURF"
for_window[title="Firefox"] move_to_workspace "2|SURF"
EOF
i3-msg reload

