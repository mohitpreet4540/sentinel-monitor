import psutil
import time
import csv
import os
from pathlib import Path
from datetime import datetime

# This line makes it work on BOTH Windows and Linux automatically
# It looks for 'system_data.csv' in the same folder as the script
BASE_DIR = Path(__file__).resolve().parent
DATA_FILE = BASE_DIR / "system_data.csv"

def collect_stats():
    # Check if file exists to add header
    file_exists = DATA_FILE.exists()

    with open(DATA_FILE, mode='a', newline='') as file:
        writer = csv.writer(file)
        
        # Add Header if it's a new file
        if not file_exists:
            writer.writerow(["Timestamp", "CPU_Usage", "RAM_Usage"])

        print(f"Sentinel Engine started. Saving to: {DATA_FILE}")

        while True:
            try:
                timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                cpu = psutil.cpu_percent(interval=1)
                ram = psutil.virtual_memory().percent
                
                writer.writerow([timestamp, cpu, ram])
                file.flush() # Ensures data is written immediately
                
                print(f"[{timestamp}] CPU: {cpu}% | RAM: {ram}% - Logged.")
                
                time.sleep(1) 
            except KeyboardInterrupt:
                print("\nEngine stopped by user.")
                break
            except Exception as e:
                print(f"Error: {e}")
                time.sleep(5)

if __name__ == "__main__":
    collect_stats()