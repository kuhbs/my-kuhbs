# install browsers via flatpak



# Add flathub remote
su -l user -c "flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"


# Install libre-wolf firefox browser
su -l user -c "flatpak --user install --verbose --assumeyes --noninteractive flathub io.gitlab.librewolf-community"