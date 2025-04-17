#!/bin/bash
module purge
module load circ libgd/2.2.5 glibc/2.29 
module load hdf5/1.8.17/b1 armadillo/8.500.0
module load blas/0.3.20/b1 cmake/3.30.2/b1
module unload gcc
module load intel/2020.4 gcc/11.2.0/b1

source /gpfs/fs2/scratch/phuo_lab/INAQS_QMMM_NAMD_QCHEM_GROMACS/inaqs/gromacs-4.6.5/install/bin/GMXRC.bash

set -euo pipefail # Exit on error, unset variable, or pipe failure
export GMX_MAXBACKUP=-1

DIR="../1_Build/"

if [[ -f minimized.log ]]; then
    rm -rf GQSH GQSH.sav mdout.mdp minimized.{edr,log,tpr,trr}
fi
grompp -f GROMACS.mdp -c ${DIR}/qmmm.gro -p ${DIR}/qmmm.top -n ${DIR}/qmmm.ndx -o minimized.tpr
mdrun -nt 1 -v -deffnm minimized

echo
echo "Your minimized structure should now be in minimized.gro"
