#!/bin/bash

PROJECT_PATH=/home/hskim/Projects/EEG-BIS
echo $PROJECT_PATH
docker run --gpus all -it --rm \
    -v $PROJECT_PATH:/eeg-bis \
    -v /mnt/data_generator/eeg-bis/vitaldb:/mnt/data_generator/eeg-bis/vitaldb \
    -v /mnt/data_generator/eeg-bis/amc:/mnt/data_generator/eeg-bis/amc \
    -p 8889:8889 \
    eeg:tf-gpu-jupyter 