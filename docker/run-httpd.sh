#!/bin/bash

# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
echo "  " >> /etc/php.ini
echo "zend_extension = /usr/lib64/php/modules/ioncube_loader_lin_7.0.so" >> /etc/php.ini

rm -rf /run/httpd/* /tmp/httpd*

exec /usr/sbin/apachectl -DFOREGROUND
