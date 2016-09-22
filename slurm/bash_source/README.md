Hi!

This is an opportunity to learn about bash sourcing inside SLURM.

# Setup

This folder contains everything to succesfully launch a job using SLURM.

Setup is as easy as executing `sh setup.sh`.

Please edit the workdir according to you username and the location of the
repo root. Do *not* modify the part that looks like
`slurm/bash_source/experiments/a00`. If you run `setup.sh`, everything else
is gonna be OK.

# Launching

Launch it with `sbatch run.sbatch`
