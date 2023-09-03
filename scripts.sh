#!/bin/sh
#SBATCH -J pydreamer
#SBATCH -N 1
#SBATCH --mem=0
#SBATCH -n 1
#sbatch --gpu=2
#SBATCH -p normal
#SBATCH -o %x.out
#SBATCH -e %x.err
#SBATCH -D /proj/internal_group/dscig/kdkyum/workdir/pydreamer-test

__conda_setup="$('/opt/olaf/anaconda3/2020.11/GNU/4.8/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
eval "$__conda_setup"
unset __conda_setup
conda activate pydreamer
export WANDB_MODE=offline
export PYTHONPATH='.'

python launch.py --configs defaults mpg