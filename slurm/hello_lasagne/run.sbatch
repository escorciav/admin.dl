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
# Set environment variables safety (anaconda)
while true; do
  source setenv_gpu.sh
  if [ $? -eq 0 ]; then
    break;
  else
     sleep $[ ( $RANDOM % 10 ) + 1 ]s
  fi
done

echo "cuda visible devices: ${CUDA_VISIBLE_DEVICES}"
THEANO_FLAGS="'device=gpu${CUDA_VISIBLE_DEVICES}'" python example.py ${SLURM_ARRAY_TASK_ID}
