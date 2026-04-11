#! /bin/bash 
# requires imagemagick installed - brew install imagemagick

THUMB_MAX=1024

for f in shows/*.jpg
do
    filename="$f"
    # Create thumbnails
    thumbpath="${filename%.*}.webp"
    magick "$f" -thumbnail "${THUMB_MAX}>" "${thumbpath}"
done