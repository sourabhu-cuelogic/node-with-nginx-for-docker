FROM node:latest

MAINTAINER Sourabh Upadhyay

ENV NODE_ENV=production

COPY . /var/www
WORKDIR /var/www

COPY entrypoint.sh /var/www
RUN ["chmod", "+x", "/var/www/entrypoint.sh"]

RUN apt-get update && \
    apt-get install -y nginx

RUN npm install

EXPOSE 4000
EXPOSE 80

COPY default /etc/nginx/sites-available/

ENTRYPOINT ["/var/www/entrypoint.sh"]
