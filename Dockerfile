# Ubuntu-Focak Ubuntu based Container
# For use in GNS3 as a Computer with network utilities
FROM ubuntu:bionic
MAINTAINER Javier Prieto <javier.prieto.edu@juntadeandalucia.es>

LABEL Title="Ubuntu Focal" \
      Description="For use in GNS3 as a Computer with network utilities"

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y slurm iperf tshark nano iproute2 net-tools iputils-* mtr freeradius-utils ipv6toolkit

RUN apt-get install -y ftp netcat

RUN apt-get install -y iperf3
ENTRYPOINT bash
