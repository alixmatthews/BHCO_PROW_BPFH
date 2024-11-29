#!/bin/bash

#SBATCH --job-name=02a_align_mafft_bhco
#SBATCH --partition=comp01
#SBATCH --qos=comp
#SBATCH --output=02a_align_mafft_bhco_%j.txt
#SBATCH --error=02a_align_mafft_bhco_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=matthews.alix@gmail.com
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=00:45:00

module load mafft/7.505

cd /local_scratch/$SLURM_JOB_ID/

############################################################
############ CONFIGURATION INFORMATION ############
############ DIRECTORIES ############
############################################################


## MAIN DIR
PROJECT_DIR=/scrfs/storage/amatthews/20230419_projects/20230512_cowbird

cd ${PROJECT_DIR}/02_alignment_20241129

for file in *.fasta;do 
mafft --auto $file >$file.mafftaligned.fasta; 
done




