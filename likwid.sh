export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_NUM_THREADS=72

likwid-perfctr -C S0:0-35 -g ./perf 2000 20000