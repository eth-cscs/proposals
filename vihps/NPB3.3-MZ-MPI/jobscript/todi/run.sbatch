#!/bin/bash --login
# submit from ./bin directory with "sbatch run.sbatch"
#SBATCH --job-name="mzmpibt"
#SBATCH --nodes=4
#SBATCH --ntasks=16
#SBATCH --time=00:10:00
#SBATCH --res=sschool

# benchmark configuration
export OMP_NUM_THREADS=4
PROCS=16
CLASS=B
EXE=./bt-mz_$CLASS.$PROCS

set -x
aprun -n $PROCS -d $OMP_NUM_THREADS  $EXE

