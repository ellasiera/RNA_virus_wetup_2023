#!/bin/sh
#SBATCH --job-name=virrdrp4
#SBATCH --output=job.%j_ViralRdRp.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=haswell # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=12:00:00
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13.genes.faa 
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp.genes.faa
