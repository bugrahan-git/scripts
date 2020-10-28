#!/bin/zsh

temp=0
for f in *.png; do 
    new=$(printf "%03d.png" "$temp")
    mv "$f" "$new"
    temp=$((temp + 1))
done
