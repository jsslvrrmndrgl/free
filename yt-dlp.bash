#!/data/data/com.termux/files/usr/bin/bash

DIRECTORY="$HOME/storage/shared/YT"

cd $DIRECTORY

NOW=$(date +%Y-%m-%d %H-%M-%S)

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

function create_folder()
{
	clear
	echo 'URL?'
	read url
	mkdir $NOW
	cd $NOW
}

case $option in

	0)
		create_folder
		yt-dlp -x --audio-format flac --audio-quality 0 --embed-thumbnail --embed-metadata $url
	;;

	1)
		create_folder
		yt-dlp -t mp4 $url
	;;

	2)
		create_folder
		yt-dlp --yes-playlist -x --audio-format flac --audio-quality 0 --embed-thumbnail --embed-metadata $url
	;;

	3)
		create_folder
		yt-dlp --yes-playlist -t mp4 $url
	;;

	5)
		exit
	;;
	*)
		echo 'Unknown option!'
	;;
	
esac

sleep 3
