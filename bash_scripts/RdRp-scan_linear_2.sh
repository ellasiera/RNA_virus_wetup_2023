#!/bin/sh
#SBATCH --job-name=neordrp2
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
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear04_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear04_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear04.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear05_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear05_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear05.genes.faa 
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear06_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear06_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear06.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear07_RdRp-scan.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear07_RdRp-scan.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/RdRp-scan/RdRp_HMM_profile_CLUSTALO.db /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear07.genes.faa
