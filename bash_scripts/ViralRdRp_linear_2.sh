#!/bin/sh
#SBATCH --job-name=virrdrp2
#SBATCH --output=job.%j_ViralRdRp.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=cascade # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=12:00:00
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear04_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear04_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear04.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear05_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear05_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear05.genes.faa 
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear06_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear06_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear06.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear07_ViralRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear07_ViralRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/ViralRdRp_pHMMs/ViralRdRp_pHMMs.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear07.genes.faa
