#!/bin/bash
#SBATCH --job-name=dygformer-ncgl
#SBATCH --output=logs/%x-%j.out
#SBATCH --partition=long
#SBATCH --time=23:59:00
#SBATCH --gpus=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16GB
#SBATCH --partition long

# Activate modules
module --force purge
module load python/3 cuda/11.1 pytorch/1.8.1

# Activate virtual environment
source ~/scratch/venvs/dyg/bin/activate

python dyglib/evaluate_link_prediction.py \
    --dataset_name wikipedia \
    --model_name DyGFormer \
    --negative_sample_strategy random \
    --load_best_configs \
    --num_runs 5 \
    --gpu 0

# OR

# python dyglib/evaluate_node_classification.py \
#     --dataset_name wikipedia \
#     --model_name DyGFormer \
#     --load_best_configs \
#     --num_runs 5 \
#     --gpu 0