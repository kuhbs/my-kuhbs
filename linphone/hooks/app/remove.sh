#!/bin/bash

set -e -x

# Remove the i3 workspace assignment for this kuhb.
/usr/bin/rm --force ~/.config/i3/config.d/kuhbs-linphone.conf
/usr/bin/i3-msg reload
