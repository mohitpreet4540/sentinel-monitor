import os
import pandas as pd
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse

app = FastAPI()

# 1. ALLOW CONNECTIONS: Essential for your phone to talk to the laptop
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

# 2. PATHS: Now everything is in the SAME folder
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_FILE = os.path.join(BASE_DIR, "system_data.csv")
# Look! No "templates" folder here anymore
HTML_FILE = os.path.join(BASE_DIR, "index.html")

@app.get("/")
def read_index():
    if os.path.exists(HTML_FILE):
        return FileResponse(HTML_FILE)
    return {"error": f"index.html not found. Checked: {HTML_FILE}"}

@app.get("/stats")
def get_stats():
    if not os.path.exists(DATA_FILE):
        return {"error": "Engine data file not found. Is engine.py running?"}
    
    try:
        # Read the last 30 rows
        df = pd.read_csv(DATA_FILE)
        last_rows = df.tail(30) 
        
        # We convert to standard Python types to prevent 406 errors
        return {
            "labels": [str(x) for x in last_rows["timestamp"].tolist()],
            "cpu": [float(x) for x in last_rows["cpu"].tolist()],
            "ram": [float(x) for x in last_rows["ram"].tolist()],
            "current_uptime": str(last_rows["uptime"].iloc[-1])
        }
    except Exception as e:
        return {"error": "Data stream busy", "details": str(e)}

if __name__ == "__main__":
    import uvicorn
    # Listening on 0.0.0.0 is what allows your phone to connect
    uvicorn.run(app, host="0.0.0.0", port=8000)
