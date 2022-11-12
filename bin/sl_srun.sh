#!/bin/bash


if [ "$#" -lt 2 ]; then
    echo "Usage: sl_srun NUM_GPUS COMMAND"
    exit
fi


NUM_GPUS=$1
shift

NUM_CPU=$(( $NUM_GPUS * 4 ))
MEM_SIZE=$(( $NUM_GPUS * 31 ))


srun -u --pty --gres=gpu:$NUM_GPUS -c $NUM_CPU --mem=${MEM_SIZE}GB "$@"
