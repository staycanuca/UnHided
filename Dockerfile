FROM python:3.11-slim-bullseye
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/staycanuca/UnHided.git .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "run:main_app", "--host", "0.0.0.0", "--port", "8000", "--workers", "4"]

