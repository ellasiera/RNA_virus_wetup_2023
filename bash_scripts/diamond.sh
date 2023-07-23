#!/bin/sh
#SBATCH --job-name=dmnd
#SBATCH --output=job.%j_ViralRdRp.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=haswell # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=24:00:00
/softs/manual/ampere/diamond blastp -q /home/ampere/esieradz/Gary/RNA_viruses/vOTUs_to_classify_RdRp.faa -d /home/ampere/esieradz/Gary/RNA_viruses/RdRp_RefSeq.dmnd -o RdRp_Gary_vs_RefSeq.tsv --sensitive --outfmt 6 qseqid sseqid bitscore pident evalue length stitle
