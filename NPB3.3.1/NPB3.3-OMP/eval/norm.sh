#!/bin/bash

#prefix="phi"
#if [ "$1" == "" ] ; then
#    echo input param
#    exit
#fi
#prefix=$1


b[0]="bt"
b[1]="cg"
b[2]="dc"
b[3]="ep"
b[4]="ft"
b[5]="is"
b[6]="lu"
b[7]="mg"
b[8]="sp"
b[9]="ua"



for x in 0 1 2 3 4 5 7 8 9 ; do
#for a in ${b[@]} ; do

	fn1=data/knl2.${b[${x}]}
	fn2=data/fl2.${b[${x}]}
	outfn=data/norm.${b[${x}]}


	python getnorm.py $fn1 $fn2 > $outfn

	echo $outfn
	cat $outfn
done


