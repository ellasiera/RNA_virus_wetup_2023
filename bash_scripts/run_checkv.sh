#!/bin/sh
#BATCH --job-name=checkv
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

export CHECKVDB=/home/ampere/esieradz/bin/checkv-db-v1.4
export PATH=$PATH:/home/ampere/esieradz/bin/prodigal-gv:/home/ampere/esieradz/bin/hmmer-3.3.2/src/
checkv end_to_end /home/ampere/esieradz/Gary/RNA_viruses/all_scaffolds_wEvan_min600bp_wRdRp_dedup_cdhit.fasta /home/ampere/esieradz/Gary/RNA_viruses/checkV -t 16 

