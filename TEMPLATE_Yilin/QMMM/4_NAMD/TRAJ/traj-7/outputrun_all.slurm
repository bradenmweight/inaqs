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

                      :-)  grompp (double precision)  (-:

Option     Filename  Type         Description
------------------------------------------------------------
  -f    GROMACS.mdp  Input        grompp input file with MD parameters
 -po      mdout.mdp  Output       grompp input file with MD parameters
  -c frames_with_vel7.gro  Input        Structure file: gro g96 pdb tpr etc.
  -r       conf.gro  Input, Opt.  Structure file: gro g96 pdb tpr etc.
 -rb       conf.gro  Input, Opt.  Structure file: gro g96 pdb tpr etc.
  -n       qmmm.ndx  Input, Opt!  Index file
  -p       qmmm.top  Input        Topology file
 -pp  processed.top  Output, Opt. Topology file
  -o       QMMM.tpr  Output       Run input file: tpr tpb tpa
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
-maxwarn     int    2       Number of allowed warnings during input
                            processing. Not for normal use and may generate
                            unstable systems
-[no]zero    bool   no      Set parameters for bonded interactions without
                            defaults to zero instead of generating an error
-[no]renum   bool   yes     Renumber atomtypes and minimize number of
                            atomtypes


NOTE 1 [file GROMACS.mdp]:
  Setting nstcalcenergy (100) equal to nstenergy (1)


WARNING 1 [file GROMACS.mdp]:
  The switching range for PME-Switch should be 5% or less, energy
  conservation will be good anyhow, since ewald_rtol = 1e-05


NOTE 2 [file GROMACS.mdp]:
  For energy conservation with switch/shift potentials, rlist should be 0.1
  to 0.3 nm larger than rcoulomb.


NOTE 3 [file GROMACS.mdp]:
  You are using a cut-off for VdW interactions with NVE, for good energy
  conservation use vdwtype = Shift (possibly with DispCorr)

Generated 330891 of the 330891 non-bonded parameter combinations
Generating 1-4 interactions: fudge = 0.5
Generated 330891 of the 330891 1-4 parameter combinations
Excluding 3 bonded neighbours molecule type 'so2_QM'
Excluding 2 bonded neighbours molecule type 'SOL'
Number of degrees of freedom in T-Coupling group rest is 1272.00

WARNING 2 [file GROMACS.mdp]:
  The sum of the two largest charge group radii (2.626236) is larger than
  rlist (0.900000)


Estimate for the relative computational load of the PME mesh part: 0.44

There were 3 notes

There were 2 warnings

gcq#90: "Once Again Let Me Do This" (Urban Dance Squad)

Largest charge group radii for Van der Waals: 1.311, 1.301 nm
Largest charge group radii for Coulomb:       1.315, 1.311 nm
Calculating fourier grid dimensions for X Y Z
Using a fourier grid of 20x20x20, spacing 0.100 0.100 0.100
This run will generate roughly 27 Mb of data
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

                       :-)  mdrun (double precision)  (-:

Option     Filename  Type         Description
------------------------------------------------------------
  -s       QMMM.tpr  Input        Run input file: tpr tpb tpa
  -o       QMMM.trr  Output       Full precision trajectory: trr trj cpt
  -x       QMMM.xtc  Output, Opt. Compressed trajectory (portable xdr format)
-cpi       QMMM.cpt  Input, Opt.  Checkpoint file
-cpo       QMMM.cpt  Output, Opt. Checkpoint file
  -c       QMMM.gro  Output       Structure file: gro g96 pdb etc.
  -e       QMMM.edr  Output       Energy file
  -g       QMMM.log  Output       Log file
-dhdl      QMMM.xvg  Output, Opt. xvgr/xmgr file
-field     QMMM.xvg  Output, Opt. xvgr/xmgr file
-table     QMMM.xvg  Input, Opt.  xvgr/xmgr file
-tabletf   QMMM.xvg  Input, Opt.  xvgr/xmgr file
-tablep    QMMM.xvg  Input, Opt.  xvgr/xmgr file
-tableb    QMMM.xvg  Input, Opt.  xvgr/xmgr file
-rerun     QMMM.xtc  Input, Opt.  Trajectory: xtc trr trj gro g96 pdb cpt
-tpi       QMMM.xvg  Output, Opt. xvgr/xmgr file
-tpid      QMMM.xvg  Output, Opt. xvgr/xmgr file
 -ei       QMMM.edi  Input, Opt.  ED sampling input
 -eo       QMMM.xvg  Output, Opt. xvgr/xmgr file
  -j       QMMM.gct  Input, Opt.  General coupling stuff
 -jo       QMMM.gct  Output, Opt. General coupling stuff
-ffout     QMMM.xvg  Output, Opt. xvgr/xmgr file
-devout    QMMM.xvg  Output, Opt. xvgr/xmgr file
-runav     QMMM.xvg  Output, Opt. xvgr/xmgr file
-inaqs     QMMM.dat  Input, Opt.  Generic data file
 -px       QMMM.xvg  Output, Opt. xvgr/xmgr file
 -pf       QMMM.xvg  Output, Opt. xvgr/xmgr file
 -ro       QMMM.xvg  Output, Opt. xvgr/xmgr file
 -ra       QMMM.log  Output, Opt. Log file
 -rs       QMMM.log  Output, Opt. Log file
 -rt       QMMM.log  Output, Opt. Log file
-mtx       QMMM.mtx  Output, Opt. Hessian matrix
 -dn       QMMM.ndx  Output, Opt. Index file
-multidir      QMMM  Input, Opt., Mult. Run directory
-membed    QMMM.dat  Input, Opt.  Generic data file
 -mp       QMMM.top  Input, Opt.  Topology file
 -mn       QMMM.ndx  Input, Opt.  Index file

Option       Type   Value   Description
------------------------------------------------------
-[no]h       bool   no      Print help info and quit
-[no]version bool   no      Print version info and quit
-nice        int    0       Set the nicelevel
-deffnm      string QMMM    Set the default filename for all file options
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

Reading file QMMM.tpr, VERSION 4.6.5 (double precision)
The number of OpenMP threads was set by environment variable OMP_NUM_THREADS to 1

Non-default thread affinity set, disabling internal thread affinity
Using 1 MPI thread
QM/MM calculation requested.
Layer 0
nr of QM atoms 3
QMlevel: B3LYP/6-31G


WARNING: No config file passed to mdrun via -inaqs; attempting to find the default: inaqs_config.dat

[INAQS] Begining INAQS run of type fssh
[QM_QChem] Taking scratch path to be: /local_scratch/28876934/QCSCRATCH/INAQS_1745162443_191349190
[FSSH] 0: random_seed = 1234
[FSSH] active_state = 2
starting mdrun 'QM in water'
800 steps,      0.4 ps.

WARNING: Invoking double-close fix for neighbor lists

Total Energy: 0
step 0Total Energy: -550.725
Total Energy: -550.725; Fractional drift: -8.64497e-08
Total Energy: -550.725; Fractional drift: -0
Total Energy: -550.725; Fractional drift: -0
