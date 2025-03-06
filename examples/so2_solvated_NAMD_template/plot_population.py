import numpy as np
from matplotlib import pyplot as plt
import MDAnalysis as mda
from glob import glob

def parse_complex_number(s):
    """Parse a complex number from a string in the format (+a,+b)."""
    s = s.strip('()')
    real, imag = s.split(',')
    return complex(float(real), float(imag))

# Read trajectory data
u     = mda.Universe(glob('*.tpr')[0], 'trajectory.xtc')
times = 1000*np.array([ ts.time for ts in u.trajectory ])

wfn_file = open("cs.dat","r").readlines()
NSTEPS  = len(wfn_file)
NSTATES = len( wfn_file[0].split() )  - 1
ACTIVE_STATE = np.zeros( (NSTEPS), dtype=int )
WFN          = np.zeros( (NSTEPS, NSTATES), dtype=np.complex128 )
for count, line in enumerate( wfn_file ):
    line = line.split()
    ACTIVE_STATE[count] = int( line[0] )
    for i in range(1, len(line)):
        WFN[count,i-1] = parse_complex_number( line[i] )

POPULATION = np.abs(WFN)**2
plt.plot( times, ACTIVE_STATE-1, c="black", label="Active State" )
plt.plot( times, POPULATION[:,0], c="red", label="POP 0" )
plt.plot( times, POPULATION[:,1], c="blue", label="POP 1" )
plt.xlabel("Time (fs)", fontsize=15)
plt.ylabel("Population", fontsize=15)
plt.xlim(times[0], times[-1])
plt.ylim(0, 1)
plt.legend()
plt.savefig("population.jpg", dpi=300)