#!/bin/bash
#PBS -V
#PBS -j oe
###PBS -l nodes=1:ppn=32:xe
#PBS -l walltime=00:10:00
#PBS -q debug
#PBS -l procs=32

 
#source /opt/modules/default/init/bash
#module list

#/u/sciteam/marksant/openmpi/installation/bin/orte-dvm --debug-devel --report-uri /u/sciteam/marksant/dvm-uri --mca oob_base_verbose 100 --mca ess_base_verbose 100
 
#cd /u/sciteam/marksant/scratch/radical.pilot.sandbox/rp.session.netbook.mark.016521.0000-pilot.0000
#/bin/bash -l pilot_bootstrapper.sh -b radical.utils-0.8.tar.gz:saga-python-0.27.tar.gz:radical.pilot-v0.23-416-g1aea91c-devel.tar.gz -c 32 -d 5 -g /scratch/sciteam/marksant/radical.pilot.sandbox/ve_bw -j ORTE -k APRUN -l TORQUE -m ec2-54-221-194-147.compute-1.amazonaws.com:24242 -n radicalpilot -o POPEN -p pilot.0000 -q CONTINUOUS -r 30 -s rp.session.netbook.mark.016521.0000 -t multicore -u create -v local -e "module load bw-python"

cd /u/sciteam/marksant/scratch/radical.pilot.sandbox/rp.session.netbook.mark.016524.0010-pilot.0000
/bin/bash -l pilot_bootstrapper.sh -b radical.utils-0.8.tar.gz:saga-python-0.27.tar.gz:radical.pilot-v0.23-416-g1aea91c-devel2.tar.gz -c 32 -d 5 -g /scratch/sciteam/marksant/radical.pilot.sandbox/ve_bw -j ORTE -k APRUN -l TORQUE -m ec2-54-221-194-147.compute-1.amazonaws.com:24242 -n radicalpilot -o POPEN -p pilot.0000 -q CONTINUOUS -r 30 -s rp.session.netbook.mark.016524.0010 -t multicore -u create -v local -e module list -e "module load bw-python"
