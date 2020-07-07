# ssh-vpn

## License
AS-IS

## Overview
ssh-vpn is a docker container providing a local socks proxy by using a autossh tunnel to your prefered host

## Typical use
same as for every private VPN 

### Starting the container.
* make sure, u can ssh to your host w/o providing any password (click [here](https://google.com/search?q=ssh+public+key+how+to) if that sounds uncommon to you)
* copy ```example.env``` to ```.env```

Let's start it.
```
$ make start-tunnel
docker-compose up -d && docker cp [HOME].ssh/id_rsa `docker-compose ps -q ssh-vpn`:/payload
Creating ssh-vpn ... done
```
The container is now working. You should be able to use ```localhost:1337``` as socks proxy from any client application.
