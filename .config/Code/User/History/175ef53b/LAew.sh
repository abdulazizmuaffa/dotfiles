#!/bin/bash

# Cek apakah mode resize aktif
mode=$(i3-msg -t get_mode)
echo "Mode: $mode"  # Debug output

if [[ "$mode" == *"resize"* ]]; then
    echo "Resize"
else
    echo "No resize"
fi