# Use: bash savepage.sh [URL]
args=("$@")
wget -mkEpnp ${args[0]}
