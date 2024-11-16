#!/bin/bash

# File untuk menyimpan status mode resize
status_file="/tmp/resize_mode_status"

# Periksa apakah file status ada, jika tidak buat baru
if [ ! -f "$status_file" ]; then
    echo "Resize Mode Inactivated" > "$status_file"
fi

# Fungsi untuk menampilkan status terbaru
display_status() {
    cat "$status_file"
}

# Periksa status mode resize saat ini
mode=$(i3-msg -t get_mode)

if [[ "$mode" == *"resize"* ]]; then
    # Jika mode resize aktif
    echo "Resize Mode Activated" > "$status_file"
else
    # Jika mode resize tidak aktif
    echo "Resize Mode Inactivated" > "$status_file"
fi

# Menampilkan status terbaru
display_status
