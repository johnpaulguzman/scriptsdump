#!/usr/bin/env bash

# Use: bash runstudysetup.sh or ./runstudysetup.sh
vlc_time=$((60*0 + 60*0 + 00))
#vlc_path= 
gum_path='/home/jp/Repositories/OOM/main_ML.tex' 
pdf_path='/home/jp/Repositories/OOM/main_ML.pdf' 
pdf_page='37' 
src_path='/home/jp/Youtube/Pleasus' 
pdf_bookmark='nRandomVariable' 
echo "jp" | sudo -S echo -e  "sudo activated \ntime ${vlc_time} \nvlc ${vlc_path} \npdf ${pdf_path} \nsrc ${src_path}"
sudo gummi ${gum_path} &
evince --page-label=${pdf_page} ${pdf_path} &
pcmanfm -d ${src_path}
#nohup vlc --start-time=${vlc_time} "${vlc_path}" &!
#echo "TODO #####################################"
#echo "Fix notes, then resume back to Statistical machine learning theory lectures."
#echo https://www.probabilitycourse.com/
