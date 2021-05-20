#!/bin/bash

# Set compile flags
#export CFLAGS="-g"
#export CXXFLAGS="-g"
#export HOROVOD_MPICXX_SHOW="$PWD/showMPI.sh"

#export CC=mpicc
#export CXX=mpic++
#export MPICH_CC=gcc
#export MPICH_CXX=g++
#export LD_LIBRARY_PATH=$CRAY_PMI_PREFIX/lib:$LD_LIBRARY_PATH


export HOROVOD_WITHOUT_GLOO=1
export HOROVOD_WITH_TENSORFLOW=1
export HOROVOD_WITHOUT_PYTORCH=1
export HOROVOD_WITHOUT_MXNET=1
#export HOROVOD_GPU_OPERATIONS=NCCL
export HOROVOD_WITH_MPI=1
#export LIBRARY_PATH=$LIBRARY_PATH:$CRAY_LD_LIBRARY_PATH

##export CUDA_PATH=$CONDA_PREFIX
#export CMAKE_CXX_COMPILER=$CXX
#export CMAKE_ARGS="-DCMAKE_SYSTEM_NAME=CrayLinuxEnvironment"
#export MPIEXEC_EXECUTABLE="srun"

pip install --no-cache-dir -v horovod

##git clone --recursive https://github.com/horovod/horovod.git
#cd nersc-tf-tests/horovod
#python setup.py install
