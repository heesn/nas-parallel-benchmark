gp=npb.gp
#gp=npb.hbmmode.gp

#for i in bt cg dc ep ft is lu mg sp ua
#for i in bt cg dc ep ft is lu mg sp 
#for i in bt cg dc ep ft is    mg sp 
for i in bt  
do

	echo gnuplot -e "id='$i'" $gp
	gnuplot -e "id='$i'" $gp
done

#gp=npb.norm.gp
#
#for i in bt cg ep ft is lu mg sp ua
#do
#
#	echo gnuplot -e "id='$i'" $gp
#	gnuplot -e "id='$i'" $gp
#done


