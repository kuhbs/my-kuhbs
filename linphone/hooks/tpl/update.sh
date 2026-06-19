# Download the current stable Linphone AppImage to a temporary file.
/usr/bin/curl \
  --fail \
  --location \
  --show-error \
  --output /opt/linphone/Linphone.AppImage.tmp \
  https://download.linphone.org/releases/linux/latest_app

# Refuse empty downloads before replacing the installed AppImage.
/usr/bin/test -s /opt/linphone/Linphone.AppImage.tmp

# Make the downloaded AppImage executable.
/usr/bin/chmod 0755 /opt/linphone/Linphone.AppImage.tmp

# Replace the installed AppImage only after all checks passed.
/usr/bin/mv /opt/linphone/Linphone.AppImage.tmp /opt/linphone/Linphone.AppImage
