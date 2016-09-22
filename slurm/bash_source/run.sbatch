#!/bin/bash
#
#SBATCH --array=0-2
#SBATCH --job-name=example
#SBATCH --workdir=experiments/a00
#SBATCH --output=%A_%a.out
#SBATCH -n 1
#SBATCH --time=00:02:00

srun hostname
echo "CDPATH= $CDPATH"
source $(pwd)/../../project/main.sh
