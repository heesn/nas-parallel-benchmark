#!/usr/bin/python2

import os, sys
# execfile("stdev.py")
exec(open('stdev.py').read())

#sl=8 # set lines
n=0
k=5

f = open(sys.argv[1], 'r');
buf=f.readlines()

t=[32]
#t=[17, 34, 68, 136, 272, 544]
#t=[64, 128, 256, 512, 1024, 2048, 4096]
#t=[128, 256, 512, 1024, 2048, 3072, 4096]
#t=[50, 100, 200, 400, 800, 1600, 3200, 6400]
#t=[50, 100, 200, 400, 800, 1600, 3200]
#t=[20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 400, 600, 800]
#t=[40, 80, 120, 160, 200, 240, 280, 320, 360, 400, 440, 480, 520]
#t=[40]

sl=len(t)

for h in range(0, int(len(buf)/sl/2/k)) :
	key=""
	val=[0]*k
	throu=[0]*k
	#mm=[999999,0,999999999999,0]


	for i in range(0,sl) :
		for j in range(0,k) :
			line=buf[n].strip('\n')
			line2=buf[n+(sl*k)].strip('\n')
			key=t[i]
			val[j]=float(line)
			throu[j]=float(line2)

			n=n+1
	
		print("%s %.3f %.3f %.3f %.3f" % (key, mean(val), mean(throu), stdev(val), stdev(throu)) )


