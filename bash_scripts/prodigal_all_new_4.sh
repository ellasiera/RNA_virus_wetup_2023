#!/bin/sh
#SBATCH --job-name=prod4
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
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12.prodigal -p meta -i /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12.fasta -a /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12.genes.faa -d /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13.prodigal -p meta -i /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13.fasta -a /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13.genes.faa -d /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14.prodigal -p meta -i /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14.fasta -a /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14.genes.faa -d /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp.prodigal -p meta -i /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp.fasta -a /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp.genes.faa -d /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp.genes.fna
