# Container image that runs your code
FROM python:3.8-slim

# Instalando as dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY main.py /main.py

RUN chmod 777 /main.py
RUN chmod 777 /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]