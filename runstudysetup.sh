#!/usr/bin/env bash

# Use: bash runstudysetup.sh or ./runstudysetup.sh
vlc_time=$((60*0 + 60*0 + 00))
#vlc_path= 
gum_path='/home/jp/Repositories/OOM/main_ML.tex' 
pdf_path='/home/jp/Repositories/OOM/main_ML.pdf' 
pdf_bookmark='nRandomVariable' 
echo "jp" | sudo -S echo -e  "sudo activated \n${vlc_time} \n${vlc_path} \n${pdf_path}"
sudo gummi ${gum_path} &
firefox -new-tab &
echo "file://${pdf_path}#${pdf_bookmark}" | xclip -sel clip &
#nohup gedit &
#nohup vlc --start-time=${vlc_time} "${vlc_path}" &!
#echo "TODO #####################################"
#echo "Fix notes, then resume back to Statistical machine learning theory lectures."
echo https://www.probabilitycourse.com/
