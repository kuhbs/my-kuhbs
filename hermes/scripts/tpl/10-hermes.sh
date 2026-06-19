# Prepare for the installation of hermes (can't be installed non-interactively)
# https://github.com/NousResearch/hermes-agent


# List of packages for hermes
packages=(

# apt requirements for installing and running hermes
build-essential
espeak-ng
ffmpeg
fontforge
git
imagemagick
libffi-dev
libnotify-bin
potrace
python3-dev
ripgrep
sqlite-utils
sqlite3
webp
wireguard-tools
xz-utils

# fonts
fonts-noto-cjk
fonts-noto-cjk-extra
fonts-wqy-zenhei
fontconfig

# package and download helpers for HTTPS repositories and scripted fetches
apt-transport-https
ca-certificates
curl
gnupg
lsb-release
wget

# source-control and file-sync tools for repos, model files, and remote workspaces
git
git-lfs
openssh-client
rclone
rsync

# data-format, archive, and file-inspection tools for opening unknown inputs
file
jq
less
p7zip-full
sqlite3
tree
unrar-free
unzip
yq
zip

# terminal productivity tools for searching, browsing, and long-running sessions
bat
btop
fd-find
fzf
htop
ncdu
nano
ripgrep
screen
tmux
vim

# native build and debugging tools for compiling dependencies and inspecting failures
build-essential
cmake
direnv
g++
gcc
gdb
ltrace
make
ninja-build
pkg-config
shellcheck
shfmt
strace

# Python tooling for Hermes skills, data work, scraping, images, PDFs, and tests
pipx
python3
python3-bs4
python3-dev
python3-ipython
python3-lxml
python3-matplotlib
python3-numpy
python3-opencv
python3-pandas
python3-pil
python3-pip
python3-pymupdf
python3-pytest
python3-requests
python3-scipy
python3-seaborn
python3-venv
python3-yaml

# JavaScript tooling for web projects and browser-side development tasks
nodejs
npm

# browsers and browser automation support for research, testing, and web workflows
chromium
chromium-driver
firefox-esr

# fonts so generated documents, screenshots, emojis, and code render correctly
fonts-dejavu
fonts-firacode
fonts-liberation
fonts-noto
fonts-noto-color-emoji

# desktop and X11 helpers for GUI apps, scripted dialogs, launchers, and clipboard use
dbus-x11
wmctrl
x11-apps
x11-utils
xclip
xdotool
xsel
yad
zenity

# image creation, editing, conversion, optimization, metadata, and RAW-photo tools
darktable
gimp
graphicsmagick
imagemagick
inkscape
jpegoptim
krita
libimage-exiftool-perl
optipng
pngquant
potrace
rawtherapee
webp

# audio and video tools for playback, editing, transcoding, metadata, and downloads
audacity
ffmpeg
flac
lame
mediainfo
mkvtoolnix
mpv
opus-tools
sox
vlc
vorbis-tools
yt-dlp

# office, PDF, OCR, and document-conversion tools for reading and generating files
ghostscript
libreoffice
libreoffice-gtk3
ocrmypdf
pandoc
pdftk-java
poppler-utils
qpdf
tesseract-ocr
tesseract-ocr-deu
tesseract-ocr-eng

# diagram and database GUI tools for visual docs and ad-hoc data inspection
graphviz
plantuml
sqlitebrowser

# networking and diagnostics tools for connectivity checks, scans, packet captures, and HTTP debugging
dnsutils
httpie
iproute2
iputils-ping
mtr-tiny
net-tools
netcat-openbsd
nmap
socat
tcpdump
traceroute
whois

# binary and hex editors for inspecting unknown or damaged files
hexedit

# heavy creative tools for 3D work, video editing, recording, and transcoding
blender
handbrake
handbrake-cli
kdenlive
obs-studio

# container tools for isolated project builds and service experiments
docker.io
podman

# LaTeX packages for broad PDF and technical document generation
texlive-latex-base
texlive-latex-extra
texlive-latex-recommended
)

# Install apt package list
apt-get -y install "${packages[@]}"

# Update fonts cache
fc-cache -fv
