#!/usr/bin/python3

import os, sys


#nproc = os.popen("nproc").read()
#nproc=nproc.strip()
#print nproc

nproc=36

sc=int(sys.argv[1])

for i in range (0, int(nproc)):
	cmd="echo 1 > /sys/devices/system/cpu/cpu"+ str(i) +"/online"
	print (cmd)
	os.system(cmd)

for i in range (sc, int(nproc)):
	cmd="echo 0 > /sys/devices/system/cpu/cpu"+ str(i) +"/online"
	print (cmd)
	os.system(cmd)


cmd="cat /sys/devices/system/cpu/online"
os.system(cmd)
cmd="cat /sys/devices/system/cpu/offline"
os.system(cmd)
cmd="lscpu"
os.system(cmd)


os.system("nproc");



