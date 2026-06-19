#!/bin/bash

set -e -x

# Put the persistent Linphone configuration AppVM on the chat workspace.
/usr/bin/mkdir -p ~/.config/i3/config.d
/usr/bin/tee ~/.config/i3/config.d/kuhbs-linphone.conf <<'EOF'
assign [class="app-linphone"] "10|CHAT"
EOF
/usr/bin/i3-msg reload
