#!/bin/bash
for file in *.jpg; do
   echo -n Converting ${file}...
   magick -resize 1000x1000^ "$file" "th_$file"
   mv "th_$file" "$file"
   echo done
done
