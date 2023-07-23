#!/bin/sh
#SBATCH --job-name=cd-hit
#SBATCH --output=job.%j.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=haswell # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=100000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=96:00:00
/home/ampere/esieradz/bin/cdhit/cd-hit-est -i /home/ampere/esieradz/Gary/RNA_viruses/Gary_Pete_Evan_contigs_wRdRp_score70.fasta -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_Pete_Evan_contigs_wRdRp_score70_cdhit.fasta -c 0.95 -s 0.85 -T 0 -M 3000
