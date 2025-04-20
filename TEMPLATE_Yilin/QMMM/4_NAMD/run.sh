#!/bin/bash
module purge
module load circ libgd/2.2.5 glibc/2.29 
module load hdf5/1.8.17/b1 armadillo/8.500.0
module load blas/0.3.20/b1 cmake/3.30.2/b1
module unload gcc
module load intel/2020.4 gcc/11.2.0/b1
source /gpfs/fs2/scratch/phuo_lab/INAQS_QMMM_NAMD_QCHEM_GROMACS/inaqs/gromacs-4.6.5/install/bin/GMXRC.bash

if [ -d "TRAJ" ]; then
    rm -r TRAJ
fi
mkdir TRAJ # Outer directory
cd TRAJ

NSKIP=5 # SKIP FIRST 5 FRAMES FOR EQUILIBRATION
START=0 # How many after NSKIP to start
STOP=10 # Included
for (( i=$(($NSKIP + $START)); i<$(($STOP + 1)); i++ )); do
    mkdir -p traj-${i} # create directory for each frame
    cd traj-${i}
    cp ../../../3_NVT_Equilibration/frames/frames_with_vel${i}.gro frames_with_vel${i}.gro 
    cp ../../../3_NVT_Equilibration/*.top  .
    cp ../../../3_NVT_Equilibration/*.ndx  .
    cp ../../GROMACS.mdp .
    cp ../../submit_NAMD.sbatch  .
    cp ../../inaqs_config.dat .
    
    sbatch submit_NAMD.sbatch #-p reserved --reservation=phuo_20250312  # submit the job
    # echo "0" | trjconv -s *.tpr -f *.trr -o output.xtc
    cd ..
done
echo "All frames have been processed."






