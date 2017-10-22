# Use: bash runstudysetup.sh
vlc_time=$((60*0 + 60*27 + 30))
vlc_path='/home/jp/Desktop/Link to Youtube/StatisticalMachineLearning/9.520 - 09_16_2015 - Class 03 - Carlo Ciliberto & Charlie Frogner - Math Camp-DTVRj8LJjZo.mp4'  
gum_path='/home/jp/Repositories/OOM/main_ML.tex' 
pdf_path='/home/jp/Repositories/OOM/main_ML.pdf' 
echo "jp0" | sudo -S echo -e  "sudo activated \n${vlc_time} \n${vlc_path} \n${pdf_path}"
sudo nohup gummi ${gum_path} &!
#nohup firefox -new-tab "${pdf_path}" &!
#nohup gedit &!
#nohup vlc --start-time=${vlc_time} "${vlc_path}" &!
echo "TODO #####################################"
echo "Fix notes, then resume back to Statistical machine learning theory lectures."
