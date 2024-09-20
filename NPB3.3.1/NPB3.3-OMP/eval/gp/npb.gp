#call "common.gnuplot" "2.5in, 1.1in"

if (!exists("id")) { system("echo NO ID"); exit; }

system("echo ". id)

outfn="a.". id .".png"
f1="../data/cfs.". id
#f2="../data/fl2.". id
#f3="../data/ule.". id
#f4="../data/d.". id
#f5="data/phi.rr.". id


#set term pdfcairo size @SIZE linewidth 2 rounded font ',10'
#set term pdfcairo linewidth 2 rounded font ',18'
#set term pdfcairo size 4in,3in linewidth 2 rounded font ',18'
set term png size 800,600 linewidth 2 rounded font ',24'
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
set xlabel 'Number of threads' offset 0,0
set ylabel 'Execution time (s)' offset 0,0
#set y2label 'Enhancement'

#if (id eq "bt") {
#set key at graph 1.0 right bottom Left reverse 
#} 
#else {
#unset key
#}
set key at graph 0,1 left top Left reverse 
#set key at 1,0.85

set yrange [0:]
#set y2range [0:]
set format y '%.1f'
#set format y '%.0s%c'
#set format y2 '%.1f'

set style data histogram
set style histogram clustered gap 1
set style fill solid noborder
#set boxwidth 0.8


set grid back lt 0 lt rgb '#ababab'
#set border 11 back lw 2
set border 3 back lw 2


plot [0:][0:] \
  f1 using :2:4:xtic(1) title 'CFS' with yerrorline ls 1 ps 1.5,  \
#  f2 using :2:4:xtic(1) title 'FL2' with yerrorline ls 3 ps 1.5,  \
#  f3 using :2:4:xtic(1) title 'ULE' with yerrorline ls 2 ps 1.5,  \
#  f4 using :2:4:xtic(1) title 'Default' with yerrorline ls 4 ps 1.5,  \

