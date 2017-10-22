# Use: bash aptrefresh.sh
apt-select -t 3 -m up-to-date
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup && sudo mv sources.list /etc/apt/
