FROM ubuntu:22.04

RUN apt-get -y update && apt-get -y install nginx 

COPY server/default /etc/nginx/sites-available/default

COPY . /usr/share/nginx/html

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]