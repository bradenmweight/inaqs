#!/bin/bash
#SBATCH -p debug
#SBATCH -J INAQS
#SBATCH -o outputrun_all.slurm
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=12
#SBATCH --mem 30GB

export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1

#QCHEM Environment
QCHEM_HOME=/scratch/phuo_lab/Program/Qchem
export QC=$QCHEM_HOME
source $QCHEM_HOME/qcenv.sh
ulimit -s unlimited
export QCSCRATCH="/local_scratch/$SLURM_JOB_ID/QCSCRATCH"
export QCLOCALSCR="/local_scratch/$SLURM_JOB_ID/QCLOCALSCR"
mkdir -p $QCSCRATCH
mkdir -p $QCLOCALSCR

# make a tpr file for the run
grompp -f GROMACS.mdp -c frames_with_vel*.gro -p *.top -n *.ndx -o QMMM.tpr -maxwarn 2

# run the simulation
mdrun -nt ${OMP_NUM_THREADS} -v -deffnm QMMM

