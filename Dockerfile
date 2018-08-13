
FROM ubuntu:16.04

## Maintainer
MAINTAINER "Mike Gahan" michael.gahan@gmail.com

## Make script run in non-interactive mode
ENV DEBIAN_FRONTEND noninteractive

## Document last time updated
ENV LAST_UPDATE=2018-08-13

## Update & upgrade
RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    net-tools

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

# More install
RUN r -e 'install.packages("CausalImpact")'
RUN r -e 'install.packages("h2o", repos=(c("http://s3.amazonaws.com/h2o-release/h2o/master/1497/R", getOption("repos"))))'
RUN r -e 'install.packages("future.apply")'
RUN r -e 'install.packages("roxygen2")'
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y apt-transport-https
RUN apt-get update
RUN apt-get install -y python3.6
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b

# Login
CMD ["/bin/bash"]

# Upload
# docker build -t mgahan/datascience_image:latest .
# docker push mgahan/datascience_image:latest
