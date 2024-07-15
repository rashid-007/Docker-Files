# This is a dockerfile to run python application as a docker-container
FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
CMD ["python","app.py"]
Expose 5000
