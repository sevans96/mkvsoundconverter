#!/bin/bash

if [ "$1" = "" ]; then
  DIR="."
else
  DIR="$1"
fi

echo

find "$DIR" -type f -name '*.mkv' -print0 | while IFS= read -r -d '' f; do
	echo "Creating new title for "$f" without any subtitles..."
	mkvmerge -o "$f".mkv --no-subtitles "$f"; done
find "$DIR" -type f -name '*.mkv.mkv' -print0 | while IFS= read -r -d '' f; do
	mv -- "$f" "${f%.mkv.mkv}.mkv"; done
exit 0
