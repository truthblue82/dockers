
# How to use

## Use below command line to build and create docker container in local by `Docker Compose`

```
$ docker-compose -p[projectName] build
  ...

$ docker-compose -p[projectName] up -d
  ...
```

Or use `docker`

```
$ docker build -t my-app .
$ docker run -it --rm --name my-running-app my-app
```

## Mongo evironment connection

Host: localhost
Port: 27018

Connect to mongodb container

```
$ docker exec -it [projectName]_mongodb404_1 mongodb
```


## Local web environment

```
http://localhost:88
```

Connect to web container
```
$> docker exec -it [projectName]_otjb_1 /bin/bash
```