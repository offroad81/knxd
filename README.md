# knxd
## knxd container to access knx bus

Please use with external configuration file (knxd.ini):

>docker run --name knxd --net host -v $pwd/knxd.ini:/var/lib/knxd/knxd.ini knxd

