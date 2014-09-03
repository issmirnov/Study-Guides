#!/bin/bash
# Lists all files in this repo.
# Author: Vania Smirnov

find -type f -not -iname "*~" -not -iname "tmp1" -not -iname "list.sh" -not -iname "filelist.txt" -not -iname "README.md" -not -iname "TODO" -print > tmp1
grep -v .git tmp1 > tmp2
cat tmp2 | cut -d'/' -f"2-" > filelist.txt
rm tmp1
rm tmp2


# cat tmp3 | sed "s/\//-/g" > filelist.txt # replaces slashes with space or hyphen
