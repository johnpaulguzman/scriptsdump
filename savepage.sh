# Use: bash savepage.sh [URL]
args=("$@")
wget -p -r -k ${args[0]}
