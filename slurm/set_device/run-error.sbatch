#!/bin/bash
# Automatically generated script 2016-09-17 00:20
#
#SBATCH --array=0-2
#SBATCH --job-name=example
#SBATCH --output=%A_%a.out
#SBATCH --gres=gpu:1
#SBATCH -n 1
#SBATCH --time=00:09:00

srun hostname
module load cuda
echo "CUDA_VISIBLE_DEVICES= ${CUDA_VISIBLE_DEVICES}"
./set_device.o $CUDA_VISIBLE_DEVICES $SLURM_ARRAY_TASK_ID
