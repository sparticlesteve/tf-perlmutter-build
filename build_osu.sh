#!/bin/bash

cd osu-micro-benchmarks-5.7.1
./configure CC=$(which cc) CXX=$(which CC) \
    --enable-cuda \
    --with-cuda-include=$CUDA_HOME/include \
    --with-cuda-libpath=$CUDA_HOME/lib64
#--prefix /global/homes/s/sfarrell/tensorflow-build/osu-micro-benchmarks
make
#make install
