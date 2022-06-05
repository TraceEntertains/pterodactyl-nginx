FROM ubuntu:20.04

<<<<<<< HEAD
RUN apt-get update && apt-get install ca-certificates nginx && apt-get clean && apt-get install php7.0-common php7.0-mysql php7.0-xml openssl mysql-server php-mysql
=======
RUN sudo apt-get update && sudo apt-get install -y ca-certificates nginx && sudo apt-get clean && sudo apt-get install -y php7.0-common php7.0-mysql php7.0-xml openssl mysql-server php-mysql
>>>>>>> 5e6251eecf94f39a4fa081529a47491ffae97153

USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
