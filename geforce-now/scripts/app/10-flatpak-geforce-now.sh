# Install Chromium Flatpak as user in the AppVM.
/usr/bin/su -l user -c "/usr/bin/flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"
/usr/bin/su -l user -c "/usr/bin/flatpak --user install --verbose --assumeyes --noninteractive flathub org.chromium.Chromium"
