#!/bin/bash

# Cek apakah mode resize aktif
mode=$(i3-msg -t get_mode)

if [[ "$mode" == *"resize"* ]]; then
    echo "Resize"
else
    echo ""
fi
