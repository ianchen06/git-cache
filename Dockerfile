FROM python:3.7
RUN apt-get update && \
        apt-get install -y git openssh-server
