# Change this line from 3.10 to 3.12
FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["sh", "-c", "python engine.py & uvicorn api:app --host 0.0.0.0 --port 8000"]
