#!/bin/sh

dir="$(cd `dirname $0`; pwd)"
echo $dir

wget -O "$dir/channel_v3.json" http://packagecontrol.io/channel_v3.json
wget -O "$dir/Package Control.sublime-package" https://packagecontrol.io/Package%20Control.sublime-package

version=`curl https://www.sublimetext.com/3 | grep download.sublimetext.com | grep 'Sublime\sText\s.*\.dmg' | sed 's/.*\(Build.[0-9]*\).*/\1/'`
echo $version

if [ ! -f "$dir/version" ]; then  
    touch "$dir/version"
fi  

oldver=`cat "$dir/version"` 
if [ "$oldver" = "$version" ]; then
    echo 'Version not change.'
else
    echo 'Version change.'

    downarr=(".dmg" " Setup.exe" ".zip" " x64 Setup.exe" " x64.zip")
    for i in "${!downarr[@]}"; do   
        printf "%s\t%s\n" "$i" "${downarr[$i]}" 
	wget -O "$dir/install/Sublime Text $version${downarr[$i]}" "https://download.sublimetext.com/Sublime Text $version${downarr[$i]}"
    done  

    versiontr=`echo $version | tr '[A-Z]' '[a-z]' | sed 's/\s/_/'`
    echo $versiontr
    downarrtr=("_x64.tar.bz2" "_x32.tar.bz2")
    for j in "${!downarrtr[@]}"; do   
        printf "%s\t%s\n" "$i" "${downarrtr[$j]}" 
	wget -O "$dir/install/sublime_text_3_$versiontr${downarrtr[$j]}" "https://download.sublimetext.com/sublime_text_3_$versiontr${downarrtr[$j]}"
    done 
fi  

echo $version > "$dir/version"

