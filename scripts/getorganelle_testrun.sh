#!/bin/bash

#PBS -N getorganelle.$PBS_JOBID 		# job name
#PBS -l nodes=1:ppn=8				# single node:all cores
#PBS -o getorganelle.stdout.$PBS_JOBID		# stdandard output	
#PBS -e getorganelle.stderr.$PBS_JOBID		# stdandard error
#PBS -l walltime=48:00:00			# max 48h wall time
#PBS -l mem=26GB				# max memory
#PBS -m abe					# email aborts, begins, ends
#PBS -M pieter.asselman@ugent.be		# mail adress

#Load necessary modules
ml GetOrganelle/1.7.5.3-foss-2021b

##go to jobfolder, this is the flolder from where you call and launch your script

cd $PBS_O_WORKDIR

##commands to run specific software

get_organelle_from_reads.py -1 Arabidopsis_simulated.1.fq.gz -2 Arabidopsis_simulated.2.fq.gz -t 8 -o Arabidopsis_simulated.plastome.$PBS_JOBID -F embplant_pt -R 10

# Flag	Value				Illustration
# -1	Arabidopsis_simulated.1.fq.gz	Input file with the forward paired-end reads (*.fq/.gz/.tar.gz)
# -2	Arabidopsis_simulated.2.fq.gz	Input file with the reverse paired-end reads (*.fq/.gz/.tar.gz)
# -t	1				Maximum threads to use. Default: 1
# -o	Arabidopsis_simulated.plastome	Output directory
# -F	embplant_pt			Target organelle genome type(s)
# -R	10				Maximum extension rounds



