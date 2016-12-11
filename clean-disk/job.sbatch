#!/bin/bash
#
#SBATCH -n 2
#SBATCH --mem=4G
#SBATCH --time=08:00:00
#SBATCH --job-name=gpu07
#SBATCH --output=/home/escorcv/cleaning-disk/log/gpu07-%a.out
##SBATCH --array=1-10000%25
#SBATCH --nodelist=gpu-2040007
CSVFILE="/home/escorcv/cleaning-disk/gpu-2040007"

hostname
echo "----- Executing before job -----"
module load anaconda
echo "------ Executing main job ------"
input_dir="$(sed -n ${SLURM_ARRAY_TASK_ID}p $CSVFILE)"
python -u /home/escorcv/linux-utils/hacks/compress_folder.py "$input_dir"
