#!/bin/sh
#SBATCH --job-name=grepf
#SBATCH --output=job.%j.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=haswell # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=4:00:00
grep -f /home/ampere/esieradz/Gary/RNA_viruses/Evan_Gary_Pete_vOTU.hdrs /home/ampere/esieradz/Gary/RNA_viruses/RdRp-scan_ViralRdRp_dom_besthit.tsv > RdRp-scan_ViralRdRp_dom_besthit_vOTUs.tsv
