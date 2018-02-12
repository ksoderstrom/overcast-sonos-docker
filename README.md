# Dockerized Overcast Sonos

A docker container for [jacobian/overcast-sonos](https://github.com/jacobian/overcast-sonos).

## Starting the container

```
docker run -d \
  --name overcast-sonos \
  -e OVERCAST_USERNAME=<username> \
  -e OVERCAST_PASSWORD=<password> \
  ksoderstrom/overcast-sonos
```
