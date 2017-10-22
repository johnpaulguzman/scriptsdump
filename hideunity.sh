# Use: bash hideunity.sh
AUTOHIDE=$(dconf read /org/compiz/profiles/unity/plugins/unityshell/launcher-hide-mode)
if [[ $AUTOHIDE -eq 1 ]]
then
   dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-hide-mode 0
else
   dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-hide-mode 1
fi
