#!/bin/bash

#SBATCH --job-name="SnelliusDebug-test"
#SBATCH --partition=thin
#SBATCH --time=00:45:00
#SBATCH -n 1
#SBATCH -o stdout
#SBATCH -e stderr

source ../compile/modules_snellius.sh

mpiexecjl --project=../ -n 1 julia -J ./../SnelliusDebug.so -O3 --check-bounds=no -e 'include("run_case.jl")'
