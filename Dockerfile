
FROM python:3.8-slim

RUN apt-get update && apt-get install -y curl && apt-get clean


WORKDIR /app


COPY . .

COPY config.properties /app/config.properties

RUN pip install --upgrade pip && pip install -r requirements.txt


CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8050", "hello:app"]
