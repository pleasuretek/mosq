FROM    ioft/armhf-ubuntu
MAINTAINER Travis McCann travis.mccannabis@gmail.com

RUN apt-get update && apt-get install -y mosquitto
COPY data/etc/mosquitto.d/conf.d/ /etc/mosquitto/conf.d/
EXPOSE 1883
CMD ["/usr/sbin/mosquitto","-c","/etc/mosquitto/conf.d/mosquitto.conf"] 
