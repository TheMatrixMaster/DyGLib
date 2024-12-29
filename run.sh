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

# python dyglib/train_link_prediction.py \
#     --dataset_name wikipedia \
#     --model_name DyGFormer \
#     --load_best_configs \
#     --num_runs 5 \
#     --gpu 0

# args.num_layers = 2
# args.max_input_sequence_length = 32
# args.patch_size = 1
# args.dropout = 0.1

# OR

python dyglib/train_node_classification.py \
    --dataset_name wikipedia \
    --model_name DyGFormer \
    --load_best_configs \
    --num_runs 5 \
    --gpu 0

# args.num_layers = 2
# args.max_input_sequence_length = 32
# args.patch_size = 1
# args.dropout = 0.1