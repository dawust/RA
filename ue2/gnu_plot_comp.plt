#Einfacher Gnuplot fuer Uebung 2
#===============================
set title 'Unrolling durch Compiler'
set xrange[1:131072]
set yrange[0:12000]
set logscale x 2
set xlabel 'Datengroesse'
set ylabel 'Mega Updates Per Second'

set style line 1 lt 1 lw 3 pt 3 lc rgb "red"
set style line 2 lt 1 lw 3 pt 3 lc rgb "black"
set style line 3 lt 1 lw 3 pt 3 lc rgb "cyan"
set style line 4 lt 1 lw 3 pt 3 lc rgb "magenta"
set style line 5 lt 1 lw 3 pt 3 lc rgb "blue"

plot 	'vecsum_u1_uc_data.dat' using 1:2 w l ls 1 title "no unrolling", \
 	'vecsum_u2_uc_data.dat' using 1:2 w l ls 2 title "2 unrolling", \
 	'vecsum_u3_uc_data.dat' using 1:2 w l ls 3 title "3 unrolling", \
 	'vecsum_u4_uc_data.dat' using 1:2 w l ls 4 title "4 unrolling", \
 	'vecsum_u8_uc_data.dat' using 1:2 w l ls 5 title "8 unrolling"

pause -1
