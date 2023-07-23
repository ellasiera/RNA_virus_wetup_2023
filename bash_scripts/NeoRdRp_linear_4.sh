#!/bin/sh
#SBATCH --job-name=neordrp4
#SBATCH --output=job.%j_NeoRdRp.out # output messages go here
#SBATCH --error=job.%j.err    # error messages go here
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=haswell # partition name
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=12:00:00
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12_NeoRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12_NeoRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/NeoRdRp/NeoRdRp-HMM.v1.1.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear12.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13_NeoRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13_NeoRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/NeoRdRp/NeoRdRp-HMM.v1.1.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear13.genes.faa 
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14_NeoRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14_NeoRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/NeoRdRp/NeoRdRp-HMM.v1.1.hmm /home/ampere/esieradz/Gary/RNA_viruses/Gary_wetup_scaffolds_min600bp_linear14.genes.faa
hmmsearch -o /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp_NeoRdRp.out --domtblout /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp_NeoRdRp.dom -E 0.0000000001 --incT 70 --cpu 16 /home/ampere/esieradz/bin/NeoRdRp/NeoRdRp-HMM.v1.1.hmm /home/ampere/esieradz/Gary/RNA_viruses/all_Pete_scaffolds_min600bp.genes.faa
