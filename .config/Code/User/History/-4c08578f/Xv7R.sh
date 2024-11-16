#!/bin/bash
# Mengambil suhu dari sensor CPU
temp=$(cat /sys/class/thermal/thermal_zone7/temp)
# Mengonversi suhu ke dalam satuan Celsius
temp_celsius=$((temp / 1000))
echo "CPU Temp: $temp_celsius°C"
