FROM centos:centos7

ENV LANG en_US.utf8

RUN yum -y update; yum clean all

RUN curl -sL https://rpm.nodesource.com/setup_8.x | sudo bash -
RUN yum install -y nodejs

#RUN yum -y install nodejs
RUN yum clean all

RUN npm install sails@0.12.14 -g

RUN mkdir /app


ADD . /app

ENV NODE_ENV local

RUN npm install

EXPOSE 88

CMD ["node", "/app/app.js", "-H", "0.0.0.0"]