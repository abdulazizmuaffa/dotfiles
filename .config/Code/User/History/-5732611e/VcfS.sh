#!/bin/bash

# Cek apakah Polybar sudah berjalan
if ! pgrep -x "polybar" > /dev/null; then
    # Mulai Polybar jika belum ada yang berjalan
    polybar mybar &
fi
