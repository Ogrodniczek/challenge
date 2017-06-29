FROM python:2.7.13-wheezy

RUN curl -SL https://github.com/iocast/featureserver/archive/master.tar.gz | tar xz 
WORKDIR /featureserver-master/
RUN pip install lxml psycopg2 shortuuid simplejson uwsgi paste
ADD ./featureserver.cfg featureserver.cfg 
EXPOSE 8080
CMD ["uwsgi", "--http", ":8080", "--enable-threads", "--wsgi-file", "featureserver.cgi"]
