                         :-)  G  R  O  M  A  C  S  (-:

                      GROup of MAchos and Cynical Suckers

                            :-)  VERSION 4.6.5  (-:

        Contributions from Mark Abraham, Emile Apol, Rossen Apostolov, 
           Herman J.C. Berendsen, Aldert van Buuren, Pär Bjelkmar,  
     Rudi van Drunen, Anton Feenstra, Gerrit Groenhof, Christoph Junghans, 
        Peter Kasson, Carsten Kutzner, Per Larsson, Pieter Meulenhoff, 
           Teemu Murtola, Szilard Pall, Sander Pronk, Roland Schulz, 
                Michael Shirts, Alfons Sijbers, Peter Tieleman,

               Berk Hess, David van der Spoel, and Erik Lindahl.

       Copyright (c) 1991-2000, University of Groningen, The Netherlands.
         Copyright (c) 2001-2012,2013, The GROMACS development team at
        Uppsala University & The Royal Institute of Technology, Sweden.
            check out http://www.gromacs.org for more information.

         This program is free software; you can redistribute it and/or
       modify it under the terms of the GNU Lesser General Public License
        as published by the Free Software Foundation; either version 2.1
             of the License, or (at your option) any later version.

                     :-)  editconf (double precision)  (-:

Option     Filename  Type         Description
------------------------------------------------------------
  -f       qmmm.gro  Input        Structure file: gro g96 pdb tpr etc.
  -n      index.ndx  Input, Opt.  Index file
  -o qmmm-solvated.gro  Output, Opt! Structure file: gro g96 pdb etc.
-mead      mead.pqr  Output, Opt. Coordinate file for MEAD
 -bf      bfact.dat  Input, Opt.  Generic data file

Option       Type   Value   Description
------------------------------------------------------
-[no]h       bool   no      Print help info and quit
-[no]version bool   no      Print version info and quit
-nice        int    0       Set the nicelevel
-[no]w       bool   no      View output .xvg, .xpm, .eps and .pdb files
-[no]ndef    bool   no      Choose output from default index groups
-bt          enum   cubic   Box type for -box and -d: triclinic, cubic,
                            dodecahedron or octahedron
-box         vector 0 0 0   Box vector lengths (a,b,c)
-angles      vector 90 90 90  Angles between the box vectors (bc,ac,ab)
-d           real   2       Distance between the solute and the box
-[no]c       bool   yes     Center molecule in box (implied by -box and -d)
-center      vector 0 0 0   Coordinates of geometrical center
-aligncenter vector 0 0 0   Center of rotation for alignment
-align       vector 0 0 0   Align to target vector
-translate   vector 0 0 0   Translation
-rotate      vector 0 0 0   Rotation around the X, Y and Z axes in degrees
-[no]princ   bool   no      Orient molecule(s) along their principal axes
-scale       vector 1 1 1   Scaling factor
-density     real   1000    Density (g/L) of the output box achieved by
                            scaling
-[no]pbc     bool   no      Remove the periodicity (make molecule whole again)
-resnr       int    -1       Renumber residues starting from resnr
-[no]grasp   bool   no      Store the charge of the atom in the B-factor
                            field and the radius of the atom in the occupancy
                            field
-rvdw        real   0.12    Default Van der Waals radius (in nm) if one can
                            not be found in the database or if no parameters
                            are present in the topology file
-[no]sig56   bool   no      Use rmin/2 (minimum in the Van der Waals
                            potential) rather than sigma/2 
-[no]vdwread bool   no      Read the Van der Waals radii from the file
                            vdwradii.dat rather than computing the radii
                            based on the force field
-[no]atom    bool   no      Force B-factor attachment per atom
-[no]legend  bool   no      Make B-factor legend
-label       string A       Add chain label for all residues
-[no]conect  bool   no      Add CONECT records to a .pdb file when written.
                            Can only be done when a topology is present


gcq#91: "Pretend That You're Hercule Poirot" (TeX)

Read 3 atoms
Volume: 1 nm^3, corresponds to roughly 400 electrons
No velocities found
    system size :  0.252  0.000  0.074 (nm)
    diameter    :  0.252               (nm)
    center      :  0.000  0.000 -0.012 (nm)
    box vectors :  1.000  1.000  1.000 (nm)
    box angles  :  90.00  90.00  90.00 (degrees)
    box volume  :   1.00               (nm^3)
    shift       :  2.126  2.126  2.138 (nm)
new center      :  2.126  2.126  2.126 (nm)
new box vectors :  4.252  4.252  4.252 (nm)
new box angles  :  90.00  90.00  90.00 (degrees)
new box volume  :  76.87               (nm^3)
                         :-)  G  R  O  M  A  C  S  (-:

                      GROup of MAchos and Cynical Suckers

                            :-)  VERSION 4.6.5  (-:

        Contributions from Mark Abraham, Emile Apol, Rossen Apostolov, 
           Herman J.C. Berendsen, Aldert van Buuren, Pär Bjelkmar,  
     Rudi van Drunen, Anton Feenstra, Gerrit Groenhof, Christoph Junghans, 
        Peter Kasson, Carsten Kutzner, Per Larsson, Pieter Meulenhoff, 
           Teemu Murtola, Szilard Pall, Sander Pronk, Roland Schulz, 
                Michael Shirts, Alfons Sijbers, Peter Tieleman,

               Berk Hess, David van der Spoel, and Erik Lindahl.

       Copyright (c) 1991-2000, University of Groningen, The Netherlands.
         Copyright (c) 2001-2012,2013, The GROMACS development team at
        Uppsala University & The Royal Institute of Technology, Sweden.
            check out http://www.gromacs.org for more information.

         This program is free software; you can redistribute it and/or
       modify it under the terms of the GNU Lesser General Public License
        as published by the Free Software Foundation; either version 2.1
             of the License, or (at your option) any later version.

                      :-)  genbox (double precision)  (-:

Option     Filename  Type         Description
------------------------------------------------------------
 -cp qmmm-solvated.gro  Input, Opt!  Structure file: gro g96 pdb tpr etc.
 -cs     spc216.gro  Input, Opt!, Lib. Structure file: gro g96 pdb tpr etc.
 -ci     insert.gro  Input, Opt.  Structure file: gro g96 pdb tpr etc.
  -o qmmm-solvated.gro  Output       Structure file: gro g96 pdb etc.
  -p        so2.top  In/Out, Opt! Topology file

Option       Type   Value   Description
------------------------------------------------------
-[no]h       bool   no      Print help info and quit
-[no]version bool   no      Print version info and quit
-nice        int    19      Set the nicelevel
-box         vector 0 0 0   Box size
-nmol        int    0       Number of extra molecules to insert
-try         int    10      Try inserting -nmol times -try times
-seed        int    1997    Random generator seed
-vdwd        real   0.105   Default van der Waals distance
-shell       real   1       Thickness of optional water layer around solute
-maxsol      int    0       Maximum number of solvent molecules to add if
                            they fit in the box. If zero (default) this is
                            ignored
-[no]vel     bool   no      Keep velocities from input solute and solvent

Reading solute configuration
so2
Containing 3 atoms in 1 residues
Initialising van der waals distances...
Reading solvent configuration
"216H2O,WATJP01,SPC216,SPC-MODEL,300K,BOX(M)=1.86206NM,WFVG,MAR. 1984"
solvent configuration contains 648 atoms in 216 residues

Initialising van der waals distances...
Will generate new solvent configuration of 3x3x3 boxes
Generating configuration
Sorting configuration
Found 1 molecule type:
    SOL (   3 atoms):  5832 residues
Calculating Overlap...
box_margin = 0.315
Removed 8283 atoms that were outside the box
Successfully made neighbourlist
nri = 29632, nrj = 1213784
Checking Protein-Solvent overlap: tested 135 pairs, removed 6 atoms.
Checking Solvent-Solvent overlap: tested 129830 pairs, removed 1461 atoms.
Successfully made neighbourlist
nri = 53881, nrj = 10279703
Keeping 657 solvent atoms after proximity check
Added 189 molecules
Generated solvent containing 567 atoms in 189 residues
Writing generated configuration to qmmm-solvated.gro
so2

Output configuration contains 570 atoms in 190 residues
Volume                 :     76.8741 (nm^3)
Density                :     74.9326 (g/l)
Number of SOL molecules:    189   

Processing topology

gcq#204: "I've Got Two Turntables and a Microphone" (B. Hansen)


WARNING: Masses and atomic (Van der Waals) radii will be guessed
         based on residue and atom names, since they could not be
         definitively assigned from the information in your input
         files. These guessed numbers might deviate from the mass
         and radius of the atom type. Please check the output
         files if necessary.

Neighborsearching with a cut-off of 0.48
Table routines are used for coulomb: FALSE
Table routines are used for vdw:     FALSE
Cut-off's:   NS: 0.48   Coulomb: 0.48   LJ: 0.48
System total charge: 0.000
Potential shift: LJ r^-12: 0.000 r^-6 0.000, Coulomb 0.000

Grid: 12 x 12 x 12 cells
Neighborsearching with a cut-off of 1
Table routines are used for coulomb: FALSE
Table routines are used for vdw:     FALSE
Cut-off's:   NS: 1   Coulomb: 1   LJ: 1
System total charge: 0.000
Potential shift: LJ r^-12: 0.000 r^-6 0.000, Coulomb 0.000

Grid: 12 x 12 x 12 cells
                         :-)  G  R  O  M  A  C  S  (-:

                  Gromacs Runs On Most of All Computer Systems

                            :-)  VERSION 4.6.5  (-:

        Contributions from Mark Abraham, Emile Apol, Rossen Apostolov, 
           Herman J.C. Berendsen, Aldert van Buuren, Pär Bjelkmar,  
     Rudi van Drunen, Anton Feenstra, Gerrit Groenhof, Christoph Junghans, 
        Peter Kasson, Carsten Kutzner, Per Larsson, Pieter Meulenhoff, 
           Teemu Murtola, Szilard Pall, Sander Pronk, Roland Schulz, 
                Michael Shirts, Alfons Sijbers, Peter Tieleman,

               Berk Hess, David van der Spoel, and Erik Lindahl.

       Copyright (c) 1991-2000, University of Groningen, The Netherlands.
         Copyright (c) 2001-2012,2013, The GROMACS development team at
        Uppsala University & The Royal Institute of Technology, Sweden.
            check out http://www.gromacs.org for more information.

         This program is free software; you can redistribute it and/or
       modify it under the terms of the GNU Lesser General Public License
        as published by the Free Software Foundation; either version 2.1
             of the License, or (at your option) any later version.

                     :-)  make_ndx (double precision)  (-:

Option     Filename  Type         Description
------------------------------------------------------------
  -f qmmm-solvated.gro  Input, Opt!  Structure file: gro g96 pdb tpr etc.
  -n      index.ndx  Input, Opt., Mult. Index file
  -o so2_gromacs.ndx  Output       Index file

Option       Type   Value   Description
------------------------------------------------------
-[no]h       bool   no      Print help info and quit
-[no]version bool   no      Print version info and quit
-nice        int    0       Set the nicelevel
-natoms      int    0       set number of atoms (default: read from
                            coordinate or index file)


Reading structure file

gcq#204: "I've Got Two Turntables and a Microphone" (B. Hansen)

Going to read 0 old index file(s)
Analysing residue names:
There are:     1      Other residues
There are:   189      Water residues
Analysing residues not classified as Protein/DNA/RNA/Water and splitting into groups...

  0 System              :   570 atoms
  1 Other               :     3 atoms
  2 QM                  :     3 atoms
  3 Water               :   567 atoms
  4 SOL                 :   567 atoms
  5 non-Water           :     3 atoms

 nr : group       !   'name' nr name   'splitch' nr    Enter: list groups
 'a': atom        &   'del' nr         'splitres' nr   'l': list residues
 't': atom type   |   'keep' nr        'splitat' nr    'h': help
 'r': residue         'res' nr         'chain' char
 "name": group        'case': case sensitive           'q': save and quit
 'ri': residue index

> 
                         :-)  G  R  O  M  A  C  S  (-:

                  Gromacs Runs On Most of All Computer Systems

                            :-)  VERSION 4.6.5  (-:

        Contributions from Mark Abraham, Emile Apol, Rossen Apostolov, 
           Herman J.C. Berendsen, Aldert van Buuren, Pär Bjelkmar,  
     Rudi van Drunen, Anton Feenstra, Gerrit Groenhof, Christoph Junghans, 
        Peter Kasson, Carsten Kutzner, Per Larsson, Pieter Meulenhoff, 
           Teemu Murtola, Szilard Pall, Sander Pronk, Roland Schulz, 
                Michael Shirts, Alfons Sijbers, Peter Tieleman,

               Berk Hess, David van der Spoel, and Erik Lindahl.

       Copyright (c) 1991-2000, University of Groningen, The Netherlands.
         Copyright (c) 2001-2012,2013, The GROMACS development team at
        Uppsala University & The Royal Institute of Technology, Sweden.
            check out http://www.gromacs.org for more information.

         This program is free software; you can redistribute it and/or
       modify it under the terms of the GNU Lesser General Public License
        as published by the Free Software Foundation; either version 2.1
             of the License, or (at your option) any later version.

                      :-)  grompp (double precision)  (-:

Option     Filename  Type         Description
------------------------------------------------------------
  -f        nve.mdp  Input        grompp input file with MD parameters
 -po      mdout.mdp  Output       grompp input file with MD parameters
  -c qmmm-solvated.gro  Input        Structure file: gro g96 pdb tpr etc.
  -r       conf.gro  Input, Opt.  Structure file: gro g96 pdb tpr etc.
 -rb       conf.gro  Input, Opt.  Structure file: gro g96 pdb tpr etc.
  -n so2_gromacs.ndx  Input, Opt!  Index file
  -p        so2.top  Input        Topology file
 -pp  processed.top  Output, Opt. Topology file
  -o so2_gromacs.tpr  Output       Run input file: tpr tpb tpa
  -t       traj.trr  Input, Opt.  Full precision trajectory: trr trj cpt
  -e       ener.edr  Input, Opt.  Energy file
-ref     rotref.trr  In/Out, Opt. Full precision trajectory: trr trj cpt

Option       Type   Value   Description
------------------------------------------------------
-[no]h       bool   no      Print help info and quit
-[no]version bool   no      Print version info and quit
-nice        int    0       Set the nicelevel
-[no]v       bool   no      Be loud and noisy
-time        real   -1      Take frame at or first after this time.
-[no]rmvsbds bool   yes     Remove constant bonded interactions with virtual
                            sites
-maxwarn     int    0       Number of allowed warnings during input
                            processing. Not for normal use and may generate
                            unstable systems
-[no]zero    bool   no      Set parameters for bonded interactions without
                            defaults to zero instead of generating an error
-[no]renum   bool   yes     Renumber atomtypes and minimize number of
                            atomtypes


NOTE 1 [file nve.mdp]:
  Setting nstcalcenergy (100) equal to nstenergy (1)


NOTE 2 [file nve.mdp]:
  Tumbling and or flying ice-cubes: We are not removing rotation around
  center of mass in a non-periodic system. You should probably set
  comm_mode = ANGULAR.


NOTE 3 [file nve.mdp]:
  You are using a cut-off for VdW interactions with NVE, for good energy
  conservation use vdwtype = Shift (possibly with DispCorr)


NOTE 4 [file nve.mdp]:
  You are using a cut-off for electrostatics with NVE, for good energy
  conservation use coulombtype = PME-Switch or Reaction-Field-zero

Generated 330891 of the 330891 non-bonded parameter combinations
Generating 1-4 interactions: fudge = 0.5
Generated 330891 of the 330891 1-4 parameter combinations
Excluding 3 bonded neighbours molecule type 'so2_QM'
Excluding 2 bonded neighbours molecule type 'SOL'
Number of degrees of freedom in T-Coupling group rest is 1140.00

There were 4 notes

gcq#204: "I've Got Two Turntables and a Microphone" (B. Hansen)

Largest charge group radii for Van der Waals: 0.128, 0.128 nm
Largest charge group radii for Coulomb:       0.084, 0.084 nm
This run will generate roughly 25 Mb of data
                         :-)  G  R  O  M  A  C  S  (-:

                  Gromacs Runs On Most of All Computer Systems

                            :-)  VERSION 4.6.5  (-:

        Contributions from Mark Abraham, Emile Apol, Rossen Apostolov, 
           Herman J.C. Berendsen, Aldert van Buuren, Pär Bjelkmar,  
     Rudi van Drunen, Anton Feenstra, Gerrit Groenhof, Christoph Junghans, 
        Peter Kasson, Carsten Kutzner, Per Larsson, Pieter Meulenhoff, 
           Teemu Murtola, Szilard Pall, Sander Pronk, Roland Schulz, 
                Michael Shirts, Alfons Sijbers, Peter Tieleman,

               Berk Hess, David van der Spoel, and Erik Lindahl.

       Copyright (c) 1991-2000, University of Groningen, The Netherlands.
         Copyright (c) 2001-2012,2013, The GROMACS development team at
        Uppsala University & The Royal Institute of Technology, Sweden.
            check out http://www.gromacs.org for more information.

         This program is free software; you can redistribute it and/or
       modify it under the terms of the GNU Lesser General Public License
        as published by the Free Software Foundation; either version 2.1
             of the License, or (at your option) any later version.

                       :-)  mdrun (double precision)  (-:

Option     Filename  Type         Description
------------------------------------------------------------
  -s so2_gromacs.tpr  Input        Run input file: tpr tpb tpa
  -o so2_gromacs.trr  Output       Full precision trajectory: trr trj cpt
  -x so2_gromacs.xtc  Output, Opt. Compressed trajectory (portable xdr format)
-cpi so2_gromacs.cpt  Input, Opt.  Checkpoint file
-cpo so2_gromacs.cpt  Output, Opt. Checkpoint file
  -c so2_gromacs.gro  Output       Structure file: gro g96 pdb etc.
  -e so2_gromacs.edr  Output       Energy file
  -g so2_gromacs.log  Output       Log file
-dhdl so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
-field so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
-table so2_gromacs.xvg  Input, Opt.  xvgr/xmgr file
-tabletf so2_gromacs.xvg  Input, Opt.  xvgr/xmgr file
-tablep so2_gromacs.xvg  Input, Opt.  xvgr/xmgr file
-tableb so2_gromacs.xvg  Input, Opt.  xvgr/xmgr file
-rerun so2_gromacs.trr  Input, Opt.  Trajectory: xtc trr trj gro g96 pdb cpt
-tpi so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
-tpid so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
 -ei so2_gromacs.edi  Input, Opt.  ED sampling input
 -eo so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
  -j so2_gromacs.gct  Input, Opt.  General coupling stuff
 -jo so2_gromacs.gct  Output, Opt. General coupling stuff
-ffout so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
-devout so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
-runav so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
-inaqs so2_gromacs.dat  Input, Opt.  Generic data file
 -px so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
 -pf so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
 -ro so2_gromacs.xvg  Output, Opt. xvgr/xmgr file
 -ra so2_gromacs.log  Output, Opt. Log file
 -rs so2_gromacs.log  Output, Opt. Log file
 -rt so2_gromacs.log  Output, Opt. Log file
-mtx so2_gromacs.mtx  Output, Opt. Hessian matrix
 -dn so2_gromacs.ndx  Output, Opt. Index file
-multidir    so2_gromacs  Input, Opt., Mult. Run directory
-membed so2_gromacs.dat  Input, Opt.  Generic data file
 -mp so2_gromacs.top  Input, Opt.  Topology file
 -mn so2_gromacs.ndx  Input, Opt.  Index file

Option       Type   Value   Description
------------------------------------------------------
-[no]h       bool   no      Print help info and quit
-[no]version bool   no      Print version info and quit
-nice        int    0       Set the nicelevel
-deffnm      string so2_gromacs  Set the default filename for all file options
-xvg         enum   xmgrace  xvg plot formatting: xmgrace, xmgr or none
-[no]pd      bool   no      Use particle decompostion
-dd          vector 0 0 0   Domain decomposition grid, 0 is optimize
-ddorder     enum   interleave  DD node order: interleave, pp_pme or cartesian
-npme        int    -1      Number of separate nodes to be used for PME, -1
                            is guess
-nt          int    1       Total number of threads to start (0 is guess)
-ntmpi       int    0       Number of thread-MPI threads to start (0 is guess)
-ntomp       int    0       Number of OpenMP threads per MPI process/thread
                            to start (0 is guess)
-ntomp_pme   int    0       Number of OpenMP threads per MPI process/thread
                            to start (0 is -ntomp)
-pin         enum   auto    Fix threads (or processes) to specific cores:
                            auto, on or off
-pinoffset   int    0       The starting logical core number for pinning to
                            cores; used to avoid pinning threads from
                            different mdrun instances to the same core
-pinstride   int    0       Pinning distance in logical cores for threads,
                            use 0 to minimize the number of threads per
                            physical core
-gpu_id      string         List of GPU device id-s to use, specifies the
                            per-node PP rank to GPU mapping
-[no]ddcheck bool   yes     Check for all bonded interactions with DD
-rdd         real   0       The maximum distance for bonded interactions with
                            DD (nm), 0 is determine from initial coordinates
-rcon        real   0       Maximum distance for P-LINCS (nm), 0 is estimate
-dlb         enum   auto    Dynamic load balancing (with DD): auto, no or yes
-dds         real   0.8     Minimum allowed dlb scaling of the DD cell size
-gcom        int    -1      Global communication frequency
-nb          enum   auto    Calculate non-bonded interactions on: auto, cpu,
                            gpu or gpu_cpu
-[no]tunepme bool   yes     Optimize PME load between PP/PME nodes or GPU/CPU
-[no]testverlet bool   no      Test the Verlet non-bonded scheme
-[no]v       bool   yes     Be loud and noisy
-[no]compact bool   yes     Write a compact log file
-[no]seppot  bool   no      Write separate V and dVdl terms for each
                            interaction type and node to the log file(s)
-pforce      real   -1      Print all forces larger than this (kJ/mol nm)
-[no]reprod  bool   no      Try to avoid optimizations that affect binary
                            reproducibility
-cpt         real   15      Checkpoint interval (minutes)
-[no]cpnum   bool   no      Keep and number checkpoint files
-[no]append  bool   yes     Append to previous output files when continuing
                            from checkpoint instead of adding the simulation
                            part number to all file names
-nsteps      step   -2      Run this number of steps, overrides .mdp file
                            option
-maxh        real   -1      Terminate after 0.99 times this time (hours)
-multi       int    0       Do multiple simulations in parallel
-replex      int    0       Attempt replica exchange periodically with this
                            period (steps)
-nex         int    0       Number of random exchanges to carry out each
                            exchange interval (N^3 is one suggestion).  -nex
                            zero or not specified gives neighbor replica
                            exchange.
-reseed      int    -1      Seed for replica exchange, -1 is generate a seed
-[no]ionize  bool   no      Do a simulation including the effect of an X-Ray
                            bombardment on your system

Reading file so2_gromacs.tpr, VERSION 4.6.5 (double precision)
The number of OpenMP threads was set by environment variable OMP_NUM_THREADS to 1

Non-default thread affinity set, disabling internal thread affinity
Using 1 MPI thread
QM/MM calculation requested.
Layer 0
nr of QM atoms 3
QMlevel: B3LYP/3-21G


WARNING: No config file passed to mdrun via -inaqs; attempting to find the default: inaqs_config.dat

[INAQS] Begining INAQS run of type fssh
[QM_QChem] Taking scratch path to be: /local_scratch/28222381/QCSCRATCH/INAQS_1739303794_615830203
[FSSH] 0: random_seed = 1234
[FSSH] active_state = 2
starting mdrun 'QM in water'
800 steps,      0.4 ps.

WARNING: Invoking double-close fix for neighbor lists

Total Energy: 0
step 0Total Energy: -550.515
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: 8.64827e-08
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: 8.64827e-08
Total Energy: -550.515; Fractional drift: 8.64827e-08
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: 8.64827e-08
Total Energy: -550.515; Fractional drift: 8.64826e-08
Total Energy: -550.515; Fractional drift: 8.64826e-08
Total Energy: -550.514; Fractional drift: -9.51309e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -1.72965e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.515; Fractional drift: 1.21076e-06
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -6.91861e-07
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -8.64827e-08
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -9.5131e-07
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -1.81614e-06
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 8.64829e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 1.81614e-06
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -3.45931e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 4.32414e-07
Total Energy: -550.514; Fractional drift: -1.72966e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -3.45931e-07
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 1.72966e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 2.59448e-07
Total Energy: -550.514; Fractional drift: -6.05379e-07
step 100, will finish Tue Feb 11 15:50:53 2025Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 6.91863e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -1.90262e-06
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 1.47021e-06
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.515; Fractional drift: 2.59448e-06
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -8.64826e-08
Total Energy: -550.515; Fractional drift: -1.12427e-06
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.515; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -2.16207e-06
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -1.72966e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -1.47021e-06
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 8.6483e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -8.6483e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -8.6483e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -8.6483e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -8.6483e-08
Total Energy: -550.512; Fractional drift: -0
step 200, will finish Tue Feb 11 15:50:14 2025Total Energy: -550.512; Fractional drift: -1.12428e-06
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 8.64832e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 8.64831e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 8.64831e-08
Total Energy: -550.511; Fractional drift: -6.05382e-07
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -8.64832e-08
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 2.5945e-07
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -5.18899e-07
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
[FSSH] 237: Attempting hop: 2->1
[FSSH] 237: Hop, 2->1 succeeds; energy difference = -0.00397719
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.508; Fractional drift: -6.05382e-06
Total Energy: -550.512; Fractional drift: 7.26463e-06
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.51; Fractional drift: -2.85394e-06
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.51; Fractional drift: 8.64834e-08
Total Energy: -550.51; Fractional drift: -0
Total Energy: -550.511; Fractional drift: 1.47022e-06
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -8.64832e-08
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.511; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 1.90263e-06
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 8.64831e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 8.64831e-08
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: 2.59449e-07
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -8.6483e-08
Total Energy: -550.512; Fractional drift: -1.72966e-07
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.512; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 3.45932e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 8.6483e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
step 300, will finish Tue Feb 11 15:50:36 2025Total Energy: -550.513; Fractional drift: 1.12428e-06
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -8.64829e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 5.18898e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 8.64829e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -1.12428e-06
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -8.6483e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 2.94042e-06
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
[FSSH] 334: Attempting hop: 1->2
[FSSH] 334: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -1.12428e-06
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 5.18897e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -4.32414e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -3.45931e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -3.45931e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 8.64829e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 8.64829e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -3.45931e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
step 400, will finish Tue Feb 11 15:50:33 2025Total Energy: -550.514; Fractional drift: 1.21076e-06
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -8.64828e-08
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -1.21076e-06
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -8.64829e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -7.78346e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 8.6483e-08
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 1.55669e-06
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -6.91863e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: 1.72966e-07
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 1.29724e-06
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -1.38372e-06
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.513; Fractional drift: -0
Total Energy: -550.514; Fractional drift: 6.0538e-07
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
Total Energy: -550.514; Fractional drift: -0
[FSSH] 491: Attempting hop: 1->2
[FSSH] 491: Hop is frustrated---will remain on 1; trivial crossing detected |<1|2>|=0.999965, velocities reversed along derivative_coupling.
Total Energy: -550.513; Fractional drift: -1.21076e-06
Total Energy: -550.52; Fractional drift: 1.254e-05
Total Energy: -550.52; Fractional drift: 8.64818e-08
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -8.64818e-08
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
step 500, will finish Tue Feb 11 15:51:14 2025Total Energy: -550.521; Fractional drift: 2.07556e-06
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -8.64817e-08
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: 8.64817e-08
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -1.64315e-06
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -5.18891e-07
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -5.18891e-07
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: 8.64819e-08
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -1.72964e-07
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
[FSSH] 551: Attempting hop: 1->2
[FSSH] 551: Hop is frustrated---will remain on 1; velocities reversed along derivative_coupling.
Total Energy: -550.52; Fractional drift: 1.38371e-06
Total Energy: -550.522; Fractional drift: 2.8539e-06
Total Energy: -550.522; Fractional drift: -0
[FSSH] 554: Attempting hop: 1->2
[FSSH] 554: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
[FSSH] 557: Attempting hop: 1->2
[FSSH] 557: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.522; Fractional drift: -0
[FSSH] 558: Attempting hop: 1->2
[FSSH] 558: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -1.64315e-06
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: 3.45927e-07
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.522; Fractional drift: 6.91853e-07
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
step 600, will finish Tue Feb 11 15:51:13 2025Total Energy: -550.522; Fractional drift: 1.38371e-06
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -2.59444e-07
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.523; Fractional drift: 2.07556e-06
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -2.335e-06
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -1.3837e-06
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.521; Fractional drift: -0
Total Energy: -550.524; Fractional drift: 4.15112e-06
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.524; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -1.64314e-06
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: 1.21074e-06
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: 8.64813e-08
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -1.72963e-06
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
[FSSH] 686: Attempting hop: 1->2
[FSSH] 686: Hop is frustrated---will remain on 1; velocities reversed along derivative_coupling.
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: 1.72963e-07
Total Energy: -550.522; Fractional drift: -0
[FSSH] 689: Attempting hop: 1->2
[FSSH] 689: Hop is frustrated---will remain on 1; velocities reversed along derivative_coupling.
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.523; Fractional drift: 3.45926e-07
Total Energy: -550.523; Fractional drift: 8.64814e-07
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
[FSSH] 696: Attempting hop: 1->2
[FSSH] 696: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -0
Total Energy: -550.523; Fractional drift: -8.64813e-08
step 700, will finish Tue Feb 11 15:51:16 2025Total Energy: -550.522; Fractional drift: -2.7674e-06
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
[FSSH] 704: Attempting hop: 1->2
[FSSH] 704: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: -0
[FSSH] 709: Attempting hop: 1->2
[FSSH] 709: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.522; Fractional drift: -0
Total Energy: -550.522; Fractional drift: 8.64816e-08
Total Energy: -550.52; Fractional drift: -2.335e-06
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: 8.64818e-08
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -1.12426e-06
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
[FSSH] 725: Attempting hop: 1->2
[FSSH] 725: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
[FSSH] 729: Attempting hop: 1->2
[FSSH] 729: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: 1.12426e-06
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: 1.72964e-07
Total Energy: -550.52; Fractional drift: -0
[FSSH] 743: Attempting hop: 1->2
[FSSH] 743: Hop is frustrated---will remain on 1; velocities, unchanged.
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -2.59445e-07
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -1.12426e-06
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.52; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -2.24853e-06
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -6.05375e-07
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -3.45929e-07
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0
Total Energy: -550.518; Fractional drift: -0

Writing final coordinates.
step 800, remaining runtime:     0 s          
               Core t (s)   Wall t (s)        (%)
       Time:        8.950     3293.314        0.3
                         54:53
                 (ns/day)    (hour/ns)
Performance:        0.011     2284.168

gcq#146: "Everybody's Good Enough For Some Change" (LIVE)

