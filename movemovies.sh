# Use: bash movemovies.sh
find ./ -iname '*.avi' -or -iname '*.mkv' -or -iname '*.mp4' | xargs -I{} mv {} ./
