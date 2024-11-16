#!/bin/bash

# Cek apakah mode resize aktif (sesuaikan sesuai dengan cara kamu mengaktifkan resize)
# Ini hanya contoh, kamu bisa menyesuaikan dengan cara kamu mengaktifkan resize mode
if [ -f "/tmp/resize_mode_active" ]; then
    echo "TIdak aktif"
else
    echo "Resize Mode"
fi
