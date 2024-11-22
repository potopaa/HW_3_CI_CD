FROM python:3.8-slim

RUN apt-get update && apt-get install -y curl && apt-get clean


WORKDIR /app


COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt


CMD ["python", "hello.py"]
