#!/bin/bash -x
for filename in $(ls)
do
	# Take extension available in afilename
	ext=${filename##*\.}
	case "$ext" in
		java) echo "$filename : Java source file"
			;;
		o) echo "$filename : Object file"
			;;
		sh) echo "$filename : Shell script"
			;;
		txt) echo "$filename : Textfile"
			;;
		*) echo "$filename : Not processes"
			;;
	esac
	done
