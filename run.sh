source /etc/profile
module load intel

# make
# ./test

> data.txt

# salloc --cpu-freq=2200000-2200000:performance --time=00:10:00 
# export OMP_PROC_BIND=close
# export OMP_PLACES=cores
# for threads in {1..72}; do
#     OMP_NUM_THREADS=$(($threads)) ./perf 20000 2000
# done
# for threads in {1..72}; do
#     OMP_NUM_THREADS=$(($threads)) ./perf 2000 20000
# done
# for threads in {1..72}; do
#     OMP_NUM_THREADS=$(($threads)) ./perf 1000 400000
# done

gnuplot -e "filename='results/data_20000_2000.txt'; outname1 = 'CG'; outname2 = 'PCG'; size='20000x2000'" ccNUMA.gnu
gnuplot -e "filename='results/data_2000_20000.txt'; outname1 = 'CG'; outname2 = 'PCG'; size='2000x20000'" ccNUMA.gnu
gnuplot -e "filename='results/data_1000_400000.txt'; outname1 = 'CG'; outname2 = 'PCG'; size='1000x4000000'" ccNUMA.gnu
