#!/bin/sh
#SBATCH --job-name=bbmap3
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
/home/ampere/esieradz/bin/bbmap/bbwrap.sh ref=/home/ampere/esieradz/Gary/RNA_viruses/Gary_Pete_Evan_contigs_wRdRp_score70_cdhit.fasta inlist=/home/ampere/esieradz/Gary/RNA_viruses/batch3_in1.txt in2list=/home/ampere/esieradz/Gary/RNA_viruses/batch3_in2.txt outmlist=/home/ampere/esieradz/Gary/RNA_viruses/batch3_out.txt minid=0.9
