#!/bin/bash
# This script is used to extract frames from a GROMACS trajectory file
# and save them in a separate file for further analysis.
# It uses the trjconv command from GROMACS to perform the extraction.
# The script assumes that the trajectory file is in the pararent directory
# and that the necessary GROMACS environment variables are set.
module purge
module load circ libgd/2.2.5 glibc/2.29 
module load hdf5/1.8.17/b1 armadillo/8.500.0
module load blas/0.3.20/b1 cmake/3.30.2/b1
module unload gcc
module load intel/2020.4 gcc/11.2.0/b1
source /gpfs/fs2/scratch/phuo_lab/INAQS_QMMM_NAMD_QCHEM_GROMACS/inaqs/gromacs-4.6.5/install/bin/GMXRC.bash

## output trajectory file
echo "0" | trjconv -s *.tpr -f *.trr -o output.xtc

## center the trajectory
echo "0" |trjconv -s *.tpr -f output.xtc -o centered.xtc -center
##### When prompted, select the appropriate group to center and output things

## large system needs to consider them:
# ## re-wrap the molecules back into the primary box 
##################### BMW: COME BACK TO THIS
echo "0" | trjconv -s *.tpr -f centered.xtc -o wrapped.xtc -pbc mol
##################### BMW: COME BACK TO THIS

# ## avoid molecules across periodic boundaries
##################### BMW: COME BACK TO THIS
echo "0" | trjconv -s *.tpr -f wrapped.xtc -o whole.xtc -pbc whole 
rm  -rf wrapped.xtc centered.xtc
##################### BMW: COME BACK TO THIS

if [ -f frames ]; then
    rm -r frames
fi
mkdir frames
cd frames
#extract frames from the trajectory with time step of 0.01 ps
echo "0" | trjconv -s ../*.tpr -f ../*.trr -o frames_with_vel.gro -vel -sep -dt 0.01

