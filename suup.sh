#!/bin/sh

echo 'guzman' | sudo -S echo 'sudo activated'
sudo apt update
sudo apt upgrade -y --autoremove
