FROM centos:centos7

ENV LANG en_US.utf8

RUN yum -y update; yum clean all
#RUN yum install -y centos-release-scl-rh
#RUN rpm -Uvh https://rpm.nodesource.com/pub_8.x/el/6/x86_64/nodesource-release-el6-1.noarch.rpm
#RUN rpm -Uvh https://buildlogs.centos.org/centos/7/sclo/x86_64/rh/rh-nodejs8/rh-nodejs8-nodejs-8.11.4-1.el7.x86_64.rpm

#RUN rpm https://rpm.nodesource.com/setup_8.x | sudo -E bash -
#RUN bash /root/setup_8.x
#RUN yum --enablerepo=centos-sclo-rh-testing install -y rh-nodejs8-nodejs
RUN curl -sL https://rpm.nodesource.com/setup_8.x | sudo bash -
RUN yum install -y nodejs

#RUN yum -y install nodejs
RUN yum clean all

RUN npm install sails@0.12.14 -g

RUN mkdir /app
#RUN chown -R apache:apache /app

ADD . /app

ENV NODE_ENV local

RUN npm install

EXPOSE 88

CMD ["node", "/app/app.js"]