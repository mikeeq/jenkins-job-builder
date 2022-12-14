FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y libyaml-dev

RUN pip3 install -r requirements.txt

# https://pypi.org/project/jenkins-job-builder/
RUN PBR_VERSION=9.9.9 python setup.py install

CMD jenkins-jobs
