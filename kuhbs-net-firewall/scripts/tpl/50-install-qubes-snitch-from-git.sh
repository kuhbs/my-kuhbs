# Pull Qubes-Snitch from the real source repo so KUHBS does not vendor a copied payload
DEBIAN_FRONTEND=noninteractive apt-get --yes install git

# Keep the checkout in the template for inspection and manual repo-based upgrades
rm -rf /home/user/qubes-snitch
runuser -u user -- git clone https://github.com/kuhbs/qubes-snitch /home/user/qubes-snitch

# The upstream installer owns package dependencies, file layout, service enablement, and launcher files
cd /home/user/qubes-snitch
./install.sh
