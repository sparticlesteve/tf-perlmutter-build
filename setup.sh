# Source me
#module unload cray-mpich PrgEnv-cray
module swap PrgEnv-cray PrgEnv-gnu
module load gcc/9.3.0
module load cuda/11.0.3
module load cudnn/8.2.0
module load nccl/2.9.6
#module load mpich/3.4.1

export CRAYPE_LINK_TYPE=dynamic
export CC=$(which cc)
export CXX=$(which CC)
#export MPICH_CC=gcc
#export MPICH_CXX=g++

module list
