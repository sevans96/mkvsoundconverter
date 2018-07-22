#!/bin/bash

shopt -s nocasematch

if [ -f "$1" ]; then
		DIR=$(dirname "$1")
		echo "File detected. Using $DIR as directory"
fi

if [ -d "$1" ]; then
		DIR=$"$1"
		echo "Directory detected. Using $DIR as directory"
fi

if [ "$1" = "" ]; then
		DIR=$"$PWD"
		echo "No filename or directory detected. Using $DIR as directory"
fi

find "$DIR" -type f -iname "*.mkv" -print0 | xargs -0 -i /home/steve/Applications/MKVconverters/mkvdts2ac3.sh {}

shopt -u nocasematch
