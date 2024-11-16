#!/bin/bash
# Mengambil suhu dari sensor x86_pkg_temp
temp=$(cat /sys/class/thermal/thermal_zone0/temp)  # Pastikan zona yang benar (bisa jadi thermal_zone1, dst)
# Mengonversi suhu ke satuan Celsius (millidegree Celsius dibagi 1000)
temp_celsius=$((temp / 1000))
# Menampilkan suhu dengan prefix "CPU Temp: "
echo "CPU Temp: $temp_celsius°C"
