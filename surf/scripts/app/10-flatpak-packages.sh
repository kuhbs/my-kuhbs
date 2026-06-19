# install browsers via flatpak



# Add flathub remote
su -l user -c "flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"


# Install libre-wolf firefox browser
su -l user -c "flatpak --user install --verbose --assumeyes --noninteractive flathub io.gitlab.librewolf-community"

# Install regular firefox
su -l user -c "flatpak --user install --verbose --assumeyes --noninteractive flathub org.mozilla.firefox"

# Install chromium
su -l user -c "flatpak --user install --verbose --assumeyes --noninteractive flathub io.github.ungoogled_software.ungoogled_chromium"

# Install mullvad browser
su -l user -c "flatpak --user install --verbose --assumeyes --noninteractive flathub net.mullvad.MullvadBrowser"
