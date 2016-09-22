#!/bin/bash
#
#SBATCH --array=0-2
#SBATCH --job-name=example
#SBATCH --workdir=/home/escorcv/projects/admin.dl/slurm/bash_source/experiments/a00
#SBATCH --output=%A_%a.out
#SBATCH -n 1
#SBATCH --time=00:02:00

srun hostname
source ../../projects/main.sh
echo $CDPATH
