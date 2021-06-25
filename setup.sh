# Source me

module load PrgEnv-gnu
module load gcc/9.3.0

# CUDA libraries
module load cudatoolkit/20.9_11.0
export CUDA_VERSION=11.0
source /pscratch/sd/s/sfarrell/software/cudnn_8.0.5.39_cuda11.0_x86_64/setup.sh
#module load cudnn/8.2.0
module load nccl/2.9.6

export CRAYPE_LINK_TYPE=dynamic
export CC=$(which cc)
export CXX=$(which CC)

module list
