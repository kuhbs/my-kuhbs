# Control a browser with agent-browser
su -l user -c "npm config set prefix ~/.local"
su -l user -c "npm install -g agent-browser"
su -l user -c "~/.local/bin/agent-browser install"

# Get rid of those stupid default dirs except Downloads
rmdir /home/user/{Desktop,Documents,Music,Pictures,Public,Templates,Videos}

# Download hermes install script and run it (will require user interaction)
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh -o /home/user/install-hermes.sh
chown user:user /home/user/install-hermes.sh
chmod 700 /home/user/install-hermes.sh
su -l user -c /home/user/install-hermes.sh