# Use: bash pagetopdf.sh [URL]
# Use: bash pagetopdf.sh $(< [URLS.TXT])
args=("$@")
echo Number of arguments: $#
for ((i = 0 ; i < $# ; i++ ))
do
myurl=${args[i]}
target=${myurl%/}
tailend=${target##*/}
outfile="${tailend}.pdf"
echo arguments: $myurl $outfile
wkhtmltopdf $myurl $outfile
done
