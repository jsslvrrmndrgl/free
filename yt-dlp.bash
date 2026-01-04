#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock

DIRECTORY="$HOME/storage/shared/YT"

cd $DIRECTORY

NOW=$(date +%H-%M-%S)

echo 'Option:'
echo '1.- Audio flac'
echo '2.- Video mp4'
echo '3.- Playlist flac'
echo '4.- Playlist mp4'
echo '0.- Quit'

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

termux-wake-unlock

sleep 3
