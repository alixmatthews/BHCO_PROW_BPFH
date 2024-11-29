#!/bin/bash

#SBATCH --job-name=01b_mtgene_cat_cowbird
#SBATCH --partition=comp01
#SBATCH --output=01b_mtgene_cat_cowbird_%j.txt
#SBATCH --error=01b_mtgene_cat_cowbird_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=alix.matthews@smail.astate.edu  
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --time=00:09:00

module load python/2.7.15

cd /local_scratch/$SLURM_JOB_ID/

############################################################
############ CONFIGURATION INFORMATION ############
############ DIRECTORIES ############
############################################################


## MAIN DIR
PROJECT_DIR=/scrfs/storage/amatthews/20230419_projects/20230512_cowbird/01_aTRAM_mtgenome_20230530

cd ${PROJECT_DIR}

python gene_cat.py "/scrfs/storage/amatthews/20230419_projects/20230512_cowbird/01_aTRAM_mtgenome_20230530" "/scrfs/storage/amatthews/20230419_projects/20230512_cowbird/01_aTRAM_mtgenome_20230530/*_out/*_mtgenome/stitch/*" "mt_genes.txt"





