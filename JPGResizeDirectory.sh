#!/bin/bash
#
# Resize all jpg images in a directory using ImageMagick convert
#
# Written by Ash Martin (github.com/iamashm) January 1, 2013
#
# Uses ImageMagick to resize images in a directory. NOTE: Must use
# JPG images. First variable is the full path to the images and 
# second variable is the percentage to be resized to.

imagePath="$1"
amount="$2"

cd $ImagePath
for i in *.jpg
    do convert $i -resize $amount% $(basename $i .jpg).jpg
done
