# NUC Network Utilities Container
# For use en GNS3 as a Computer with network utilities
FROM ubuntu:bionix
MAINTAINER Javier Prieto <javier.prieto.edu@juntadeandalucia.es>

LABEL Title="NUC Network Utilities Container" \
      Description="For use en GNS3 as a Computer with network utilities"

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y slurm iperf tshark nano iproute2 net-tools iputils-* mtr freeradius-utils

RUN mkdir /etc/network

ENTRYPOINT bash
