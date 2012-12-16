#!/bin/sh
dir=$1
if [ -z "$dir" ] ; then
	echo "error, need to specify data dir"
	exit 1
fi

lc() {
	arg=$1
	echo $arg | perl -ne '@a = split //; print(lc($_)) for(@a);'
}

(
	cd "$dir"
	for f in * ; do
		lfn=$(lc "$f")
		if [ ! "$f" = "$lfn" ] ; then
			mv "$f" "$lfn"
		fi
	done
)
