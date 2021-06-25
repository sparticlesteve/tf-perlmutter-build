#!/bin/bash
#SBATCH -J tf-benchmark
#SBATCH -C gpu
#SBATCH -N 2
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 32
#SBATCH --gpus-per-task 1
#SBATCH --time 0:30:00

# Setup software
source setup.sh
conda activate tf-2.4.2

export NCCL_DEBUG=INFO
#export TF_CPP_MIN_LOG_LEVEL=3
#export TF_CPP_MIN_VLOG_LEVEL=1
export HOROVOD_LOG_LEVEL=trace
#export MPICH_RDMA_ENABLED_CUDA=0
#export MPICH_MAX_THREAD_SAFETY=multiple
export MPICH_GPU_SUPPORT_ENABLED=1
#export MPIR_CVAR_GPU_EAGER_DEVICE_MEM=0

set -x
srun -u -l python horovod/examples/tensorflow2/tensorflow2_synthetic_benchmark.py
#srun -u -l python horovod/examples/tensorflow2/tensorflow2_keras_synthetic_benchmark.py
