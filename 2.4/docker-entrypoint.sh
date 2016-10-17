#!/bin/sh
set -e

# Configure docroot.
sed -i 's@%DOCROOT%@'"${DOCROOT}"'@' /usr/local/apache2/conf/drupal.conf
echo "Configured docroot to ${DOCROOT}."

# Set server name.
sed -i 's/%SERVER_NAME%/'"${SERVER_NAME}"'/' /usr/local/apache2/conf/drupal.conf
echo "Configured server name to ${SERVER_NAME}."

exec "$@"
