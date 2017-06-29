FROM python:2.7.13-wheezy

RUN curl -SL https://github.com/iocast/featureserver/archive/master.tar.gz | tar xz 
WORKDIR /featureserver-master/
RUN pip install lxml psycopg2 shortuuid simplejson uwsgi paste
ADD ./featureserver.cfg featureserver.cfg
ADD ./docker-entrypoint.sh docker-entrypoint.sh
EXPOSE 8080
CMD ["./docker-entrypoint.sh"]
