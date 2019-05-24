#!/bin/bash 
# f4vtomp4.sh 

arquivo=$1
nome=${arquivo/.f4v/} 

#echo "$nome"

ffmpeg -i $1 -vcodec copy -acodec copy -loglevel debug -report $nome.mp4
