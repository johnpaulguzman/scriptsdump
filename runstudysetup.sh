# Use: bash runstudysetup.sh
vlc_time=$((60*0 + 60*0 + 00))
vlc_path='/home/jp/Desktop/Link to Youtube/Lec 27 _ MIT 18.06 Linear Algebra, Spring 2005-vF7eyJ2g3kU.mp4' 
gum_path='/home/jp/Repositories/OOM/main_ML.tex' 
pdf_path='/home/jp/Repositories/OOM/main_ML.pdf' 
pdf_bookmark='singularValueDecomposition' 
echo "jp0" | sudo -S echo -e  "sudo activated \n${vlc_time} \n${vlc_path} \n${pdf_path}"
sudo nohup gummi ${gum_path} &!
nohup firefox -new-tab "${pdf_path}#${pdf_bookmark}" &!
nohup gedit &!
#nohup vlc --start-time=${vlc_time} "${vlc_path}" &!
echo "TODO #####################################"
echo "Fix notes, then resume back to Statistical machine learning theory lectures."
