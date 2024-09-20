#!/usr/bin/python2

import os, sys

sl=7 # set lines
n=0;

f1 = open(sys.argv[1], 'r');
buf1=f1.readlines()
f2 = open(sys.argv[2], 'r');
buf2=f2.readlines()


#t=[50, 100, 200, 400, 800, 1600, 3200, 6400]


for h in range(0, int(len(buf1))) :
	line1=buf1[n].strip('\n')
	line1=line1.split(" ")
	val1=float(line1[1])

	line2=buf2[n].strip('\n')
	line2=line2.split(" ")
	val2=float(line2[1])
	
	print ("%s %f" % (line1[0], val1/val2))



	n=n+1


