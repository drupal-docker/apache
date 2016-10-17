FROM httpd:2.4
MAINTAINER drupal-docker

VOLUME /var/www/html
WORKDIR /var/www/html

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY drupal.conf /usr/local/apache2/conf/drupal.conf

ENV DOCROOT="/var/www/html" \
  SERVER_NAME="_"

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["httpd-foreground"]
