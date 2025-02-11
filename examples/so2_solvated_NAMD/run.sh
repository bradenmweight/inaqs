#!/bin/bash
set -euo pipefail

readonly NAME=so2_gromacs

# don't litter back-ups all over the place
export GMX_MAXBACKUP=-1

# Copy coordinates to new name
cp so2.gro qmmm.gro

# center the molecule in a large box
editconf -f qmmm.gro -o qmmm-solvated.gro -c -d 2 -bt cubic

# pack with waters in a 1 nm shell around the molecule
genbox -cp qmmm-solvated.gro -cs spc216.gro -o qmmm-solvated.gro -shell 1.0 -p so2.top

# generate a standard index file with names like protein, water, system...
make_ndx -f qmmm-solvated.gro -o ${NAME} <<<q

# process all the files into something we can run with
grompp -f nve.mdp -c qmmm-solvated.gro -p so2.top -n ${NAME}.ndx -o ${NAME}.tpr

# do the run; must specify -nt 1
mdrun -nt 1 -v -deffnm ${NAME}
