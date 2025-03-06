import MDAnalysis as mda
import numpy as np
import subprocess as sp
from glob import glob

# MAKE SURE ALL NECESSARY MODULES ARE LOADED FOR GROMACS/INAQS
sp.call("echo '0' | trjconv -s *.tpr -f *.trr -o trajectory.xtc", shell=True)

# Load trajectory files
tpr_file = glob('*.tpr')[0]
u = mda.Universe(tpr_file, 'trajectory.xtc')

# Select SO2 atoms
s_atom = u.select_atoms('resname QM and name S') ##### FOR SOLVATED SYSTEMS #####
o_atoms = u.select_atoms('resname QM and name O') ##### FOR SOLVATED SYSTEMS #####
# s_atom = u.select_atoms('name S') ##### FOR NON-SOLVATED SYSTEMS #####
# o_atoms = u.select_atoms('name O') ##### FOR NON-SOLVATED SYSTEMS #####

print(f"Number of sulfur atoms: {len(s_atom)}")
print(f"Number of oxygen atoms: {len(o_atoms)}")

o1 = o_atoms[0]
o2 = o_atoms[1]
print(f"O1 atom ID: {o1.id}, O2 atom ID: {o2.id}")

s_o1_distances = []
s_o2_distances = []
angles = []
times = []

for ts in u.trajectory:
    time = ts.time
    times.append(time)
    
    s_pos = s_atom[0].position
    o1_pos = o1.position
    o2_pos = o2.position
    
    s_o1_dist = np.linalg.norm(s_pos - o1_pos)
    s_o2_dist = np.linalg.norm(s_pos - o2_pos)
    
    s_o1_distances.append(s_o1_dist)
    s_o2_distances.append(s_o2_dist)
    
    v1 = o1_pos - s_pos
    v2 = o2_pos - s_pos
    cos_angle = np.dot(v1, v2) / (np.linalg.norm(v1) * np.linalg.norm(v2))
    angle = np.arccos(np.clip(cos_angle, -1.0, 1.0)) * 180 / np.pi
    angles.append(angle)

s_o1_distances = np.array(s_o1_distances)
s_o2_distances = np.array(s_o2_distances)
angles = np.array(angles)
times = np.array(times)

print(f"Average S-O1 distance: {np.mean(s_o1_distances):.4f} nm")
print(f"Average S-O2 distance: {np.mean(s_o2_distances):.4f} nm")
print(f"Average O-S-O angle: {np.mean(angles):.2f} degrees")

# Save data to a text file (4 columns: time, S-O1, S-O2, angle)
np.savetxt(
    'so2_bond_data.txt',
    np.column_stack((times, s_o1_distances, s_o2_distances, angles)),
    header='Time(ps)\tS-O1(nm)\tS-O2(nm)\tO-S-O(deg)',
    fmt='%.6f',
    delimiter='   '
)

print("Data saved to so2_bond_data.txt")