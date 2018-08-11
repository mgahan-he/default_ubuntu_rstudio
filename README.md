# default_ubuntu_rstudio
docker image for data science

## Add users
group add datasci
useradd -m user1
passwd user1
usermod -G datasci,docker user1
