FROM nvidia/cuda:11.1.1-base

LABEL Gershon <gershon@medooza.io>

WORKDIR /root

RUN apt update
RUN apt -y install wget 
RUN wget https://trex-miner.com/download/t-rex-0.22.1-linux.tar.gz

RUN tar -xzf t-rex-0.22.1-linux.tar.gz

ENV ETH_ADDRESS=0
ENV SERVER=us1.ethermine.org
ENV WORKER_NAME=worker0
ENV INTENSITY=auto
ENV NVIDIA_DRIVER_CAPABILITIES="compute,video,utility"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
