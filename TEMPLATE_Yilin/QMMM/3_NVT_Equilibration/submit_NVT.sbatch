#!/bin/bash
#SBATCH -p action
#SBATCH -J NVT
#SBATCH -o outputrun_all.slurm2
#SBATCH -t 5-00:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=24
#SBATCH --mem 60GB

# rm -rf /local_scratch/$SLURM_JOB_ID/*
# rm -rf *.trr,tpr
# rm -rf *.hdf5, cs.dat
# rm -r GQSH ## remove old GQSH directory
# rm -rf mdout.mdp

export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=22

#QCHEM Environment
QCHEM_HOME=/scratch/phuo_lab/Program/Qchem
export QC=$QCHEM_HOME
source $QCHEM_HOME/qcenv.sh
ulimit -s unlimited
export QCSCRATCH="/local_scratch/$SLURM_JOB_ID/QCSCRATCH"
export QCLOCALSCR="/local_scratch/$SLURM_JOB_ID/QCLOCALSCR"
mkdir -p $QCSCRATCH
mkdir -p $QCLOCALSCR

bash run_NVT.sh

