#! /bin/bash
for file in $( find ./ -iname "*.mkv" -o -iname "*.avi")
do
  OIFS="$IFS"
  IFS=$'\n'
  ffmpeg -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm "$file"
  IFS="$OIFS"
done
