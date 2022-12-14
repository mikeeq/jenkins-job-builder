FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y libyaml-dev

RUN pip3 install -r requirements.txt

# RUN pip3 install .
