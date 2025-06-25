#!/bin/bash

#SBATCH -n 16 --ntasks-per-node=16
#SBATCH --mem-per-cpu=2048
#SBATCH --time=00:15:00
#SBATCH --job-name=ld1
#SBATCH --output=out.%j
#SBATCH --error=err.%j
#SBATCH -C ib

LD1="/cluster/home/lmarin/Local_programs/q-e-qe-6.4.1_mpi_plus_openMP_qedark_Xe_develop/bin/ld1.x"
#!!GIPAW="/cluster/home/lmarin/Local_programs/q-e-qe-6.4.1_mpi_plus_openMP_qedark_Xe_develop/bin/gipaw.x"

mpirun -np 16 $LD1 -i ld1.in > ld1.out
#mpirun -np 4 $GIPAW -i H2O+_hyperfine.in > H2O+_hyperfine.out

