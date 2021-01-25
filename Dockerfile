FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt -y install ansible
