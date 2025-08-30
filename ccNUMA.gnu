set terminal png size 800,600


set title sprintf("Performance (MLUP/sec) size: %s for Conjugate Gradient Method", size)
set xlabel "Cores" font ",12"
set ylabel "Performance [MLUP/sec]" font ",12"

set grid
set key bottom right
set key box
set key spacing 1.2

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 7 ps 1.5

# Set output and plot
set output sprintf("results/Performance_%s.png",size)
plot filename using 1:2 with linespoints linestyle 1 title outname1, \
     filename using 1:3 with linespoints linestyle 2 title outname2
unset output
