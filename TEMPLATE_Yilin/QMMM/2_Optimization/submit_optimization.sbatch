#!/bin/bash
#SBATCH -p debug
#SBATCH -J INAQS2
#SBATCH -o output.slurm
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --mem 5GB

# rm -rf /local_scratch/$SLURM_JOB_ID/*
# rm -rf *.trr,tpr
# rm -rf *.hdf5, cs.dat
# rm -r GQSH ## remove old GQSH directory

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
bash run.sh

