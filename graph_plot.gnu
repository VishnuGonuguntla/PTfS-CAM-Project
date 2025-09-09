set terminal png size 800,600



set xlabel "Cores" font ",12"
set ylabel "Performance [MLUP/sec]" font ",12"
set xrange [0:80]
set yrange [0:2000]
set grid
set key bottom right
set key box
set key spacing 1.2

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 12 ps 1.5
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 12 ps 1.5
set style line 3 lc rgb '#199d83ff' lt 1 lw 2 pt 12 ps 1.5

# Set output and plot
# set title sprintf("Performance (MLUP/sec) - Conjugate Gradient Method")
set output sprintf("results/Performance_4_%s.png",outname1)
plot filename1  using 1:2 with linespoints linestyle 1 title size1, \
     filename2  using 1:2 with linespoints linestyle 2 title size2, \
     filename3  using 1:2 with linespoints linestyle 3 title size3
unset output
# set title sprintf("Performance (MLUP/sec) Pre-Conditioned Conjugate Gradient Method")
set output sprintf("results/Performance_4_%s.png",outname2)
plot filename1  using 1:3 with linespoints linestyle 1 title size1, \
     filename2  using 1:3 with linespoints linestyle 2 title size2, \
     filename3  using 1:3 with linespoints linestyle 3 title size3
unset output