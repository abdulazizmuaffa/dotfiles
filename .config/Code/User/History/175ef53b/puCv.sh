#!/bin/bash

# File untuk menyimpan status mode resize
status_file="/tmp/resize_mode_status"

# Cek apakah file status ada, jika tidak buat baru dengan status default
if [ ! -f "$status_file" ]; then
    echo "Resize Mode Inactivated" > "$status_file"
fi

# Fungsi untuk menampilkan status terbaru
display_status() {
    cat "$status_file"
}

# Mendengarkan tombol yang ditekan
while true; do
    # Deteksi keypress menggunakan xev
    key=$(xev -event keyboard | grep "keycode" | tail -n 1)

    # Jika Super+R ditekan (keycode 133 untuk Super, 49 untuk 'R')
    if [[ "$key" == *"keycode 133"* && "$key" == *"keycode 49"* ]]; then
        echo "Resize Mode Activated" > "$status_file"
    # Jika Escape ditekan (keycode 9 untuk Escape)
    elif [[ "$key" == *"keycode 9"* ]]; then
        echo "Resize Mode Inactivated" > "$status_file"
    fi

    # Tampilkan status yang sesuai
    display_status
    sleep 0.1
done
