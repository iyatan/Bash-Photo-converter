#!/bin/bash
# first we get the argument then transform all the / to _ using tr
finalImageName=$(echo $1 | tr "/" "_");
#echo $finalImageName; test what we have as image

inputs=$(ls -Rtr $(find $1 -name "*.jpg" -print)); #sorting


#echo $inputs; #test what we have as images to convert
convert $inputs -append $finalImageName.jpg # conversion..