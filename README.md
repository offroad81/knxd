# knxd
## knxd container to access knx bus


Please use this container image with external configuration file [knxd.ini](https://github.com/knxd/knxd/blob/master/doc/inifile.rst):

- checkout repo: 
```   git clone https://github.com/offroad81/knxd.git```
- build docker image: 
```   docker build --tag knxd knxd/.```
- run image with docker run: 
```   docker run --name knxd --net host -v $pwd/knxd.ini:/var/lib/knxd/knxd.ini knxd```
- or run image via docker-compose:
```
version: "3"
services:
  knxd:
    container_name: knxd
    build: /home/pi/knxd
    restart: unless-stopped
    network_mode: "host"
    volumes:
       - /home/pi/knxd.ini:/var/lib/knxd/knxd.ini
```