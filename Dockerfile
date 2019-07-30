FROM debian:stretch

RUN apt-get update

RUN apt-get install -y curl tar python

RUN curl -fsSL https://get.docker.com -o get-docker.sh

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl

RUN sh get-docker.sh

RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-253.0.0-linux-x86_64.tar.gz

RUN tar zxf *.gz google-cloud-sdk

RUN ./google-cloud-sdk/install.sh -q


