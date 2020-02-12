# Docker containers information

## OS: centOS6
## Database: mysql 5.6
## PHP: v5.6

# Generate cert key

```
$> openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt
Generating a RSA private key
.+++++
.............................................+++++
writing new private key to 'server.key'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:VN
State or Province Name (full name) [Some-State]:HCM
Locality Name (eg, city) []:HCM
Organization Name (eg, company) [Internet Widgits Pty Ltd]:
Organizational Unit Name (eg, section) []:
Common Name (e.g. server FQDN or YOUR name) []:
Email Address []:email@gmail.com
```
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
$ docker build -t [projectName] .
$ docker run -it --rm --name my-running-app [projectName]
```

## Database evironment connection

Host: localhost
Port: 27018

Connect to mongodb container

```
$ docker exec -it [projectName]_db_1 mysql db --user=dbuser -p
Enter password: dbpass
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.6.43 MySQL Community Server (GPL)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```


## Local web environment

```
http://localhost
```

Connect to web container
```
$> docker exec -it [projectName]_web_1 /bin/bash
```