#!/bin/bash
# Script to setup enviroment variables
# Usage: . setenv.sh OR source setenv.sh
module purge
module load gcc/4.8.1
module load cuda/7.5

# Comment this line (your module was not possible to load)
module load tools/cudnn/v5
# Uncomment this line (once your module is available)
#module load cudnn/v5

module load anaconda/4.1.1
#module load tools/cnmem
# Activate conda enviroment
source activate example
