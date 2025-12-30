#!/data/data/com.termux/files/usr/bin/bash

DIRECTORY="$HOME/storage/shared/YT"

cd $DIRECTORY

NOW=$(date +%Y-%m-%d)

echo 'Opcion:'
echo '0.- Audio'
echo '1.- Video'
echo '2.- Playlist aac'
echo '4.- Playlist mp4'
echo '5.- Quit'

echo
read option

echo
echo $option

case $option in

	0)
		clear
		echo 'URL?'
		read url
		if [[ !-d $NOW ]]; then
			mkdir $NOW
		fi
		cd $NOW
		yt-dlp -x --audio-format flac --audio-quality 0 --embed-thumbnail --embed-metadata $url
	;;

	1)
		clear
		echo 'URL?'
		read url
		if [[ !-d $NOW ]]; then
			mkdir $NOW
		fi
		cd $NOW
		yt-dlp -x --merge-output-format mp4 $url
	;;

	2)
		#yt-dlp --yes-playlist -x --extract-audio --audio-format flac --audio-quality 0 --embed-thumbnail --embed-metadata $url
	;;

	3)
		#yt-dlp --yes-playlist -x --merge-output-format mp4 $url
	;;

	5)
		exit
	;;
	*)
		echo 'Unknown option!'
	;;
	
esac

sleep 3
