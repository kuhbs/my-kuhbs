#!/bin/bash

set -e -x

# Remove the i3 workspace assignment for this kuhb.
rm -f ~/.config/i3/config.d/kuhbs-airgap.conf
i3-msg reload
