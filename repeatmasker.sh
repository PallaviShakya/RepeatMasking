#!/bin/bash 
# 
#SBATCH --job-name=RepeatMasker 
#SBATCH --ntasks=65 # Number of cores/threads 
#SBATCH --mem=65gb 
#SBATCH --partition=bigmemht  
#SBATCH --time=48:00:00 
#SBATCH --mail-type=ALL 
#SBATCH --mail-user=pshakya@ucdavis.edu 
#SBATCH -o %x_%j.out 
#SBATCH -e %x_%j.err 

########################################################################################## 
# Author: Pallavi Shakya 
# Email: pshakya@ucdavis.edu  
############################################################################################################ 

# Load software  
module load repeatmasker/4.1.2-p1 

# go to the directory 
cd /home/pshakya/str_annotation/02_repeatmasker_classify 

#Make things fail on errors 
set -o nounset 
set -o errexit 
set -x 

# run commands 

RepeatMasker -pa 8 -lib consensi.fa.classified -gff -a -noisy -xsmall M_hapla_assembly_v1.fasta -e ncbi 

# Print out values of the current jobs SLURM environment variables 

env | grep SLURM 