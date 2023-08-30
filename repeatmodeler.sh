#!/bin/bash 
#
#SBATCH --job-name=repeatmodeler 
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
############################################################################################################# 

# Load software  
module load repeatmodeler/1.0.11 

  # go to the directory 

cd ~/str_annotation/01_repeatmodeler 

#Make things fail on errors 
set -o nounset 
set -o errexit 
set -x 

# run commands 
RepeatModeler -database hapla -engine ncbi -pa 65 

# Print out values of the current jobs SLURM environment variables 
env | grep SLURM 