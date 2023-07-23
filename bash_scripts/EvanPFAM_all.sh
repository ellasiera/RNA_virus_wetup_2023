#!/bin/sh
#SBATCH --job-name=evanrdrp
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
hmmscan -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf/Evan_Pfam_RdRp_output.txt -E 10 --domtblout /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf/Evan_Pfam_RdRp_output_dom.txt --cpu 16 /home/ampere/esieradz/bin/Pfam_RdRp/Pfam_RdRp.hmm /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf/scaffolds_min600bp.fasta
hmmscan -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf/Evan_Pfam_RdRp_output.txt -E 10 --domtblout /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf/Evan_Pfam_RdRp_output_dom.txt --cpu 16 /home/ampere/esieradz/bin/Pfam_RdRp/Pfam_RdRp.hmm /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf/scaffolds_min600bp.fasta
hmmscan -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf/Evan_Pfam_RdRp_output.txt -E 10 --domtblout /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf/Evan_Pfam_RdRp_output_dom.txt --cpu 16 /home/ampere/esieradz/bin/Pfam_RdRp/Pfam_RdRp.hmm /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf/scaffolds_min600bp.fasta
hmmscan -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf/Evan_Pfam_RdRp_output.txt -E 10 --domtblout /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf/Evan_Pfam_RdRp_output_dom.txt --cpu 16 /home/ampere/esieradz/bin/Pfam_RdRp/Pfam_RdRp.hmm /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf/scaffolds_min600bp.fasta
