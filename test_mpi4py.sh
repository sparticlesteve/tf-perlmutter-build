#!/bin/bash
#SBATCH -C gpu
#SBATCH -N 2
#SBATCH -J mpi4py-test
#SBATCH --ntasks-per-node 4
#SBATCH --cpus-per-task 32
#SBATCH --gpus-per-node 4
#SBATCH -o slurm-%x-%j.out

module swap PrgEnv-cray PrgEnv-gnu
module load gcc/9.3.0
module load cuda/11.0.3
module load cudnn/8.2.0
module load nccl/2.9.6
module load mpich/3.4.1

export MPICH_CC=gcc
export MPICH_CXX=g++

conda activate tf-2.4.1

srun -l -u python -c "
import mpi4py.MPI;
comm = mpi4py.MPI.COMM_WORLD;
print(comm.Get_rank());
print(comm.allreduce(1))
"
