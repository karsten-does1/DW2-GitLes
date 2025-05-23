FROM ubuntu:20.04

RUN apt-get update 
RUN apt-get install -y nginx 

COPY html /var/www/html
RUN date -u > /var/www/html/buildtime.txt

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]