FROM centos:6.9

ENV LANG en_US.utf8

RUN localedef -f UTF-8 -i en_US en_US.UTF-8
ENV LC_ALL="en_US.UTF-8"

RUN yum install -y memcached-devel httpd-devel mod_ssl
RUN rpm -Uvh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN yum install -y --enablerepo=remi --enablerepo=remi-php56 php php-opcache php-devel
RUN yum install -y --enablerepo=remi --enablerepo=remi-php56 php-mbstring php-mcrypt php-mysqlnd
RUN yum install -y --enablerepo=remi --enablerepo=remi-php56 php-phpunit-PHPUnit php-pecl-xdebug
RUN yum install -y --enablerepo=remi --enablerepo=remi-php56 php-pecl-xhprof php-pecl-memcache
RUN yum clean all

RUN rm  /etc/httpd/conf.d/welcome.conf
COPY httpd_conf /etc/httpd/conf/httpd.conf
COPY ssl_conf /etc/httpd/conf.d/ssl.conf
COPY php_ini /etc/php.ini
RUN chmod 644 /etc/php.ini

RUN mkdir /etc/httpd/ssl
COPY server.key /etc/httpd/ssl/server.key
COPY server.crt /etc/httpd/ssl/server.crt

RUN mkdir /app
RUN chown -R apache:apache /app

EXPOSE 80

COPY run.sh /sbin/httpd_start.sh
RUN chmod u+x /sbin/httpd_start.sh
CMD ["/sbin/httpd_start.sh"]