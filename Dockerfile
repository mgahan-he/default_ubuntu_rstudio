
FROM ubuntu:16.04

## Maintainer
MAINTAINER "Mike Gahan" michael.gahan@gmail.com

## Make script run in non-interactive mode
ENV DEBIAN_FRONTEND noninteractive

## Document last time updated
ENV LAST_UPDATE=2016-10-19

## Update & upgrade
RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev

# AWS CLI needs the PYTHONIOENCODING environment varialbe to handle UTF-8 correctly:
# https://hub.docker.com/r/fstab/aws-cli/
ENV PYTHONIOENCODING=UTF-8

# Add install shell script
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install wget
ADD run.sh /root/run.sh
RUN bash /root/run.sh
RUN cd /root/

# Set timezone
ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Login
CMD ["/bin/bash"]

# Upload
# docker push mgahan/datascience_image:latest
