#!/bin/bash

cd input
input_list=`echo *`
cd ..

for input in $input_list; do
	echo "[Converting $input ...]"
	cp input/$input input.tex
	pdflatex -interaction=batchmode main.tex
	rm input.tex
	name="${input%.*}"
	mv main.pdf output/$name.pdf
done
