#!/bin/bash -e

# Setup dependencies
source setup.sh

# Create the conda environment
conda create -c nvidia -n tf-2.4.2 -y \
    python=3.8 ipython cmake

#pysocks pytest #pandas #cudatoolkit=11.0 cudnn=8.0.4 nccl nvcc_linux-64

# Activate the conda environment
conda activate tf-2.4.2

# Install TensorFlow and other pip dependencies
pip install tensorflow==2.4.2 mock

# Install Horovod
./build_horovod.sh 2>&1 | tee horovod.log
