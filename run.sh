# Builds the Project, stores CG and PCG Performance data and Plots graphs using gnuplot for 72 threads.
source /etc/profile
module load intel


# CXX=icpx make
# ./test

export OMP_PROC_BIND=close
export OMP_PLACES=cores

run() {
    for threads in $(seq 1 $3); do
        OMP_NUM_THREADS=$(($threads)) ./perf $1 $2
    done
}
run 20000 2000 $1
run 2000 20000 $1
run 1000 400000 $1

gnuplot -e "filename1='results/data_1000_400000.txt';\
            filename2='results/data_2000_20000.txt';\
            filename3='results/data_20000_2000.txt';\
            outname1 = 'CG';\
            outname2 = 'PCG';\
            size1='1000x4000000';\
            size2='2000x20000';\
            size3='20000x2000';" 4_ccNUMA.gnu
