#/bin/gnuplot
# gnuplot script for XXX

set terminal postscript eps enhanced color font 'Helvetica,30'
set output ''.system("echo $epsfile")
#set boxwidth 0.9 relative
#set style data histogram
#set style fill pattern border -1

set title ''
set xlabel "Time (s)"
set ylabel "Throughput (10^3 ops/s)"
set key outside above vertical maxrows 1
#set key right bottom

#set title font ",20"
#set key font ",20"
#set xlabel font ",15"
#set ylabel font ",15"
#set xtics font ",15"

#set logscale y
set auto x
set xrange [0:system("echo $xrange")]
set yrange [0:]

set key autotitle columnhead
set xtics

set pointsize 2

rec=system("echo $rectime")
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red
set arrow from rec,0 to rec,250 nohead lc rgb '#ff0000' lw 2

#plot for [i=3:9:3] filename.'.dat' u 0:i:i-1:i+1 w yerrorbars, \
#     for [i=3:9:3] filename.'.dat' u 0:i:xtic(1) notitle w lines
plot ''.system("echo $datfile") u 1:($2/1000) w lines lw 3 dashtype 6, \
     '' u 1:($4/1000) w lines lw 2
