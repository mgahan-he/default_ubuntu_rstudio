
# Start by using an Ubuntu 18.04 Bionic image 

# Install some basic tools
apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    net-tools
    
# Create Environmental variable for later installs
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

# Install packages
add-apt-repository -y ppa:marutter/c2d4u3.5
apt-get update
apt install -y r-cran-rgl r-cran-rjags r-cran-snow r-cran-ggplot2 r-cran-igraph r-cran-lme4 r-cran-rjava r-cran-devtools r-cran-roxygen2 r-cran-rjava r-cran-xlsx

# List more packages 
# Package_Dat <- data.table(Package=list.dirs("/usr/local/lib/R/site-library", recursive=FALSE))
# Package_Dat[, Package := paste0("apt install -y r-cran-",Package)]
# Package_Dat <- Package_Dat[!(Package %like% "BaselineR")]
# Package_Dat <- Package_Dat[!(Package %like% "RampR")]

# Install more packages
apt install -y r-cran-abind
apt install -y r-cran-acepack
apt install -y r-cran-anytime
apt install -y r-cran-AsioHeaders
apt install -y r-cran-askpass
apt install -y r-cran-assertthat
apt install -y r-cran-backports
apt install -y r-cran-base64enc
apt install -y r-cran-bayesplot
apt install -y r-cran-BH
apt install -y r-cran-bindr
apt install -y r-cran-bindrcpp
apt install -y r-cran-bit
apt install -y r-cran-bit64
apt install -y r-cran-bitops
apt install -y r-cran-blob
apt install -y r-cran-bookdown
apt install -y r-cran-Boom
apt install -y r-cran-BoomSpikeSlab
apt install -y r-cran-brew
apt install -y r-cran-bridgesampling
apt install -y r-cran-brms
apt install -y r-cran-broom
apt install -y r-cran-bsts
apt install -y r-cran-callr
apt install -y r-cran-car
apt install -y r-cran-cellranger
apt install -y r-cran-checkmate
apt install -y r-cran-cli
apt install -y r-cran-clipr
apt install -y r-cran-clisymbols
apt install -y r-cran-cmprsk
apt install -y r-cran-coda
apt install -y r-cran-colorspace
apt install -y r-cran-colourpicker
apt install -y r-cran-commonmark
apt install -y r-cran-cowplot
apt install -y r-cran-crayon
apt install -y r-cran-crosstalk
apt install -y r-cran-curl
apt install -y r-cran-data.table
apt install -y r-cran-DBI
apt install -y r-cran-desc
apt install -y r-cran-devtools
apt install -y r-cran-digest
apt install -y r-cran-dplyr
apt install -y r-cran-dtplyr
apt install -y r-cran-dygraphs
apt install -y r-cran-ellipsis
apt install -y r-cran-evaluate
apt install -y r-cran-exactRankTests
apt install -y r-cran-extrafont
apt install -y r-cran-extrafontdb
apt install -y r-cran-fansi
apt install -y r-cran-forcats
apt install -y r-cran-foreach
apt install -y r-cran-Formula
apt install -y r-cran-fs
apt install -y r-cran-fst
apt install -y r-cran-fts
apt install -y r-cran-future
apt install -y r-cran-future.apply
apt install -y r-cran-gargle
apt install -y r-cran-gdtools
apt install -y r-cran-generics
apt install -y r-cran-ggplot2
apt install -y r-cran-ggpubr
apt install -y r-cran-ggrepel
apt install -y r-cran-ggridges
apt install -y r-cran-ggsci
apt install -y r-cran-ggsignif
apt install -y r-cran-ggthemes
apt install -y r-cran-gh
apt install -y r-cran-git2r
apt install -y r-cran-glmnet
apt install -y r-cran-globals
apt install -y r-cran-glue
apt install -y r-cran-gmailr
apt install -y r-cran-gtable
apt install -y r-cran-gtools
apt install -y r-cran-haven
apt install -y r-cran-hexbin
apt install -y r-cran-highr
apt install -y r-cran-hms
apt install -y r-cran-htmltools
apt install -y r-cran-htmlwidgets
apt install -y r-cran-httpuv
apt install -y r-cran-httr
apt install -y r-cran-igraph
apt install -y r-cran-ini
apt install -y r-cran-inline
apt install -y r-cran-iptools
apt install -y r-cran-iterators
apt install -y r-cran-jsonlite
apt install -y r-cran-km.ci
apt install -y r-cran-knitr
apt install -y r-cran-labeling
apt install -y r-cran-later
apt install -y r-cran-lavaan
apt install -y r-cran-lazyeval
apt install -y r-cran-leaflet
apt install -y r-cran-lifecycle
apt install -y r-cran-listenv
apt install -y r-cran-lme4
apt install -y r-cran-loo
apt install -y r-cran-lubridate
apt install -y r-cran-magrittr
apt install -y r-cran-mailR
apt install -y r-cran-maptools
apt install -y r-cran-markdown
apt install -y r-cran-maxstat
apt install -y r-cran-memoise
apt install -y r-cran-mime
apt install -y r-cran-minqa
apt install -y r-cran-mnormt
apt install -y r-cran-munsell
apt install -y r-cran-mvtnorm
apt install -y r-cran-ndjson
apt install -y r-cran-nleqslv
apt install -y r-cran-nloptr
apt install -y r-cran-odbc
apt install -y r-cran-openssl
apt install -y r-cran-openxlsx
apt install -y r-cran-packrat
apt install -y r-cran-pbivnorm
apt install -y r-cran-pbkrtest
apt install -y r-cran-penalized
apt install -y r-cran-pillar
apt install -y r-cran-pkgbuild
apt install -y r-cran-pkgconfig
apt install -y r-cran-pkgload
apt install -y r-cran-plogr
apt install -y r-cran-plotly
apt install -y r-cran-plyr
apt install -y r-cran-png
apt install -y r-cran-polynom
apt install -y r-cran-prettyunits
apt install -y r-cran-processx
apt install -y r-cran-progress
apt install -y r-cran-promises
apt install -y r-cran-ps
apt install -y r-cran-purrr
apt install -y r-cran-quantmod
apt install -y r-cran-quantreg
apt install -y r-cran-R.methodsS3
apt install -y r-cran-R.oo
apt install -y r-cran-R.utils
apt install -y r-cran-raster
apt install -y r-cran-rcmdcheck
apt install -y r-cran-readr
apt install -y r-cran-readxl
apt install -y r-cran-rematch
apt install -y r-cran-rematch2
apt install -y r-cran-remotes
apt install -y r-cran-reprex
apt install -y r-cran-reshape2
apt install -y r-cran-rio
apt install -y r-cran-rjson
apt install -y r-cran-rlang
apt install -y r-cran-rlist
apt install -y r-cran-rmarkdown
apt install -y r-cran-roxygen2
apt install -y r-cran-rprojroot
apt install -y r-cran-rsconnect
apt install -y r-cran-rstan
apt install -y r-cran-rstantools
apt install -y r-cran-rstudioapi
apt install -y r-cran-rvest
apt install -y r-cran-scales
apt install -y r-cran-selectr
apt install -y r-cran-servr
apt install -y r-cran-sessioninfo
apt install -y r-cran-shiny
apt install -y r-cran-shinycssloaders
apt install -y r-cran-shinydashboard
apt install -y r-cran-shinyjs
apt install -y r-cran-shinystan
apt install -y r-cran-shinythemes
apt install -y r-cran-sourcetools
apt install -y r-cran-sp
apt install -y r-cran-stringi
apt install -y r-cran-stringr
apt install -y r-cran-survminer
apt install -y r-cran-sys
apt install -y r-cran-systemfonts
apt install -y r-cran-threejs
apt install -y r-cran-tibble
apt install -y r-cran-tidyr
apt install -y r-cran-tidyselect
apt install -y r-cran-tinytex
apt install -y r-cran-triebeard
apt install -y r-cran-usethis
apt install -y r-cran-utf8
apt install -y r-cran-vctrs
apt install -y r-cran-viridis
apt install -y r-cran-whisker
apt install -y r-cran-withr
apt install -y r-cran-xfun
apt install -y r-cran-xml2
apt install -y r-cran-xopen
apt install -y r-cran-xtable
apt install -y r-cran-xts
apt install -y r-cran-yaml
apt install -y r-cran-zeallot
apt install -y r-cran-zip
apt install -y r-cran-zoo

