# Install signal via apt
# Doc: https://signal.org/en/download/linux/


# 1. Install our official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg;
cat signal-desktop-keyring.gpg | tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories:
wget -O signal-desktop.sources https://updates.signal.org/static/desktop/apt/signal-desktop.sources;
cat signal-desktop.sources | tee /etc/apt/sources.list.d/signal-desktop.sources > /dev/null

# 3. Convert sources.list https:// entries to http:// for apt-cacher-ng
sed -i 's@ https://@ http://@g' /etc/apt/sources.list
sed -i 's@ https://@ http://@g' /etc/apt/sources.list.d/*list
sed -i 's@ https://@ http://@g' /etc/apt/sources.list.d/*sources

# 4. Update your package database and install Signal:
apt-get update
apt-get -y install signal-desktop

