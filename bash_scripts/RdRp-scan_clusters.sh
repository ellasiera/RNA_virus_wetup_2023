#!/bin/sh
#SBATCH --job-name=neordrp
#SBATCH --output=job.%j.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=cascade # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=12:00:00
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/RdRp-scan_clusters_output.txt -E 0.001 --tblout /home/ampere/esieradz/Gary/RNA_viruses/RdRp-scan_clusters_output.tsv --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/prodigal_clusters_out.genes.faa