# more packages
r -e 'install.packages("Brobdingnag")'
r -e 'install.packages("carData")'
r -e 'install.packages("caTools")'
r -e 'install.packages("CausalImpact")'
r -e 'install.packages("cronR")'
r -e 'install.packages("DT")'
r -e 'install.packages("flexdashboard")'
r -e 'install.packages("gridExtra")'
r -e 'devtools::install_github("rstudio/gt")'
r -e 'install.packages("highcharter")'
r -e 'install.packages("Hmisc")'
r -e 'install.packages("hrbrthemes")'
r -e 'install.packages("htmlTable")'
r -e 'install.packages("KMsurv")'
r -e 'install.packages("latticeExtra")'
r -e 'install.packages("MatrixModels")'

r -e 'install.packages("matrixStats")'
r -e 'install.packages("miniUI")'
r -e 'install.packages("numDeriv")'
r -e 'install.packages("pagedown")'
r -e 'install.packages("perccal")'
r -e 'install.packages("R6")'
r -e 'install.packages("randomForest")'

r -e 'install.packages("RApiDatetime")'
r -e 'install.packages("RColorBrewer")'
r -e 'install.packages("Rcpp")'
r -e 'install.packages("RcppArmadillo")'
r -e 'install.packages("RcppEigen")'
r -e 'install.packages("RCurl")'
r -e 'install.packages("Rttf2pt1")'
r -e 'install.packages("sass")'
r -e 'install.packages("sendmailR")'
r -e 'install.packages("shinyFiles")'
r -e 'install.packages("shinymaterial")'
r -e 'install.packages("SparseM")'
r -e 'install.packages("StanHeaders")'
r -e 'install.packages("survMisc")'
r -e 'install.packages("TTR")'
r -e 'install.packages("uiucthemes")'
r -e 'install.packages("viridisLite")'
r -e 'install.packages("visNetwork")'
r -e 'install.packages("xaringan")'
r -e 'install.packages("XML")'

