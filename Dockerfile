FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt -y install apache2

COPY html /var/www/html

WORKDIR /home

EXPOSE 81/tcp

CMD service apache2 start && bash