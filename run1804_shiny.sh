
# FROM Ubuntu 18.04

apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    net-tools
    
PYTHONIOENCODING=UTF-8

# Add install shell script
apt-get update && apt-get install -y --no-install-recommends apt-utils
apt-get install wget

# Default install
apt-get install -y \
    less \
    man \
    python \
    python-pip \
    python-virtualenv \
    nano \
    lzop \
    openssl \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    nano \
    curl \
    p7zip-full \
    pigz \
    openssl \
    libssl-dev
    
# Install more dependencies  
apt-get install -y libxml2-dev
apt-get install -y libcurl4-openssl-dev
apt-get install -y libssl-dev
apt-get install -y libcairo-dev
apt-get install -y gdebi-core
apt-get install -y unixodbc-dev

# Install AWS CLI
pip install awscli

# Install R 3.5.2
#apt install -y apt-transport-https software-properties-common
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
#apt update
#apt install -y r-base
#apt install -y r-base-dev
#apt-get install -y r-cran-littler

# Install R 3.4
apt update
apt install -y r-base r-base-dev
apt-get install -y r-cran-littler

# Install rstudio-server
cd /root
wget https://download2.rstudio.org/rstudio-server-1.1.463-amd64.deb
gdebi rstudio-server-1.1.463-amd64.deb

# Install shiny-server
r -e 'install.packages("shiny", repos="https://cran.rstudio.com/")'
wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.9.923-amd64.deb
sudo gdebi shiny-server-1.5.9.923-amd64.deb

# Create users
addgroup datasci
useradd -m mgahan
useradd -m tbobik
useradd -m zkhor
useradd -m jandrews

usermod --password XXXXXX mgahan
usermod --password XXXXXX tbobik
usermod --password XXXXXX zkhor
usermod --password XXXXXX jandrews

usermod -G datasci mgahan
usermod -G datasci tbobik
usermod -G datasci zkhor
usermod -G datasci jandrews

adduser mgahan sudo
adduser tbobik sudo
adduser zkhor sudo
adduser jandrews sudo

# Install R-pacakges
r -e 'install.packages("data.table")'
r -e 'install.packages("ggplot2")'
r -e 'install.packages("DT")'
r -e 'install.packages("dygraphs")'
r -e 'install.packages("lubridate")'
r -e 'install.packages("zoo")'
r -e 'install.packages("scales")'
r -e 'install.packages("fst")'
r -e 'install.packages("odbc")'
r -e 'install.packages("sp")'
r -e 'install.packages("readr")'
r -e 'install.packages("parallel")'
r -e 'install.packages("future")'
r -e 'install.packages("future.apply")'
r -e 'install.packages("googleAnalyticsR")'
r -e 'install.packages("googleAuthR")'
r -e 'install.packages("gtrendsR")'
r -e 'install.packages("tidyverse")'
r -e 'install.packages("devtools")'
r -e 'install.packages("stringi")'
r -e 'devtools::install_github("ericrayanderson/shinymaterial")'
r -e 'install.packages("shinyjs")'
r -e 'install.packages("highcharter")'
r -e 'install.packages("flexdashboard")'
r -e 'install.packages("roxygen2")'
r -e 'install.packages("car")'
r -e 'install.packages("readxl")'