# Install java SDK
apt-get install -y default-jdk
export LD_LIBRARY_PATH=/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/server/
R CMD javareconf 
r -e 'install.packages("rJava")'
r -e 'install.packages("AWR.Athena")'
r -e 'install.packages("RJDBC")'
apt-get install -y libsodium-dev
r -e 'install.packages("sodium")'
r -e 'devtools::install_github("aaronbaggett/youngmetro")'
r -e 'install.packages("gtrendsR")'

# Install specific versions
r -e 'devtools::install_version("googleAuthR", version = "0.7.0", repos = "http://cran.us.r-project.org")'
r -e 'devtools::install_version("googleAnalyticsR", version = "0.5.0", repos = "http://cran.us.r-project.org")'

# Install h2o
r -e 'install.packages("h2o", repos=(c("http://s3.amazonaws.com/h2o-release/h2o/master/1497/R", getOption("repos"))))'

# Install arrow
apt update
apt install -y -V apt-transport-https gnupg lsb-release wget
wget -O /usr/share/keyrings/apache-arrow-keyring.gpg https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-keyring.gpg
tee /etc/apt/sources.list.d/apache-arrow.list <<APT_LINE
deb [arch=amd64 signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main
deb-src [signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main
APT_LINE
apt update
apt install -y -V libarrow-dev # For C++
apt install -y -V libarrow-glib-dev # For GLib (C)
apt install -y -V libarrow-flight-dev # For Flight C++
apt install -y -V libplasma-dev # For Plasma C++
apt install -y -V libplasma-glib-dev # For Plasma GLib (C)
apt install -y -V libgandiva-dev # For Gandiva C++
apt install -y -V libgandiva-glib-dev # For Gandiva GLib (C)
apt install -y -V libparquet-dev # For Apache Parquet C++
apt install -y -V libparquet-glib-dev # For Apache Parquet GLib (C)
apt-get install -y \
     build-essential \
     cmake \
     libboost-filesystem-dev \
     libboost-regex-dev \
     libboost-system-dev
git clone https://github.com/apache/arrow.git
cd arrow/cpp
mkdir release
cd release
cmake ..
make
cd ..
cd ..
cd ..
r -e 'install.packages("arrow")'
r -e 'arrow::install_arrow()'
r -e 'arrow::write_parquet(iris, "iris_test.parquet")'
r -e 'arrow::read_parquet("iris_test.parquet")'
rm iris_test.parquet

# Install more R pacakges
r -e 'install.packages("ROI")'
r -e 'install.packages("roxygen2")'
r -e 'install.packages("rpivotTable")'
r -e 'install.packages("RPushbullet")'
r -e 'install.packages("shinydashboard")'
r -e 'install.packages("shinyjs")'
apt-get install -y coinor-libclp-dev
r -e 'install.packages("ROI.plugin.clp")'
apt-get install -y libglpk-dev
r -e 'install.packages("ROI.plugin.glpk")'

# Install rstudio-server
cd /root
wget https://download2.rstudio.org/server/trusty/amd64/rstudio-server-1.2.5001-amd64.deb
gdebi -n rstudio-server-1.2.5001-amd64.deb

# Install shiny-server
wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.12.933-amd64.deb
gdebi -n shiny-server-1.5.12.933-amd64.deb

# Install imagemagick for easy image manipulation
apt-get -y install imagemagick

# Install gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
apt-get update -y && apt-get install -y google-cloud-sdk

# Install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-cache policy docker-ce
apt-get install -y docker-ce

# install sql-server
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
apt-get update
ACCEPT_EULA=Y apt-get install -y msodbcsql17
# optional: for bcp and sqlcmd
ACCEPT_EULA=Y apt-get install -y mssql-tools
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

# Install conda
wget https://repo.anaconda.com/archive/Anaconda3-5.0.1-Linux-x86_64.sh
md5sum Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh -b
rm Anaconda3-5.0.1-Linux-x86_64.sh

# more install
apt-get install -y libprotobuf-dev  protobuf-compiler
apt-get install -y libjq-dev
apt-get install -y libv8-3.14-dev
apt install -y software-properties-common
add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
apt-get update
apt-get install -y libudunits2-dev libgdal-dev libgeos-dev libproj-dev 
r -e 'install.packages("geojsonio")'
r -e 'devtools::install_version("forecast", version = "8.2", repos = "http://cran.us.r-project.org")'
r -e 'install.packages("softImpute")'
r -e 'install.packages("odbc")'
r -e 'install.packages("rmarkdown")'

# Install sf
r -e 'install.packages("sf")'
r -e 'install.packages("RPostgreSQL")'
apt-get install -y libpq-dev 
apt-get install -y fftw3 fftw3-dev pkg-config
apt-get install -y libtiff-dev
apt-get install -y aptitude 

# Install Nginx
apt-get -y install nginx
cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default-backup
/etc/init.d/nginx restart

