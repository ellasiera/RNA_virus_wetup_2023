#!/bin/sh
#SBATCH --job-name=spdbatch1
#SBATCH --output=job.%j.out # output messages go here 
#SBATCH --error=job.%j.err    # error messages go here 
#SBATCH --mail-user=ella-tali.sieradzki@ec-lyon.fr
#SBATCH --mail-type=ALL
#
#SBATCH --partition=haswell # partition name 
#SBATCH --nodes=1   
#SBATCH --cpus-per-task=16
#SBATCH --mem=250000 # amount of RAM memory required per node, in Mega Bytes
#SBATCH --time=96:00:00
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-A.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-B.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T0-R-Dry-soil-C.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-A.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-B.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-B.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-B.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-C.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-C.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-C.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-A.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-B.rt.cf.qf -t 16 -m 250
/home/ampere/esieradz/bin/SPAdes-3.15.4-Linux/bin/rnaviralspades.py -1 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf.R1.fastq.gz -2 /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf.R2.fastq.gz -o /home/ampere/esieradz/Gary/processed_reads/T1-R-H218O-P-C.rt.cf.qf -t 16 -m 250
