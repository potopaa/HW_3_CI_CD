FROM python:3.9-slim

WORKDIR /app
COPY app/ /app/
COPY config.properties /app/

RUN pip install -r /app/requirements.txt

CMD ["python", "/app/hello.py"]
