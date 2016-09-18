Hello!!!

I had a headache ensuring that my second bash-script of SLURM work so I decided to make a simple example public.

# Setup

This folder contains everything to succesfully launch a job using SLURM. The only requirements are [conda](http://conda.pydata.org/docs/index.html), [cuda](https://developer.nvidia.com/cuda-zone), and [gcc](https://gcc.gnu.org/).

Install this, it's as easy as running `sh setup.sh` in your terminal.

Test that everything works by running `python example.py 1`. In case that you wanna test your GPU, run it as `THEANO_FLAGS='device=gpu' python example.py 1`.

# Launching

Launch it with `sbatch run.sbatch`.

# QNA := question not answer

1. I don't know why the initialization of theano reports an error but the jobs run of different GPUs. Do you?
