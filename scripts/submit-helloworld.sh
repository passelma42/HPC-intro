#!/usr/bin/bash
#PBS -N helloworld.$PBS_JOBID
#PBS -l nodes=1:ppn=2
#PBS -o hellowrold.stdout.$PBS_JOBID							
#PBS -e helloworld.stderr.$PBS_JOBID
#PBS -l walltime=00:10:00
#PBS -m abe
#PBS -M pieter.asselman@ugent.be




cd $PBS_O_WORKDIR

figlet Hello World!

