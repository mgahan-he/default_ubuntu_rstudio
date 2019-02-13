
apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
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

# Install AWS CLI
pip install awscli

# Install R
apt install -y apt-transport-https software-properties-common
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
apt update
apt install -y r-base
apt install -y r-base-dev
apt-get install -y r-cran-littler

# Install R-pacakges
r -e 'install.packages("data.table")'
r -e 'install.packages("fst")'
r -e 'install.packages("devtools")'
r -e 'install.packages("DT")'
r -e 'install.packages("stringi")'
r -e 'devtools::install_github("rstudio/shiny")'
r -e 'devtools::install_github("ericrayanderson/shinymaterial")'
r -e 'install.packages("reshape2")'
r -e 'install.packages("actuar")'
r -e 'install.packages("flexdashboard")'
r -e 'install.packages("d3heatmap")'
r -e 'install.packages("RColorBrewer")'
r -e 'install.packages("bit64")'
r -e 'install.packages("lubridate")'
r -e 'install.packages("XML")'
r -e 'install.packages("highcharter")'
r -e 'install.packages("dygraphs")'
r -e 'install.packages("DT")'
r -e 'install.packages("scales")'
r -e 'install.packages("ggthemes")'
r -e 'install.packages("rmarkdown")'
r -e 'install.packages("pacman")'
r -e 'install.packages("roxygen2")'
r -e 'install.packages("gtrendsR")'
r -e 'install.packages("brms")'
r -e 'install.packages("CausalImpact")'

# Install more R packages
r -e 'install.packages("dplyr")'
r -e 'install.packages("RODBC")'
r -e 'install.packages("dbplyr")'
#r -e 'install.packages("forecast")'
r -e 'devtools::install_version("forecast", version = "8.2", repos = "http://cran.us.r-project.org")'
r -e 'install.packages("softImpute")'
r -e 'install.packages("odbc")'
r -e 'install.packages("rmarkdown")'

# Install sf
apt install -y software-properties-common
add-apt-repository ppa:ubuntugis/ubuntugis-unstable
apt-get update
apt-get install -y libudunits2-dev libgdal-dev libgeos-dev libproj-dev 
r -e 'install.packages("sf")'
r -e 'install.packages("RPostgreSQL")'
apt-get install -y libpq-dev 
apt-get install -y fftw3 fftw3-dev pkg-config
apt-get install -y libtiff-dev
apt-get install -y aptitude 

# More spatial package downloads
r -e 'install.packages("caTools")'
r -e 'install.packages("leaflet")'
r -e 'install.packages("dygraphs")'
r -e 'install.packages("rgdal")'
apt install -y libgeos++-dev
r -e 'install.packages("rgeos")'
r -e 'install.packages("car")'

# more packages
r -e 'install.packages("RJDBC")'
r -e 'install.packages("googleAuthR")'
r -e 'install.packages("googleAnalyticsR")'

# Install rstudio-server
cd /root
wget https://s3.amazonaws.com/rstudio-ide-build/server/bionic/amd64/rstudio-server-1.2.1278-amd64.deb
sudo gdebi -n rstudio-server-1.2.1278-amd64.deb

# Install shiny-server
wget https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-14.04/x86_64/shiny-server-1.5.11.3-amd64.deb
sudo gdebi -n  shiny-server-1.5.11.3-amd64.deb

# Install imagemagick for easy image manipulation
sudo apt-get -y install imagemagick

# Install gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
apt-get update -y && apt-get install -y google-cloud-sdk

# Install java SDK
apt-get install -y default-jdk
export LD_LIBRARY_PATH=/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/server/
R CMD javareconf  

# Install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-cache policy docker-ce
apt-get install -y docker-ce
#systemctl status docker

# install sql-server
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql17
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install -y mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
apt-get install -y unixodbc-dev
odbcinst -j
cat /etc/odbcinst.ini

# install database drivers
# Install the unixODBC library
apt-get install -y unixodbc unixodbc-dev

# SQL Server ODBC Drivers (Free TDS)
apt-get install -y tdsodbc

# PostgreSQL ODBC ODBC Drivers
apt-get install -y odbc-postgresql

# SQLite ODBC Drivers
apt-get install -y libsqliteodbc

# Set timezone
TZ=America/Los_Angeles
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# More install
r -e 'install.packages("h2o", repos=(c("http://s3.amazonaws.com/h2o-release/h2o/master/1497/R", getOption("repos"))))'
r -e 'install.packages("future.apply")'
r -e 'install.packages("roxygen2")'
apt-get install -y software-properties-common python-software-properties
add-apt-repository ppa:deadsnakes/ppa
apt-get install -y apt-transport-https
apt-get update
apt-get install -y python3.7
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b

# more install
apt-get install -y libprotobuf-dev  protobuf-compiler
add-apt-repository -y ppa:opencpu/jq
apt-get update -q
apt-get install -y libjq-dev
apt-get install -y libv8-3.14-dev
r -e 'install.packages("geojsonio")'

r -e 'install.packages("shinyjs")'
apt-get install -y libboost-all-dev
