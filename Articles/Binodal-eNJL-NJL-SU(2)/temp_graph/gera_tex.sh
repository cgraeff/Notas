#!/bin/bash

file_list=`ls *.tex`

for file in $file_list; do
	echo '\begin{figure}'
	echo "	\\input{temp_graph/$file}"
	str=${file%-*}
	str=${str%-*}
	s_str=${str%_*}
	e_str=${str#*_}
	echo "	\\caption{$s_str\\_$e_str}"
	echo '\end{figure}'
done
