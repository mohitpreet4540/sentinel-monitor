#  Sentinel System Monitor

A lightweight, containerized system monitoring dashboard. This project collects real-time hardware telemetry (CPU, RAM, Uptime) and serves it through a sleek web interface.

Built as part of my **BCA 2nd Semester** curriculum to explore System Internals and DevOps.



##  Key Features
* **Real-time Monitoring:** Tracks CPU usage, RAM availability, and system uptime.
* **Dockerized Architecture:** Completely portable. Runs on Ubuntu, Fedora, and Windows without manual Python setup.
* **REST API:** Built with FastAPI to serve hardware data as JSON.
* **Persistent Logging:** Automatically saves system stats to a CSV file for historical analysis.

##  Tech Stack
- **Backend:** Python 3.12 (FastAPI, Psutil)
- **Frontend:** HTML5, CSS3, JavaScript (Fetch API)
- **Deployment:** Docker, Docker Compose
- **Container Registry:** Docker Hub

## How to Run

### Prerequisite
- Docker & Docker Compose installed.

### Option 1: Pull from Docker Hub (Easiest)
If you don't want to download the code, just run:
```bash
docker run -d -p 8000:8000 --name sentinel-monitor --pid=host mohit4640/sentinel-app:v1
```
###Option 2: Run Locally

**Clone the repository:**  

### Option 2: Run Locally

1. **Clone the repository:**
```bash
git clone https://github.com/mohitpreet4540/sentinel-monitor.git  
```
**Bash**  

./start_sentinel.sh
Access the dashboard at http://localhost:8000.

##📂 Project Structure
- **engine.py:** Background worker that collects hardware data.

- **api.py**: FastAPI server handling web requests.

- **index.html**: The visual dashboard.

- **compose.yaml**: Docker orchestration file.

