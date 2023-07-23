#!/bin/sh
#SBATCH --job-name=neordrp
#SBATCH --output=job.%j.out # output messages go here 
#SBATCH --error=job.%j.err    # error messages go here 
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=skylake # partition name 
#SBATCH --nodes=1   
#SBATCH --cpus-per-task=16
#SBATCH --mem=60000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=12:00:00
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T1-R-H2O-P-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T2-R-H2O-P-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H218O-P-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-C.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-A.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-A.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-A.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-A.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-B.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-B.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-B.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-B.rt.cf.qf/prodigal_out.genes.fna
/home/ampere/esieradz/bin/Prodigal/prodigal -o /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-C.rt.cf.qf/prodigal_output.txt -a /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-C.rt.cf.qf/prodigal_out.genes.faa -i /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-C.rt.cf.qf/scaffolds_min600bp.fasta -d /home/ampere/esieradz/Gary/processed_reads/T3-R-H2O-P-C.rt.cf.qf/prodigal_out.genes.fna