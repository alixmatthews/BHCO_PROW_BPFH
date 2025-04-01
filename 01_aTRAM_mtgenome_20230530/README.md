### Files in this directory

- `mt_ref.fasta`: reference mitogenome fasta file, needed to run `01_aTRAM_mtgenome_cowbird_20230530.slurm`
- `01_aTRAM_mtgenome_cowbird_20230530.slurm`: run aTRAM and extract all mitogenes from .fastq files
- `gene_cat.py`: python script to concatenate fasta files representing the same gene from aTRAM output (runs in `01b_mtgene_cat_cowbird.slurm`)
- `mt_genes.txt`: list of mito genes, needed for `01b_mtgene_cat_cowbird.slurm`
- `01b_mtgene_cat_cowbird.slurm`: slurm to `gene_cat.py`
