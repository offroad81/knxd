FROM debian:buster-slim

#Update packages
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
      libev4 \
      libusb-1.0-0 \
      lsb-base \
      knxd \
 && apt-get clean -y \
 && apt-get autoclean -y \
 && apt-get autoremove

#ADD knxd.ini /var/lib/knxd/knxd.ini

USER knxd

CMD ["knxd", "/var/lib/knxd/knxd.ini"]
