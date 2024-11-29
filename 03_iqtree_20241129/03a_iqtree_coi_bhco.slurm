#!/bin/bash

#SBATCH --job-name=03a_iqtree_coi_bhco
#SBATCH --partition=comp01
#SBATCH --qos=comp
#SBATCH --output=03a_iqtree_coi_bhco_%j.txt
#SBATCH --error=03a_iqtree_coi_bhco_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=matthews.alix@gmail.com
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=01:00:00


module load iqtree/1.6.12

cd /local_scratch/$SLURM_JOB_ID/

############################################################
############ CONFIGURATION INFORMATION ############
############ DIRECTORIES ############
############################################################


## MAIN DIR
PROJECT_DIR=/scrfs/storage/amatthews/20230419_projects/20230512_cowbird

cd ${PROJECT_DIR}


iqtree -s ${PROJECT_DIR}/02_alignment_20241129/bhco_global.fasta.mafftaligned.fasta -m MFP -merit AICc -bb 1000 -nt AUTO -pre ${PROJECT_DIR}/02_alignment_20241129/bhco_COI_AICc

mkdir ${PROJECT_DIR}/03_phylogenies_20241129

mkdir ${PROJECT_DIR}/03_phylogenies_20241129/iqtree_COI_AICc

mv ${PROJECT_DIR}/02_alignment_20241129/bhco_COI_AICc.* ${PROJECT_DIR}/03_phylogenies_20241129/iqtree_COI_AICc






