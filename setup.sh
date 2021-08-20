# Source me
module load PrgEnv-gnu
#module load cudatoolkit/20.9_11.0
#module load craype-accel-nvidia80
#module load nccl/2.9.8
#module load cudnn/8.2.0
#module load nccl/2.9.6
#module load mpich/3.4.1

#export CUDNN_DIR=/global/common/software/nersc/cos1.3/cudnn/8.2.0/cuda/11.3

export CRAYPE_LINK_TYPE=dynamic
export CC=$(which cc)
export CXX=$(which CC)

module list
