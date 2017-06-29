FROM python:2.7.13-wheezy

#ADD ./featureserver-master /app
#WORKDIR /app/
RUN curl -SL https://github.com/iocast/featureserver/archive/master.tar.gz | tar xz 
WORKDIR /featureserver-master/
RUN pip install lxml psycopg2 shortuuid simplejson uwsgi paste
ADD ./featureserver.cfg featureserver.cfg 
EXPOSE 8080
#CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8080", "workspace_http_server:run"]
CMD ["uwsgi", "--http", ":8080", "--enable-threads", "--wsgi-file", "featureserver.cgi"]
#CMD ["python", "featureserver_http_server.py"]
