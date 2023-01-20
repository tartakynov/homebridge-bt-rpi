FROM oznu/homebridge:2023-01-08

RUN set -x \
  && apt-get update \
  && apt-get -y install bluetooth bluez libbluetooth-dev libudev-dev \
  && apt-get clean \
  && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

ARG HOMEBRIDGE_VERSION
RUN set -x && npm --prefix /homebridge install --save homebridge@${HOMEBRIDGE_VERSION}

ARG HOMEBRIDGE_PLUGINS
RUN if [ "${HOMEBRIDGE_PLUGINS}" ]; then set -x && npm --prefix /homebridge add ${HOMEBRIDGE_PLUGINS}; fi

RUN set -x && npm --prefix /homebridge rebuild

COPY rootfs /
