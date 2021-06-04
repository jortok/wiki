#!/usr/bin/env bash

# Make a list of all the files, then sort it and finally exclude this script
datos=$(find . -type f | sort -n | awk '!/toc.sh/')

# Print the firts line to the main page.
echo "* [CONTENIDO](../README.md)"

# Make a bucle for each file
folder2=""
for data in $datos
do
  name=$(echo $data | rev | cut -d'/' -f 1 | rev | cut -d'.' -f 1)
  folder=$(echo $data | cut -d'/' -f 2)
  if [ $name != "README" ]; then
    if [ "$folder" != "$folder2" ]; then echo "* $folder"; fi
    echo "  * [$name](${data:2})"
    folder2=$(echo $folder)
  fi
done