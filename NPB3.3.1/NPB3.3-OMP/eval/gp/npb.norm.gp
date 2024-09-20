#call "common.gnuplot" "2.5in, 1.1in"

if (!exists("id")) { system("echo NO ID"); exit; }

system("echo ". id)

outfn=id .".norm.pdf"
f1="data/phi.norm.". id
#f2="data/phi.fl.". id



#set term pdfcairo size @SIZE linewidth 2 rounded font ',10'
set term pdfcairo linewidth 2 rounded font ',18'
set output outfn
#set output "`echo $OUT`"



mp_startx=0.045
mp_starty=0.00
mp_height=0.85
mp_colgap=0.1

#eval mpSetup(1, 1)

#set xtics nomirror rotate by -45
set xtics nomirror 
set ytics nomirror
#set y2tics nomirror


#eval mpNext
set xlabel 'Number of thread' offset 0,0
set ylabel 'Normalized Mop/s' offset 0,0
#set y2label 'Context switches'

set key at graph 0,1 left top Left reverse
#set key at 1,0.85

set yrange [0:]
#set y2range [0:]
set format y '%.1f'
#set format y2 '%.0s%c'

set style data histogram
set style histogram clustered gap 1
set style fill solid noborder
#set boxwidth 0.8


set grid back lt 0 lt rgb '#ababab'
#set border 11 back lw 2
set border 3 back lw 2


plot [0:][0:] \
  f1 using 2:xtic(1) title id .' fl/cfs' with lp ls 1 ps 1.5,  \
#  f2 using 3:xtic(1) title 'fl' with lp ls 2 ps 1.5,  \
#  f1 using 3:xtic(1) axis x1y2 title 'cfs.ctxt' with lp ls 3 ps 1.5,  \
#  f2 using 3:xtic(1) axis x1y2 title 'fl.ctxt' with lp ls 4 ps 1.5,  \

