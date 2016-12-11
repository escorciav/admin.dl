# Clean disk

Some strategies used to reduce or compact files.

## Compress folder with lots of tiny files

Let's say that you are transfering data in/out from disks.
You may notice that performance of `rsync` or `scp` is compromised if your folder have tons of tiny files.
This recipe is an attempt to solve that.

### Solution

1. Identify folders with tons of tiny files.

2. Compress folders. You can use [this python program](https://github.com/escorciav/linux-utils/blob/master/hacks/compress_folder.py).

3. Use meta-script to run step 2.
  Use whatever you want, I used [this SLURM bash script](job.sbatch):
  - Take as input a CSV-file with all the folders to compress line by line.
  - Run the program cited in step 2.
  - Writes a logging file into log/hostname-[index].out

### Check errors

The hacky way to test if jobs finish succesfully:

```bash
for i in log/gpu07*.out; do if [ ! $(expr $(wc -l $i | awk '{print $1}') - 5) -eq 0 ]; then echo $i; fi; done
```

Loop over log files and check if number of printed lines is 5.
Why 5? an update is needed if the scripts (meta-script or program in [steps 2 & 3](#Solution)) writes more to stdout.

### TODO

Identify folders with tons of tiny files
