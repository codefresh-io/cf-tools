FROM ubuntu:latest

RUN apt-get update

RUN  apt-get install -y curl

RUN  apt-get install -y git

RUN apt-get install -y apt-transport-https

RUN apt-get install  -y curl software-properties-common gnupg

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list

RUN apt-get update

RUN apt-get install  -y kubectl

RUN apt-get install -y python-pip python-dev build-essential

RUN pip install --upgrade pip

RUN pip install --upgrade virtualenv

RUN pip install awscli --upgrade --user