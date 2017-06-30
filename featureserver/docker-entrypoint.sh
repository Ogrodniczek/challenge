#!/bin/bash
sed -i "s/\${POSTGRES_PASSWORD}/${POSTGRES_PASSWORD}/g" featureserver.cfg
sed -i "s/\${POSTGRES_USER}/${POSTGRES_USER}/g" featureserver.cfg
uwsgi --http :8080 --enable-threads --wsgi-file featureserver.cgi
