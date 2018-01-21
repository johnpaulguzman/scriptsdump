# Use: bash savepage.sh [URL]
args=("$@")
wget --recursive --no-clobber --page-requisites --convert-links --no-parent --mirror -e robots=off ${args[0]}
