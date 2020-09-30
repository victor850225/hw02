#!/bin/bash
#SBATCH -N 1
#SBATCH -n 48
#SBATCH -t 00:30:00
#SBATCH -o pi.script.log
#SBATCH -J pi.script.log
#SBATCH -p skx-normal

echo "N_samples N_i N_o pi_estimate e_rel time_accum(nano)"


./pi.sh

