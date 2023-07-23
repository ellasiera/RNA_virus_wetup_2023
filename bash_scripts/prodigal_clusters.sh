#!/bin/sh
#BATCH --job-name=prodigal
#SBATCH --output=job.%j.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=skylake # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=12:00:00
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/RNA_viruses/prodigal_clusters_goodseqs_output.txt -a /home/ampere/esieradz/Gary/RNA_viruses/prodigal_clusters_goodseqs_out.genes.faa -i /home/ampere/esieradz/Gary/RNA_viruses/all_scaffolds_min600bp_wRdRp_dedup_cdhit_goodseqs.fasta -d /home/ampere/esieradz/Gary/RNA_viruses/prodigal_clusters_goodseqs_out.genes.fna
