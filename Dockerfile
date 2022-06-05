FROM ubuntu:20.04

RUN sudo apt-get update && sudo apt-get ca-certificates nginx && sudo apt-get clean
RUN sudo apt-get install php7.0-common php7.0-mysql php7.0-xml openssl mysql-server php-mysql

USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
