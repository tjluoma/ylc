#!/bin/zsh
# Purpose: YouTube via VLC
#
# From:	Tj Luo.ma
# Mail:	luomat at gmail dot com
# Web: 	http://RhymesWithDiploma.com
# Date:	2015-09-16

NAME="$0:t:r"

if ((! $+commands[youtube-dl] ))
then

	if (( $+commands[brew] ))
	then
		echo "$NAME: youtube-dl not found, can be installed via 'brew install youtube-dl'"
	else
		echo "$NAME: youtube-dl is required but not found in $PATH. See http://yt-dl.org"
	fi

	exit 1

fi

for URL in "$@"
do

	TITLE=`youtube-dl --get-title "$URL"`

	echo "$NAME: Working on $TITLE\n($URL)"

	open -n -a VLC `youtube-dl --get-url --format best "${URL}"`

done

exit 0
#
#EOF
