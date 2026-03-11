# Sentinel System Monitor
Sentinel is a lightweight system monitoring dashboard that collects live CPU and RAM usage, exposes the data through a FastAPI API, and renders it in a browser dashboard.

## Key Features
- Real-time CPU and RAM monitoring
- Live dashboard served from FastAPI
- CSV logging for recent history
- Works on both Windows and Linux

## Tech Stack
- Python 3.12
- FastAPI
- Uvicorn
- Psutil
- Pandas
- HTML, CSS, JavaScript, Chart.js

## Project Structure
- `engine.py` - collects system stats and appends them to `system_data.csv`
- `api.py` - serves the dashboard and JSON stats API
- `index.html` - frontend dashboard
- `start_windows.ps1` - starter for Windows
- `start_linux.sh` - starter for Linux
- `compose.yaml` - Docker Compose configuration

## Local Setup
Create and install the virtual environment before starting the app.

### Windows
```powershell
python -m venv venv
.\venv\Scripts\Activate.ps1
pip install -r requirements.txt
```

### Linux
```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
chmod +x start_linux.sh
```

## Run the Project
Both operating systems need two processes:
- `engine.py` writes live system data
- `api.py` serves the dashboard on port `8000`

### Windows starter
```powershell
.\start_windows.ps1
```

### Linux starter
```bash
./start_linux.sh
```

## Manual Run
Use these commands if you want to start each process yourself.

### Windows
Terminal 1:
```powershell
.\venv\Scripts\python.exe .\engine.py
```

Terminal 2:
```powershell
.\venv\Scripts\python.exe .\api.py
```

### Linux
Terminal 1:
```bash
./venv/bin/python ./engine.py
```

Terminal 2:
```bash
./venv/bin/python ./api.py
```

## Open the Dashboard
- On the same machine: `http://localhost:8000`
- On another device in the same network: `http://YOUR-IP:8000`

## Docker
Run with Docker if you prefer containers.
```bash
docker run -d -p 8000:8000 --name sentinel-monitor --pid=host mohit4640/sentinel-app:v1
```

## Push to GitHub
After reviewing your changes, run:

```bash
git add README.md start_windows.ps1 start_linux.sh engine.py api.py index.html
git commit -m "Add cross-platform startup scripts and fix Windows runtime issues"
git push origin main
```

