# Install AppImage download and runtime dependencies.
/usr/bin/apt-get -y install ca-certificates curl fuse libfuse2t64

# Create the Linphone install directory.
/usr/bin/install -d -m 0755 /opt/linphone

# Download the current stable Linphone AppImage to a temporary file.
/usr/bin/curl \
  --fail \
  --location \
  --show-error \
  --output /opt/linphone/Linphone.AppImage.tmp \
  https://download.linphone.org/releases/linux/latest_app

# Refuse empty downloads before installing the AppImage.
/usr/bin/test -s /opt/linphone/Linphone.AppImage.tmp

# Make the AppImage executable.
/usr/bin/chmod 0755 /opt/linphone/Linphone.AppImage.tmp

# Install the checked AppImage.
/usr/bin/mv /opt/linphone/Linphone.AppImage.tmp /opt/linphone/Linphone.AppImage
