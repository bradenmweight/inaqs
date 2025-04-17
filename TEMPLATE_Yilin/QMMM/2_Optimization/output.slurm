/software/modules/init/bash: line 10: unalias: sudo: not found
                         :-)  G  R  O  M  A  C  S  (-:

               GRoups of Organic Molecules in ACtion for Science

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
  -c ../1_Build//qmmm.gro  Input        Structure file: gro g96 pdb tpr etc.
  -r       conf.gro  Input, Opt.  Structure file: gro g96 pdb tpr etc.
 -rb       conf.gro  Input, Opt.  Structure file: gro g96 pdb tpr etc.
  -n ../1_Build//qmmm.ndx  Input, Opt!  Index file
  -p ../1_Build//qmmm.top  Input        Topology file
 -pp  processed.top  Output, Opt. Topology file
  -o  minimized.tpr  Output       Run input file: tpr tpb tpa
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

Generated 330891 of the 330891 non-bonded parameter combinations
Generating 1-4 interactions: fudge = 0.5
Generated 330891 of the 330891 1-4 parameter combinations
Excluding 3 bonded neighbours molecule type 'so2_QM'
Excluding 2 bonded neighbours molecule type 'SOL'
Number of degrees of freedom in T-Coupling group rest is 1272.00

NOTE 1 [file GROMACS.mdp]:
  You are using a plain Coulomb cut-off, which might produce artifacts.
  You might want to consider using PME electrostatics.



There was 1 note

gcq#21: "What Kind Of Guru are You, Anyway ?" (F. Zappa)

Largest charge group radii for Van der Waals: 0.128, 0.128 nm
Largest charge group radii for Coulomb:       0.084, 0.084 nm
This run will generate roughly 0 Mb of data
                         :-)  G  R  O  M  A  C  S  (-:

               GRoups of Organic Molecules in ACtion for Science

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
  -s  minimized.tpr  Input        Run input file: tpr tpb tpa
  -o  minimized.trr  Output       Full precision trajectory: trr trj cpt
  -x  minimized.xtc  Output, Opt. Compressed trajectory (portable xdr format)
-cpi  minimized.cpt  Input, Opt.  Checkpoint file
-cpo  minimized.cpt  Output, Opt. Checkpoint file
  -c  minimized.gro  Output       Structure file: gro g96 pdb etc.
  -e  minimized.edr  Output       Energy file
  -g  minimized.log  Output       Log file
-dhdl minimized.xvg  Output, Opt. xvgr/xmgr file
-field  minimized.xvg  Output, Opt. xvgr/xmgr file
-table  minimized.xvg  Input, Opt.  xvgr/xmgr file
-tabletf  minimized.xvg  Input, Opt.  xvgr/xmgr file
-tablep  minimized.xvg  Input, Opt.  xvgr/xmgr file
-tableb  minimized.xvg  Input, Opt.  xvgr/xmgr file
-rerun  minimized.xtc  Input, Opt.  Trajectory: xtc trr trj gro g96 pdb cpt
-tpi  minimized.xvg  Output, Opt. xvgr/xmgr file
-tpid minimized.xvg  Output, Opt. xvgr/xmgr file
 -ei  minimized.edi  Input, Opt.  ED sampling input
 -eo  minimized.xvg  Output, Opt. xvgr/xmgr file
  -j  minimized.gct  Input, Opt.  General coupling stuff
 -jo  minimized.gct  Output, Opt. General coupling stuff
-ffout  minimized.xvg  Output, Opt. xvgr/xmgr file
-devout  minimized.xvg  Output, Opt. xvgr/xmgr file
-runav  minimized.xvg  Output, Opt. xvgr/xmgr file
-inaqs  minimized.dat  Input, Opt.  Generic data file
 -px  minimized.xvg  Output, Opt. xvgr/xmgr file
 -pf  minimized.xvg  Output, Opt. xvgr/xmgr file
 -ro  minimized.xvg  Output, Opt. xvgr/xmgr file
 -ra  minimized.log  Output, Opt. Log file
 -rs  minimized.log  Output, Opt. Log file
 -rt  minimized.log  Output, Opt. Log file
-mtx  minimized.mtx  Output, Opt. Hessian matrix
 -dn  minimized.ndx  Output, Opt. Index file
-multidir minimized  Input, Opt., Mult. Run directory
-membed  minimized.dat  Input, Opt.  Generic data file
 -mp  minimized.top  Input, Opt.  Topology file
 -mn  minimized.ndx  Input, Opt.  Index file

Option       Type   Value   Description
------------------------------------------------------
-[no]h       bool   no      Print help info and quit
-[no]version bool   no      Print version info and quit
-nice        int    0       Set the nicelevel
-deffnm      string minimized  Set the default filename for all file options
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

Reading file minimized.tpr, VERSION 4.6.5 (double precision)
The number of OpenMP threads was set by environment variable OMP_NUM_THREADS to 1

Non-default thread affinity set, disabling internal thread affinity
Using 1 MPI thread
QM/MM calculation requested.
Layer 0
nr of QM atoms 3
QMlevel: B3LYP/6-31G*


WARNING: No config file passed to mdrun via -inaqs; attempting to find the default: inaqs_config.dat

[INAQS] Begining INAQS run of type bomd
[QM_QChem] Taking scratch path to be: /local_scratch/28854745/QCSCRATCH/INAQS_1744914319_212903236

Steepest Descents:
   Tolerance (Fmax)   =  1.00000e+03
   Number of steps    =          500

WARNING: Invoking double-close fix for neighbor lists

Step=    0, Dmax= 1.0e-02 nm, Epot= -1.44661e+06 Fmax= 1.73118e+03, atom= 601
Step=    1, Dmax= 1.0e-02 nm, Epot= -1.44685e+06 Fmax= 1.68449e+03, atom= 1
Step=    2, Dmax= 1.2e-02 nm, Epot= -1.44692e+06 Fmax= 1.78865e+04, atom= 1
Step=    3, Dmax= 1.4e-02 nm, Epot= -1.44702e+06 Fmax= 6.31676e+03, atom= 1
Step=    4, Dmax= 1.7e-02 nm, Epot= -1.44693e+06 Fmax= 2.08467e+04, atom= 1Step=    5, Dmax= 8.6e-03 nm, Epot= -1.44707e+06 Fmax= 4.12498e+03, atom= 1
Step=    6, Dmax= 1.0e-02 nm, Epot= -1.44706e+06 Fmax= 1.17327e+04, atom= 1Step=    7, Dmax= 5.2e-03 nm, Epot= -1.44710e+06 Fmax= 2.93100e+03, atom= 1
Step=    8, Dmax= 6.2e-03 nm, Epot= -1.44712e+06 Fmax= 5.69635e+03, atom= 1
Step=    9, Dmax= 7.5e-03 nm, Epot= -1.44714e+06 Fmax= 4.79393e+03, atom= 1
Step=   10, Dmax= 9.0e-03 nm, Epot= -1.44715e+06 Fmax= 7.48284e+03, atom= 1
Step=   11, Dmax= 1.1e-02 nm, Epot= -1.44717e+06 Fmax= 7.10530e+03, atom= 1
Step=   12, Dmax= 1.3e-02 nm, Epot= -1.44717e+06 Fmax= 9.82268e+03, atom= 1Step=   13, Dmax= 6.4e-03 nm, Epot= -1.44721e+06 Fmax= 1.76622e+03, atom= 1
Step=   14, Dmax= 7.7e-03 nm, Epot= -1.44722e+06 Fmax= 1.02000e+04, atom= 1
Step=   15, Dmax= 9.3e-03 nm, Epot= -1.44727e+06 Fmax= 4.99539e+03, atom= 1
Step=   16, Dmax= 1.1e-02 nm, Epot= -1.44724e+06 Fmax= 1.13113e+04, atom= 1Step=   17, Dmax= 5.6e-03 nm, Epot= -1.44729e+06 Fmax= 2.56293e+03, atom= 1
Step=   18, Dmax= 6.7e-03 nm, Epot= -1.44730e+06 Fmax= 7.06842e+03, atom= 1
Step=   19, Dmax= 8.0e-03 nm, Epot= -1.44732e+06 Fmax= 4.45202e+03, atom= 1
Step=   20, Dmax= 9.6e-03 nm, Epot= -1.44731e+06 Fmax= 9.13364e+03, atom= 1Step=   21, Dmax= 4.8e-03 nm, Epot= -1.44734e+06 Fmax= 1.87557e+03, atom= 1
Step=   22, Dmax= 5.8e-03 nm, Epot= -1.44735e+06 Fmax= 7.01734e+03, atom= 1
Step=   23, Dmax= 6.9e-03 nm, Epot= -1.44738e+06 Fmax= 3.20375e+03, atom= 1
Step=   24, Dmax= 8.3e-03 nm, Epot= -1.44736e+06 Fmax= 9.54144e+03, atom= 1Step=   25, Dmax= 4.2e-03 nm, Epot= -1.44739e+06 Fmax= 2.49071e+03, atom= 1
Step=   26, Dmax= 5.0e-03 nm, Epot= -1.44740e+06 Fmax= 4.42413e+03, atom= 1
Step=   27, Dmax= 6.0e-03 nm, Epot= -1.44741e+06 Fmax= 4.01985e+03, atom= 1
Step=   28, Dmax= 7.2e-03 nm, Epot= -1.44742e+06 Fmax= 5.88014e+03, atom= 1
Step=   29, Dmax= 8.6e-03 nm, Epot= -1.44743e+06 Fmax= 6.02911e+03, atom= 1
Step=   30, Dmax= 1.0e-02 nm, Epot= -1.44742e+06 Fmax= 7.83513e+03, atom= 1Step=   31, Dmax= 5.2e-03 nm, Epot= -1.44745e+06 Fmax= 1.25529e+03, atom= 3
Step=   32, Dmax= 6.2e-03 nm, Epot= -1.44746e+06 Fmax= 8.23398e+03, atom= 1
Step=   33, Dmax= 7.5e-03 nm, Epot= -1.44749e+06 Fmax= 3.77539e+03, atom= 1
Step=   34, Dmax= 8.9e-03 nm, Epot= -1.44747e+06 Fmax= 9.45937e+03, atom= 1Step=   35, Dmax= 4.5e-03 nm, Epot= -1.44750e+06 Fmax= 2.43784e+03, atom= 1
Step=   36, Dmax= 5.4e-03 nm, Epot= -1.44750e+06 Fmax= 5.07726e+03, atom= 1
Step=   37, Dmax= 6.4e-03 nm, Epot= -1.44752e+06 Fmax= 4.02920e+03, atom= 1
Step=   38, Dmax= 7.7e-03 nm, Epot= -1.44751e+06 Fmax= 6.68404e+03, atom= 1Step=   39, Dmax= 3.9e-03 nm, Epot= -1.44753e+06 Fmax= 1.23291e+03, atom= 1
Step=   40, Dmax= 4.6e-03 nm, Epot= -1.44754e+06 Fmax= 5.97114e+03, atom= 1
Step=   41, Dmax= 5.6e-03 nm, Epot= -1.44756e+06 Fmax= 2.36525e+03, atom= 1
Step=   42, Dmax= 6.7e-03 nm, Epot= -1.44755e+06 Fmax= 7.80083e+03, atom= 1Step=   43, Dmax= 3.3e-03 nm, Epot= -1.44757e+06 Fmax= 2.34486e+03, atom= 1
Step=   44, Dmax= 4.0e-03 nm, Epot= -1.44757e+06 Fmax= 3.22470e+03, atom= 1
Step=   45, Dmax= 4.8e-03 nm, Epot= -1.44758e+06 Fmax= 3.61234e+03, atom= 1
Step=   46, Dmax= 5.8e-03 nm, Epot= -1.44759e+06 Fmax= 4.35718e+03, atom= 1
Step=   47, Dmax= 6.9e-03 nm, Epot= -1.44759e+06 Fmax= 5.36403e+03, atom= 1
Step=   48, Dmax= 8.3e-03 nm, Epot= -1.44759e+06 Fmax= 5.91859e+03, atom= 1
Step=   49, Dmax= 1.0e-02 nm, Epot= -1.44758e+06 Fmax= 7.75683e+03, atom= 1Step=   50, Dmax= 5.0e-03 nm, Epot= -1.44762e+06 Fmax= 1.16699e+03, atom= 1
Step=   51, Dmax= 6.0e-03 nm, Epot= -1.44761e+06 Fmax= 7.58283e+03, atom= 1Step=   52, Dmax= 3.0e-03 nm, Epot= -1.44763e+06 Fmax= 2.48864e+03, atom= 1
Step=   53, Dmax= 3.6e-03 nm, Epot= -1.44763e+06 Fmax= 2.53692e+03, atom= 1
Step=   54, Dmax= 4.3e-03 nm, Epot= -1.44764e+06 Fmax= 3.37025e+03, atom= 1
Step=   55, Dmax= 5.2e-03 nm, Epot= -1.44764e+06 Fmax= 3.99773e+03, atom= 1
Step=   56, Dmax= 6.2e-03 nm, Epot= -1.44765e+06 Fmax= 4.52873e+03, atom= 1
Step=   57, Dmax= 7.4e-03 nm, Epot= -1.44764e+06 Fmax= 5.90596e+03, atom= 1Step=   58, Dmax= 3.7e-03 nm, Epot= -1.44766e+06 Fmax= 8.17932e+02, atom= 1

writing lowest energy coordinates.

Steepest Descents converged to Fmax < 1000 in 59 steps
Potential Energy  = -1.44766140620139e+06
Maximum force     =  8.17931966625844e+02 on atom 1
Norm of force     =  9.26011072520188e+01

gcq#165: "Welcome to the Power Age" (2 Unlimited)


Your minimized structure should now be in minimized.gro
