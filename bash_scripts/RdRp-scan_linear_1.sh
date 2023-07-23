#!/bin/sh
#SBATCH --job-name=neordrp1
#SBATCH --output=job.%j_RdRp-scan.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=cascade # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=12:00:00
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear00_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear00_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear00.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear01_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear01_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear01.genes.faa 
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear02_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear02_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear02.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear03_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear03_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear03.genes.faa
