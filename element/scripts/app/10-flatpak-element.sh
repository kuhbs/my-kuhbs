# Install Element Flatpak as user in the AppVM.

su -l user -c "flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"
su -l user -c "flatpak --user install --verbose --assumeyes --noninteractive flathub im.riot.Riot"
