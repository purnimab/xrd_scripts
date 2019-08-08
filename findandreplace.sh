#!/bin/bash

#shopt -s nullglob
mkdir Raw
for i in *.xrdml; do
#	[ -f "$i" ] || break
	echo $i
	mv $i Raw/$i
	sed 's/Chi/Psi/g' Raw/$i > $i
done

