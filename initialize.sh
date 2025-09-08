source /etc/profile
module load intel

CXX=icpx make
./test

OMP_NUM_THREADS=72 OMP_PLACES=cores OMP_PROC_BIND=close ./perf 2000 20000