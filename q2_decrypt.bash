#!/bin/bash

#first lets create variable that store lines of the codebook

firstline=$(sed '1!d' $1) 
secondline=$(sed '2!d' $1)
 


temp=$(tr "$firstline" "a-z" < $2) #getting the lower cases to convert and store it into temp

echo $temp | tr "$secondline" "A-Z" #getting the output of the previous line to deal with upper cses conversion