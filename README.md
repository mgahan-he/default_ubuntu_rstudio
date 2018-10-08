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

# Fix wifi in elementary os

```
sudo apt-get update
sudo apt-get install bcmwl-kernel-source
sudo modprobe wl
```
