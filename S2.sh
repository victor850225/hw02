#!/bin/bash
#SBATCH -N 1
#SBATCH -n 48
#SBATCH -t 00:30:00
#SBATCH -o pi.compiled.log
#SBATCH -J pi.compiled.log
#SBATCH -p skx-normal

echo "N_samples N_i N_o pi_estimate e_rel time_accum"


g++ pi.cpp; ./a.out
