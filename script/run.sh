#!/bin/bash
#SBATCH --cpus-per-task 1
#SBATCH --mem-per-cpu=64G
#SBATCH --job-name=dppo
#SBATCH --output ./%x-%j.log
#SBATCH --gpus=1
#SBATCH --mail-type=END
#SBATCH --mail-user=dchen3@andrew.cmu.edu

source ~/.bashrc
conda activate dppo
cd dppo

python script/run.py --config-name=ft_ppo_diffusion_mlp \
    --config-dir=cfg/gym/finetune/hopper-v2
