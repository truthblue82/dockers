
# Docker containers information

## OS: centOS7
## Database: mongoDB 4.0.4
## Nodejs: v8.11.4
Using sails@0.12.4 framework

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

Connect to `mongodb404` container

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

## How to connect database from Nodejs app

- Using `mongodb404` for database host in Nodejs code.
- Using `27017` for database port in Nodejs code.
- If you can not access Nodejs app from browser, please `set host url of Nodejs app to 0.0.0.0`, and access from the browser will be `http://localhost`