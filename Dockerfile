# NUC Network Utilities Container
# For use en GNS3 as a Computer with network utilities
FROM ubuntu:xenial
MAINTAINER Javier Prieto <javier.prieto.edu@juntadeandalucia.es>

LABEL Title="NUC Network Utilities Container" \
      Description="For use en GNS3 as a Computer with network utilities"

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade && apt-get install -y slurm iperf tshark nano iproute2
RUN apt-get install -y net-tools
RUN mkdir /etc/network
RUN apt-get install -y iputils-*

ENTRYPOINT bash
