#!/bin/bash

DATASET=$1
CONFIG=$2
DIR=$(find lightning_logs/ -type d -name "CONFIG=$CONFIG*" | head -n 1)/version_0
echo "Using directory: $DIR"

python predict.py --run $DIR --all_data_file "data/$DATASET/all_data.csv" --predict_i "data/$DATASET/test.csv"
read -p "Press Enter to exit..."
