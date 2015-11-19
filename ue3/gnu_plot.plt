#Einfacher Gnuplot fuer Uebung 2
#===============================
set title 'Scalar / SSE / AVX'
set xrange[1:131072]
set yrange[0:3000]
set logscale x 2
set xlabel 'Datengroesse'
set ylabel 'Mega Updates Per Second'

set style line 1 lt 1 lw 3 pt 3 lc rgb "red"
set style line 2 lt 1 lw 3 pt 3 lc rgb "black"
set style line 3 lt 1 lw 3 pt 3 lc rgb "cyan"
set style line 4 lt 1 lw 3 pt 3 lc rgb "green"
set style line 5 lt 1 lw 3 pt 3 lc rgb "brown"
set style line 6 lt 1 lw 3 pt 3 lc rgb "orange"

plot 	'jacobi_data.dat' using 1:2 w l ls 1 title "float", \
 	'jacobi_sse_data.dat' using 1:2 w l ls 2 title "float sse", \
 	'jacobi_avx_data.dat' using 1:2 w l ls 3 title "float avx", \
 	'jacobi_d_data.dat' using 1:2 w l ls 4 title "double", \
 	'jacobi_sse_d_data.dat' using 1:2 w l ls 5 title "double sse", \
 	'jacobi_avx_d_data.dat' using 1:2 w l ls 6 title "double avx"

pause -1
