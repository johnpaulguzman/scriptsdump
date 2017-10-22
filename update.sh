# Use: bash update.sh
echo "jp0" | sudo -S echo "sudo activated"
yes Y | sudo apt-get update
echo "jp0" | sudo -S echo "sudo activated"
yes Y | sudo apt-get upgrade
echo "jp0" | sudo -S echo "sudo activated"
yes Y | sudo apt-get dist-upgrade
