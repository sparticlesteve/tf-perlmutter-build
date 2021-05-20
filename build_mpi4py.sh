#!/bin/bash

#module swap PrgEnv-cray PrgEnv-gnu

# Set compile flags
#export CRAYPE_LINK_TYPE=dynamic
#export CC=$(which cc)
#export CXX=$(which CC)
#export CFLAGS="-g"
#export CXXFLAGS="-g"
#export HOROVOD_MPICXX_SHOW="$PWD/showMPI.sh"

export CC=mpicc
export CXX=mpic++
export MPICH_CC=gcc
export MPICH_CXX=g++
export LIBRARY_PATH=$LIBRARY_PATH:$CRAY_LD_LIBRARY_PATH
# Get libfabric lib path
export LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | tr ':' '\n' | grep libfabric):$LIBRARY_PATH

##export CUDA_PATH=$CONDA_PREFIX
#export MPI_C=$(which cc)
#export MPI_CXX=$(which CC)
#export MPI_HOME=$MPICH_DIR
#export MPI_CXX_COMPILER=$(which CC)
#export CMAKE_CXX_COMPILER=$CXX
#export MPI_CXX_COMPILER_FLAGS=$(CC --cray-print-opts=all)
#export MPI_CXX_LIBRARIES=$MPICH_DIR/lib/libmpi_gnu_91.so
#export MPI_CXX_ADDITIONAL_INCLUDE_DIRS=$MPICH_DIR/include
#export CMAKE_ARGS="-DCMAKE_SYSTEM_NAME=CrayLinuxEnvironment"
#export MPIEXEC_EXECUTABLE="srun"

pip install --no-cache-dir -v mpi4py

#cd horovod
#python setup.py build
