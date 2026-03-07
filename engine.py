import psutil
import time
import csv
import os
from datetime import datetime

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_FILE = os.path.join(BASE_DIR, "system_data.csv")

def get_uptime():
    boot_time = psutil.boot_time()
    uptime_seconds = time.time() - boot_time
    m, s = divmod(uptime_seconds, 60)
    h, m = divmod(m, 60)
    d, h = divmod(h, 24)
    return f"{int(d)}d {int(h)}h {int(m)}m"

def monitor():
    if not os.path.exists(DATA_FILE):
        with open(DATA_FILE, "w") as f:
            f.write("timestamp,cpu,ram,uptime\n")

    while True:
        try:
            cpu = psutil.cpu_percent(interval=1)
            ram = psutil.virtual_memory().percent
            uptime = get_uptime()
            timestamp = datetime.now().strftime("%H:%M:%S")

            with open(DATA_FILE, "a") as f:
                writer = csv.writer(f)
                writer.writerow([timestamp, cpu, ram, uptime])
        except Exception as e:
            print(f"Error: {e}")
        
        time.sleep(2)

if __name__ == "__main__":
    monitor()
