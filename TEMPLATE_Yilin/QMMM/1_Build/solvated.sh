#!/bin/bash
module purge
module load circ libgd/2.2.5 glibc/2.29 
module load hdf5/1.8.17/b1 armadillo/8.500.0
module load blas/0.3.20/b1 cmake/3.30.2/b1
module unload gcc
module load intel/2020.4 gcc/11.2.0/b1

source /gpfs/fs2/scratch/phuo_lab/INAQS_QMMM_NAMD_QCHEM_GROMACS/inaqs/gromacs-4.6.5/install/bin/GMXRC.bash

set -euo pipefail

# don't litter back-ups all over the place
export GMX_MAXBACKUP=-1

do_solvation=1 # 0 = no, 1 = yes
BOX_SIZE="2.0" # nm

# Copy coordinates to new name
cp input.gro qmmm.gro
cp input.top qmmm.top

# center the molecule in a large box 
editconf -f qmmm.gro -o qmmm.gro -d 1 -box ${BOX_SIZE} ${BOX_SIZE} ${BOX_SIZE} -bt cubic # create a cubic box with ${BOX_SIZE} nm padding

if [[ ${do_solvation} == 1 ]]; then
    # pack with waters in a 1 nm shell around the molecule
    genbox -cp qmmm.gro -cs spc216.gro -o qmmm.gro -box ${BOX_SIZE} ${BOX_SIZE} ${BOX_SIZE} -p qmmm.top 
fi

# generate a standard index file with names like protein, water, system...
make_ndx -f qmmm.gro -o qmmm <<<q










# cp so2.gro qmmm.gro

# # center the molecule in a large box 
# editconf -f qmmm.gro -o nonso2.gro -d 1 -bt cubic -box 2.0 2.0 2.0  # create a cubic box with 2 nm padding 

# # # pack with waters in a 1 nm shell around the molecule
# # genbox -cp qmmm.gro -cs spc216.gro -o qmmm.gro -box 2.0 2.0 2.0 -p so2.top 

# # generate a standard index file with names like protein, water, system...
# make_ndx -f nonso2.gro -o ${NAME} <<<q