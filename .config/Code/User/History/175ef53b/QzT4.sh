import keyboard
import time
import subprocess

mode_active = False

def update_polybar(status):
    """Mengirim status ke polybar melalui `polybar-msg`"""
    subprocess.run(["polybar-msg", "hook", "mode", str(status)])

while True:
    if keyboard.is_pressed('win+r') or keyboard.is_pressed('super+r'):
        if not mode_active:
            update_polybar("This Mode Actived")
            mode_active = True
        time.sleep(0.5)  # debounce time

    if keyboard.is_pressed('esc'):
        if mode_active:
            update_polybar("This Mode InActived")
            mode_active = False
        time.sleep(0.5)  # debounce time
