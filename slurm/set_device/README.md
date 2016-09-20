Hello!!!

This is an opportunity to write cuda code due to a "bug" that I found using
slurm.

# How does SLURM use CUDA_VISIBLE_DEVICES?

Hve you taken care about setting the device-id for a program running on a GPU?

Yes, continue reading :)

You may ask how shoul I do it with SLURM? I had the same questions last week
and I found that SLURM takes care of CUDA_VISIBLE_DEVICES. I did not read
carefully but I assumed that CUDA_VISIBLE_DEVICES have the info that I need
to pass to my program. Unfortunately, that's not the case. Therefore, never
write a slurm script like [this](run-error.sbatch).

I'm just starting with SLURM but it seems that CUDA_VISIBLE_DEVICES is handled
internally for SLURM not for the uses. Fortunately, for the user the deviceID
is straighforward to set once you know how many GPUs your program need. Run
the correct example below and you will notice that it uses 0 as deviceID
without taking into account the number inside CUDA_VISIBLE_DEVICES.

BTW, I haven't tested but I guess that if your program needs 2 GPUs, you can
set manually the deviceID as 0 and 1.

# Setup

This folder contains everything to succesfully launch a job using SLURM. The
only requirements are [cuda](https://developer.nvidia.com/cuda-zone).

Setup is as easy as `make`. Be sure that you have nvcc in your PATH ;).

Test that everything works by running `./set_device 0 1`.

# Launching

Launch it with `sbatch run.sbatch`.
