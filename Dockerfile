FROM debian:buster
MAINTAINER Stefano Marinelli <stefano@dragas.it>

RUN apt-get update && apt-get install -y python3-pip locales; apt-get clean; rm -Rf /var/lib/apt/lists/*

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8     

RUN pip3 install opentimestamps-client Nikola[extras] && rm -Rf /root/.cache/

WORKDIR /nikola
