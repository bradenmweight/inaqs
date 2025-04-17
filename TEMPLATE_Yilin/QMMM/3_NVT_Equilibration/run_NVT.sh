#!/bin/bash
module purge
module load circ libgd/2.2.5 glibc/2.29 
module load hdf5/1.8.17/b1 armadillo/8.500.0
module load blas/0.3.20/b1 cmake/3.30.2/b1
module unload gcc
module load intel/2020.4 gcc/11.2.0/b1
source /gpfs/fs2/scratch/phuo_lab/INAQS_QMMM_NAMD_QCHEM_GROMACS/inaqs/gromacs-4.6.5/install/bin/GMXRC.bash

set -euo pipefail

cp ../1_Build/qmmm.top .
cp ../1_Build/qmmm.ndx .
grompp -f GROMACS.mdp -c ../2_Optimization/minimized.gro -p qmmm.top -n qmmm.ndx -o NVT.tpr

mdrun -nt ${OMP_NUM_THREADS} -v -deffnm NVT