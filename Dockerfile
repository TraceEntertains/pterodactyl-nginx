FROM ubuntu:20.04

RUN apt-get update && apt-get install -y software-properties-common && apt-get upgrade -y && add-apt-repository 'deb [arch=amd64] http://ppa.launchpad.net/ondrej/php/ubuntu focal main' && apt-get update && apt-get install -y ca-certificates nginx && apt-get clean && apt-get install -y php7.0-common php7.0-mysql php7.0-xml openssl mysql-server php-mysql

USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
