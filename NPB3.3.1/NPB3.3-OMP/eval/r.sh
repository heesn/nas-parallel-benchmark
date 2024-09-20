#!/bin/bash

ulimit -n 100000

#prefix="phi.cfs"
if [ "$1" == "" ] ; then
	echo input param
	exit
fi
prefix=$1


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



#for x in 0 1 2 3 4 5 6 7 8 ; do
for x in 0 ; do
#for x in 4 7 ; do
#for x in 0 1   4 5 6 7 8 ; do
#for x in 9 ; do

	cmd="../bin/${b[$x]}.W.x"
	echo $cmd 

	logfn=data/$prefix.${b[${x}]}.raw
	tmpfn=data/$prefix.${b[${x}]}.tmp
	outfn=data/$prefix.${b[${x}]}
	rm -f $logfn $tmpfn $outfn
	echo $logfn


	#for i in 128 256 512 1024 2048 3072 4096 ; do
	#for i in 32 64 128 256 512 ; do
	#for i in 17 34 68 136 272 544 ; do
	#for i in 40 80 120 160 200 240 280 320 360 400 440 480 520 ; do
	#for i in 50 ; do
	for i in 32; do

		sync; echo 3 > /proc/sys/vm/drop_caches; sleep 2;

		export OMP_NUM_THREADS=$i
		#$cmd | grep "Mop/s total" | awk '{print $4}' 

		for k in {1..5} ; do
			$cmd >> $logfn 
		done
	done

	cat $logfn | grep "in seconds" | awk '{print $5}' >> $tmpfn
	cat $logfn | grep "s total" | awk '{print $4}' >> $tmpfn
	python3 getdata.py $tmpfn > $outfn

	echo $outfn
	cat $outfn


done


