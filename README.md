# default_ubuntu_rstudio
docker image for data science

## Add users

```
addgroup datasci
useradd -m user1
passwd user1
usermod -G datasci,docker user1
adduser user1 sudo
```
