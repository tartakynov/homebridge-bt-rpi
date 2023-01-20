FROM oznu/homebridge:2023-01-08

RUN apt-get install bluetooth bluez libbluetooth-dev libudev-dev
RUN npm install -g --unsafe-perm homebridge-mi-flower-care
