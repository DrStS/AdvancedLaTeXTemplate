load "../common_template.gnuplot"

set output "sin.eps"
set xrange[0:1]
set xtics ("0" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, "1" 1)
set yrange[-0.2:1.4]

set xlabel 'Time $t$ ($\unit{s}$)'
set ylabel 'Output'

plot  'data/someXYdata.dat'           title "$Y_2$"       with line  ls 1 ,\
       sin(x)                         title "$\\sin(t)$"  with line  ls 2
set output