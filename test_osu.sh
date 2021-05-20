#!/bin/bash
#SBATCH -C gpu
#SBATCH -N 2
#SBATCH --ntasks-per-node 4
#SBATCH --cpus-per-task 32
#SBATCH --gpus-per-task 1
#SBATCH --time 0:30:00

srun osu-micro-benchmarks-5.7.1/mpi/collective/osu_allreduce
