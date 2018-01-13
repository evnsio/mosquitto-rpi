
FROM resin/rpi-raspbian:jessie
LABEL maintainer="chris@evns.io"
EXPOSE 1883 9001

RUN curl -s http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key | apt-key add -
RUN cd /etc/apt/sources.list.d/ && sudo curl -sO http://repo.mosquitto.org/debian/mosquitto-jessie.list
RUN apt-get update && apt-get install -y mosquitto
RUN adduser --system --disabled-password --disabled-login mosquitto

COPY config/ /etc/mosquitto/

CMD /usr/sbin/mosquitto 