#!/bin/bash

#prefix="phi.cfs"
if [ "$1" == "" ] ; then
    echo input param
    exit
fi
prefix=$1


b[0]="bt"
b[1]="cg"
#b[2]="dc"
#b[3]="ep"
b[4]="ft"
#b[5]="is"
b[6]="lu"
b[7]="mg"
b[8]="sp"
#b[9]="ua"



for x in 0 1 4 6 7 8 ; do
#for a in ${b[@]} ; do

    cmd="bin/${b[$x]}.A.x"
    #echo $cmd 

	logfn=data/$prefix.${b[${x}]}.raw
	outfn=data/$prefix.${b[${x}]}
	tmpfn=data/$prefix.${b[${x}]}.tmp
	rm -f $outfn $tmpfn
	#echo $logfn

	cat $logfn | grep "in seconds" | awk '{print $5}' >> $tmpfn
	cat $logfn | grep "s total" | awk '{print $4}' >> $tmpfn
	python getdata.py $tmpfn > $outfn

	echo $outfn
	cat $outfn
done


